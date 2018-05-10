package com.yinian.autooa.service.impl.file;

import com.yinian.autooa.constant.FileConst;
import com.yinian.autooa.constant.TypeConst;
import com.yinian.autooa.dao.autocode.FileMapper;
import com.yinian.autooa.model.Department;
import com.yinian.autooa.model.File;
import com.yinian.autooa.model.FileExample;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.BaseService;
import com.yinian.autooa.service.file.FileService;
import com.yinian.autooa.service.system.DepartmentService;
import com.yinian.autooa.service.system.SysUserService;
import jodd.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

/**
 * created by yinian on 18-4-23.
 */
@Service
public class FileServiceImpl extends BaseService implements FileService {

    @Autowired
    private SysUserService sysUserService;

    @Autowired
    private FileMapper fileMapper;

    @Autowired
    private DepartmentService departmentService;

    @Override
    public List<File> listRootFileByUserId(Integer userId) {
        return listFileByUserIdAndCurrParentId(userId, 0);
    }

    @Override
    public void uploadFile(MultipartFile file, SysUser user, Integer parentId, Integer shareType) {

        String path = FileConst.FILE_UPLOAD_DIR;
        // 上传文件名
        String oriFilename = file.getOriginalFilename();
        int lastPointIndex = oriFilename.lastIndexOf(".");
        String extName = "";
        if(lastPointIndex > 0){
            extName = oriFilename.substring(lastPointIndex);
        }
        String fileName = UUID.randomUUID().toString()+extName;
        java.io.File filePath = new java.io.File(path, fileName);

        //判断路径是否存在，如果不存在就创建一个
        if (!filePath.getParentFile().exists()) {
            filePath.getParentFile().mkdirs();
        }

        //将上传文件保存到一个目标文件当中
        try {
            file.transferTo(new java.io.File(path + java.io.File.separator + fileName));
        } catch (IOException e) {
            logger.error("保存文件出错", e);
            throw new RuntimeException(e);
        }

        // 保存文件记录

        File fileRecord = new File();
        fileRecord.setName(oriFilename);
        fileRecord.setSize((int)file.getSize());
        fileRecord.setLast_modify_datetime(new Date());
        fileRecord.setLocation(fileName);

        parentId = parentId==null?0:parentId;
        fileRecord.setParent_id(parentId);

        shareType = shareType==null?1:shareType;
        fileRecord.setShare_type(shareType);

        fileRecord.setUpload_user_id(user.getId());
        fileRecord.setUpload_username(user.getUsername());
        fileRecord.setIs_folder(FileConst.isFolder.NOT_FOLDER);

        checkFileValid(fileRecord);

        fileMapper.insertSelective(fileRecord);
    }

    @Override
    public void deleteByFileIdStr(String fileIdStr, SysUser user) {
        fileIdStr = fileIdStr==null?"":fileIdStr;

        String[] fileIdArr = fileIdStr.split(",");
        List<Integer> fileIdList = new ArrayList<Integer>(fileIdArr.length);
        for(String fileId : fileIdArr){
            Integer fileInt = Integer.valueOf(fileId);
            fileIdList.add(fileInt);
            checkPower2ChangeFile(fileInt, user);
        }
        FileExample example = new FileExample();
        example.createCriteria()
                .andIdIn(fileIdList);

        example.or(example.createCriteria().andParent_idIn(fileIdList));

        fileMapper.deleteByExample(example);
    }

    @Override
    public void addNewFolder(File file, SysUser user) {
        file.setLocation(null);
        file.setIs_folder(FileConst.isFolder.IS_FOLDER);
        file.setUpload_user_id(user.getId());
        file.setUpload_username(user.getUsername());
        file.setShare_type(TypeConst.FileShareType.ONLY_ME);
        file.setLast_modify_datetime(new Date());
        file.setSize(0);

        checkFileValid(file);

        fileMapper.insertSelective(file);
    }

