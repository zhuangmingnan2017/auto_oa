package com.yinian.autooa.controller.file;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.File;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.file.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
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
    public ModelAndView goFilePage(HttpSession session){
        ModelAndView mv = new ModelAndView("file/list_file");

        SysUser user = (SysUser)session.getAttribute("user");
        if(user == null){
            return mv;
        }

        List<File> fileList = fileService.listRootFileByUserId(user.getId());
        mv.addObject("fileList", fileList);

        return mv;
    }

    @PostMapping("uploadFile.html")
    public ModelAndView uploadFile(@RequestParam(value="file",required=false) MultipartFile file,
                                   HttpSession session, Integer parentId, Integer shareType){
        ModelAndView mv = new ModelAndView("file/list_file");

        SysUser user = (SysUser)session.getAttribute("user");
        if(user == null){
            return mv;
        }

        fileService.uploadFile(file, user, parentId, shareType);
        return mv;
    }

    @PostMapping("del.do")
    @ResponseBody
    public ApiResponse delFileById(String fileIdStr){
        fileService.deleteByFileIdStr(fileIdStr);
        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("add_folder.do")
    @ResponseBody
    public ApiResponse addNewFolder(@RequestBody File file,HttpSession session){
        SysUser user = (SysUser)session.getAttribute("user");
        if(user == null){
            return ApiResponse.getDefaultResponse();
        }

        fileService.addNewFolder(file, user);

        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("change_share_type.do")
    @ResponseBody
    public ApiResponse changeShareType(String fileIdStr, Integer shareType){

        fileService.changeFileShareType(fileIdStr, shareType);
        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("rename.do")
    @ResponseBody
    public ApiResponse renameFile(Integer fileId, String fileName){
        fileService.renameFileName(fileId, fileName);
        return ApiResponse.getDefaultResponse();
    }


}
