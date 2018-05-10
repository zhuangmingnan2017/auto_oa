package com.yinian.autooa.controller.file;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.common.XMsg;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.File;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.file.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

/**
 * 日程管理Controller
 * created by yinian on 18-4-23.
 */
@Controller
@RequestMapping("/oa/file/")
public class FileController extends BaseController {

    @Autowired
    private FileService fileService;

    @GetMapping("list.html")
    public ModelAndView goFilePage(HttpSession session, Integer parentId){
        ModelAndView mv = new ModelAndView("file/list_file");

        // 当前是哪一层次
        if(parentId == null){
            parentId = 0;
        }

        mv.addObject("parentId", parentId);
        SysUser user = (SysUser)session.getAttribute("user");
        if(user == null){
            return mv;
        }

        //List<File> fileList = fileService.listRootFileByUserId(user.getId());
        List<File> fileList = fileService.listFileByUserIdAndCurrParentId(user.getId(), parentId);
        mv.addObject("fileList", fileList);

        return mv;
    }

    @GetMapping("prev_list.html")
    public ModelAndView getPrevParentFileList(HttpSession session, Integer fileId){
        ModelAndView mv = new ModelAndView("file/list_file");

        // 如果没传或者没有
        if(fileId == null || fileId == 0){
            return mv;
        }

        SysUser user = (SysUser)session.getAttribute("user");
        if(user == null){
            return mv;
        }

        //List<File> fileList = fileService.listRootFileByUserId(user.getId());
        Integer parentId = fileService.getFileParentId(fileId);
        mv.addObject("parentId", parentId);
        List<File> fileList = fileService.listFileByUserIdAndCurrParentId(user.getId(), parentId);

        mv.addObject("fileList", fileList);
        return mv;
    }

    @PostMapping("uploadFile.html")
    public ModelAndView uploadFile(@RequestParam(value="file",required=false) MultipartFile file,
                                   HttpSession session, Integer parentId, Integer shareType) throws UnsupportedEncodingException {
        if(parentId == null){
            parentId = 0;
        }

        String viewName = "redirect:list.html?parentId="+parentId;
        ModelAndView mv = new ModelAndView();

        SysUser user = (SysUser)session.getAttribute("user");
        if(user == null){
            mv.setViewName(viewName);
            return mv;
        }

        try{
            fileService.uploadFile(file, user, parentId, shareType);
        }catch (RuntimeException e){
            viewName += "&errmsg="+ URLEncoder.encode(e.getMessage(), "UTF-8");
        }
        mv.setViewName(viewName);
        return mv;
    }

    @PostMapping("del.do")
    @ResponseBody
    public ApiResponse delFileById(String fileIdStr, HttpSession session){
        SysUser user = getSessionUser(session);

        fileService.deleteByFileIdStr(fileIdStr, user);
        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("add_folder.html")
    public ModelAndView addNewFolder(File file,HttpSession session) throws UnsupportedEncodingException {
        Integer parentId = file.getParent_id()==null?0:file.getParent_id();
        String viewName = "redirect:list.html?parentId="+parentId;
        ModelAndView mv = new ModelAndView();
        SysUser user = (SysUser)session.getAttribute("user");
        if(user == null){
            mv.setViewName(viewName);
            return mv;
        }

        try{
            fileService.addNewFolder(file, user);
        }catch (RuntimeException e){
            viewName += "&errmsg="+ URLEncoder.encode(e.getMessage(), "UTF-8");
        }
        mv.setViewName(viewName);
        return mv;
    }

    @PostMapping("change_share_type.html")
    public ModelAndView changeShareType(String fileIdStr, Integer shareType, Integer parentId, HttpSession session){
        ModelAndView mv = new ModelAndView("redirect:list.html?parentId="+parentId);

        SysUser user = getSessionUser(session);

        fileService.changeFileShareType(fileIdStr, shareType, user);

        return mv;
    }

    @PostMapping("change_owner.html")
    public ModelAndView changeOwner(Integer userId, String userName, String fileIdStr, Integer parentId, HttpSession session){
        ModelAndView mv = new ModelAndView("redirect:list.html?parentId="+parentId);

        SysUser user = getSessionUser(session);
        fileService.changeFileOwner(fileIdStr, userId, userName, user);

        return mv;
    }

    @PostMapping("rename.do")
    @ResponseBody
    public ApiResponse renameFile(Integer fileId, String fileName, HttpSession session){

        SysUser user = (SysUser)session.getAttribute("user");
        if(user == null){
            return ApiResponse.getResponse(XMsg.AUTH_FAILED);
        }

        fileService.renameFileName(fileId, fileName, user);
        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("download.do")
    public ResponseEntity<byte[]> download(HttpServletRequest request, Integer fileId){

        return fileService.downloadFileByFileId(fileId);
    }
}