    private void checkFileValid(File file) {
        if(file == null){
            throw new RuntimeException("文件不能为空");
        }

        Integer parentId = file.getParent_id()==null?0:file.getParent_id();
        String fileName = file.getName();

        if(StringUtil.isBlank(fileName)){
            throw new RuntimeException("文件名不能为空");
        }

        FileExample example = new FileExample();
        example.createCriteria()
                .andParent_idEqualTo(parentId).andNameEqualTo(fileName);

        int count = fileMapper.countByExample(example);
        if(count > 0){
            throw new RuntimeException("存在同名文件/文件夹");
        }
    }

    @Override
    public void changeFileShareType(String fileIdStr, Integer shareType, SysUser user) {
        fileIdStr = fileIdStr==null?"":fileIdStr;
        shareType = shareType==null?TypeConst.FileShareType.ONLY_ME:shareType;

        if(StringUtil.isBlank(fileIdStr)){
            return;
        }
        String[] fileIdArr = fileIdStr.split(",");
        List<Integer> fileIdList = new ArrayList<Integer>(fileIdArr.length);
        for(String fileIdStrTemp : fileIdArr){
            fileIdList.add(Integer.valueOf(fileIdStrTemp));
        }
        List<Integer> effectiveFileIdList = getAssociateFileIdList(fileIdList);
        effectiveFileIdList.addAll(fileIdList);

        for(Integer fileId : effectiveFileIdList){
            checkPower2ChangeFile(fileId, user);
        }

        File file = new File();
        file.setShare_type(shareType);

        FileExample example = new FileExample();
        example.createCriteria().andIdIn(effectiveFileIdList);
        fileMapper.updateByExampleSelective(file, example);
    }

    @Override
    public void renameFileName(Integer fileId, String fileName, SysUser user) {

        checkPower2ChangeFile(fileId, user);

        File file = new File();
        file.setName(fileName);
        file.setId(fileId);

        fileMapper.updateByPrimaryKeySelective(file);
    }

    @Override
    public List<File> listFileByUserIdAndCurrParentId(Integer userId, Integer parentId) {
        SysUser user = sysUserService.getUserByUserId(userId);

        FileExample fileExample = new FileExample();
        fileExample.createCriteria()
                .andUpload_user_idEqualTo(userId)
                .andParent_idEqualTo(parentId);
        fileExample.or(fileExample.createCriteria()
                .andShare_typeIn(Arrays.asList(TypeConst.FileShareType.ALL_OWN, TypeConst.FileShareType.ALL_VIEW))
                .andParent_idEqualTo(parentId));

        if(user.getDepart_id() != null && user.getDepart_id() > 0){
            List<SysUser> userList = sysUserService.listUserByDepartId(user.getDepart_id());
            if(!userList.isEmpty()){
                List<Integer> userIdList = new ArrayList<Integer>(userList.size());
                for(SysUser user1 : userList){
                    userIdList.add(user1.getId());
                }
                fileExample.or(
                        fileExample.createCriteria()
                                .andUpload_user_idIn(userIdList)
                                .andShare_typeIn(Arrays.asList(TypeConst.FileShareType.DEPART_OWN, TypeConst.FileShareType.DEPART_VIEW))
                                .andParent_idEqualTo(parentId)
                );
            }
        }
        fileExample.setOrderByClause(" id desc ");

        return fileMapper.selectByExample(fileExample);
    }

    @Override
    public Integer getFileParentId(Integer fileId) {

        File file = fileMapper.selectByPrimaryKey(fileId);
        if(file == null){
            return null;
        }

       return file.getParent_id();
    }

