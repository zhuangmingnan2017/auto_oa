package com.yinian.autooa.service;

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
}
