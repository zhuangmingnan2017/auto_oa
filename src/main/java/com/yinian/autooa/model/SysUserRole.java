package com.yinian.autooa.model;

public class SysUserRole {
    /**
     * id
     * 表字段 : sys_user_role.id
     */
    private Integer id;

    /**
     * 用户id
     * 表字段 : sys_user_role.user_id
     */
    private Integer user_id;

    /**
     * 角色id
     * 表字段 : sys_user_role.role_id
     */
    private Integer role_id;

    /**
     * 获取 id 字段:sys_user_role.id
     *
     * @return sys_user_role.id, id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置 id 字段:sys_user_role.id
     *
     * @param id the value for sys_user_role.id, id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取 用户id 字段:sys_user_role.user_id
     *
     * @return sys_user_role.user_id, 用户id
     */
    public Integer getUser_id() {
        return user_id;
    }

    /**
     * 设置 用户id 字段:sys_user_role.user_id
     *
     * @param user_id the value for sys_user_role.user_id, 用户id
     */
    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    /**
     * 获取 角色id 字段:sys_user_role.role_id
     *
     * @return sys_user_role.role_id, 角色id
     */
    public Integer getRole_id() {
        return role_id;
    }

    /**
     * 设置 角色id 字段:sys_user_role.role_id
     *
     * @param role_id the value for sys_user_role.role_id, 角色id
     */
    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }
}