    @Override
    public ResponseEntity<byte[]> downloadFileByFileId(Integer fileId) {
        File file = fileMapper.selectByPrimaryKey(fileId);

        String fileName = file.getName();
        String fileRealPath = FileConst.FILE_UPLOAD_DIR + file.getLocation();

        byte[] body=null;
        try {
            InputStream in=new FileInputStream(new java.io.File(fileRealPath));//将该文件加入到输入流之中
            body=new byte[in.available()];// 返回下一次对此输入流调用的方法可以不受阻塞地从此输入流读取（或跳过）的估计剩余字节数
            in.read(body);//读入到输入流里面

            fileName=new String(fileName.getBytes("gbk"),"iso8859-1");//防止中文乱码
        } catch (IOException e) {
            logger.error("上传文件出错", e);
        }

        HttpHeaders headers=new HttpHeaders();//设置响应头
        headers.add("Content-Disposition", "attachment;filename="+fileName);
        HttpStatus statusCode = HttpStatus.OK;//设置响应吗

        return new ResponseEntity<byte[]>(body, headers, statusCode);
    }

    @Override
    public void changeFileOwner(String fileIdStr, Integer userId, String userName, SysUser user) {
        fileIdStr = fileIdStr==null?"":fileIdStr;

        if(StringUtil.isBlank(fileIdStr)){
            return;
        }
        String[] fileIdArr = fileIdStr.split(",");
        List<Integer> fileIdList = new ArrayList<Integer>(fileIdArr.length);
        for(String fileIdStrTemp : fileIdArr){
            Integer fileId = Integer.valueOf(fileIdStrTemp);
            fileIdList.add(fileId);
            checkPower2ChangeFile(fileId, user);
        }
        List<Integer> effectiveFileIdList = getAssociateFileIdList(fileIdList);
        effectiveFileIdList.addAll(fileIdList);

        File file = new File();
        file.setUpload_user_id(userId);
        file.setUpload_username(userName);

        FileExample example = new FileExample();
        example.createCriteria().andIdIn(effectiveFileIdList);
        fileMapper.updateByExampleSelective(file, example);
    }

    private List<Integer> getAssociateFileIdList(List<Integer> fileIdList){
        if(fileIdList == null || fileIdList.isEmpty()){
            return null;
        }

        FileExample example = new FileExample();
        example.createCriteria().andParent_idIn(fileIdList);
        List<File> fileList = fileMapper.selectByExample(example);

        if(fileList.isEmpty()){
            return new ArrayList<Integer>(0);
        }

        List<Integer> associateFileIdList = new ArrayList<Integer>();
        for(File file: fileList){
            if(associateFileIdList.contains(file.getId())){
                continue;
            }
            associateFileIdList.add(file.getId());
        }

        associateFileIdList.addAll(
                getAssociateFileIdList(associateFileIdList));

        return associateFileIdList;
    }

    private void checkPower2ChangeFile(Integer fileId, SysUser user){

        File fileExist  = fileMapper.selectByPrimaryKey(fileId);
        if(fileExist == null){
            throw new RuntimeException("文件不存在");
        }

        // judge whether can to rename file.
        boolean power = false;
        // 是文件上传者
        if(     fileExist.getUpload_user_id() != null
                && fileExist.getUpload_user_id().equals(user.getId())
                ){
            power = true;
        } else if(TypeConst.FileShareType.DEPART_OWN == fileExist.getShare_type()){
            // 是同部门，并且是部门所有
            Integer uploadUserId = fileExist.getUpload_user_id();
            if(uploadUserId != null){
                SysUser uploadUser = sysUserService.getUserByUserId(uploadUserId);
                if(uploadUser != null && uploadUser.getDepart_id() != null){
                    Department department = departmentService.getDepartmentByDepartId(uploadUser.getDepart_id());
                    if(department != null && department.getId().equals(user.getDepart_id())){
                        power = true;
                    }
                }
            }
        }else if (TypeConst.FileShareType.ALL_OWN == fileExist.getShare_type()){
            // 是所有人公有
            power = true;
        }

        if(!power){
            throw new RuntimeException("没有权限");
        }
    }
}
