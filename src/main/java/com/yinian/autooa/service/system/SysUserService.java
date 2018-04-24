package com.yinian.autooa.service.system;

import com.yinian.autooa.model.SysUser;

import java.util.List;

/**
 * 用户相关接口
 * created by yinian on 18-4-20.
 */
public interface SysUserService {

    /**
     * 根据帐号获取用户信息
     * @param account
     * @return
     */
    SysUser getUserByAccount(String account);


    /**
     * 列举所有用户
     * @return
     */
    List<SysUser> listAllUser();

    /**
     * 更新
     * @param user
     * @param id
     */
    void updateSelectiveUserById(SysUser user, Integer id);

    /**
     * 新增用户
     * @param user
     */
    void addNewUser(SysUser user);

    /**
     * 删除
     * @param userId
     */
    void delById(Integer userId);

    /**
     * 获取用户
     * @param userId
     * @return
     */
    SysUser getUserByUserId(Integer userId);

    /**
     * 获取部门id下的用户
     * @param depart_id
     * @return
     */
    List<SysUser> listUserByDepartId(Integer depart_id);

    void changeUserDepart(Integer userId, Integer departmentId);
}
