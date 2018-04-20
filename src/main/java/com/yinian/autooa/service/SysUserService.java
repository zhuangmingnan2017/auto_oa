package com.yinian.autooa.service;

import com.yinian.autooa.model.SysUser;

/**
 * 用户相关接口
 * created by yinian on 18-4-20.
 */
public interface SysUserService {

    SysUser getUserByAccount(String account);


}
