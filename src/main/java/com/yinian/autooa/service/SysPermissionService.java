package com.yinian.autooa.service;

import java.util.List;

/**
 * 权限接口服务
 * created by yinian on 18-4-20.
 */
public interface SysPermissionService {

    List<String> getPermisssionStrListByUserAccount(String account);
}
