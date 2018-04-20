package com.yinian.autooa.service;

import java.util.List;
import java.util.Set;

/**
 * 系统角色服务接口
 * created by yinian on 18-4-20.
 */
public interface SysRoleService {

    Set<String> getRoleStrSetByUserAccount(String account);
}
