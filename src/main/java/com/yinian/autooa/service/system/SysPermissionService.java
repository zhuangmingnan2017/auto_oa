package com.yinian.autooa.service.system;

import com.yinian.autooa.model.SysPermission;
import com.yinian.autooa.vo.input.system.SetRolePermissionInputVO;

import java.util.List;

/**
 * 权限接口服务
 * created by yinian on 18-4-20.
 */
public interface SysPermissionService {

    /**
     * 根据用户帐号获取用户权限
     * @param account
     * @return
     */
    List<String> getPermissionStrListByUserAccount(String account);

    void updateSelectiveById(SysPermission permission, Integer id);


    void addNew(SysPermission permission);

    void delById(Integer id);

    List<SysPermission> listAll();

    void setRolePermission(SetRolePermissionInputVO vo);

    List<SysPermission> listRolePermissionByRoleId(Integer roleId);

    void delByPermissionCode(String permissionCode);

    void updatePermissionMess(String oldPermissionCode, String newPermissionCode, String name);
}
