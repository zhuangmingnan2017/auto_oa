package com.yinian.autooa.service;

import java.util.List;
import java.util.Set;

/**
 * 系统角色服务接口
 * created by yinian on 18-4-20.
 */
public interface SysRoleService {

    /**
     * 根据帐号获取用户的角色集合
     * @param account
     * @return
     */
    Set<String> getRoleCodeSetByUserAccount(String account);

    /**
     * 根据帐号获取用户的角色id列表
     * @param account
     * @return
     */
    List<Integer> getRoleIdListByUserAccount(String account);
}
