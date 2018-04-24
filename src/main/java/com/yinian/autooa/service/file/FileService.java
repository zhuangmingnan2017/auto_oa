package com.yinian.autooa.service.file;

import com.yinian.autooa.model.File;
import com.yinian.autooa.model.SysUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 文件管理 服务逻辑
 * created by yinian on 18-4-23.
 */
public interface FileService {
    Logger logger = LoggerFactory.getLogger(FileService.class);

    List<File> listRootFileByUserId(Integer id);

    void uploadFile(MultipartFile file, SysUser user, Integer parentId, Integer shareType);

    void deleteByFileIdStr(String fileIdStr);

    void addNewFolder(File file, SysUser user);

    void changeFileShareType(String fileIdStr, Integer shareType);

    void renameFileName(Integer fileId, String fileName);

    List<File> listFileByUserIdAndCurrParentId(Integer id, Integer parentId);

    Integer getFileParentId(Integer fileId);

    ResponseEntity<byte[]> downloadFileByFileId(Integer fileId);
}
