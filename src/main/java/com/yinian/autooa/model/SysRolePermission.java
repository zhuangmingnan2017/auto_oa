package com.yinian.autooa.model;

public class SysRolePermission {
    /**
     * id
     * 表字段 : sys_role_permission.id
     */
    private Integer id;

    /**
     * 权限id
     * 表字段 : sys_role_permission.permission_id
     */
    private Integer permission_id;

    /**
     * 角色id
     * 表字段 : sys_role_permission.role_id
     */
    private Integer role_id;

    /**
     * 获取 id 字段:sys_role_permission.id
     *
     * @return sys_role_permission.id, id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置 id 字段:sys_role_permission.id
     *
     * @param id the value for sys_role_permission.id, id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取 权限id 字段:sys_role_permission.permission_id
     *
     * @return sys_role_permission.permission_id, 权限id
     */
    public Integer getPermission_id() {
        return permission_id;
    }

    /**
     * 设置 权限id 字段:sys_role_permission.permission_id
     *
     * @param permission_id the value for sys_role_permission.permission_id, 权限id
     */
    public void setPermission_id(Integer permission_id) {
        this.permission_id = permission_id;
    }

    /**
     * 获取 角色id 字段:sys_role_permission.role_id
     *
     * @return sys_role_permission.role_id, 角色id
     */
    public Integer getRole_id() {
        return role_id;
    }

    /**
     * 设置 角色id 字段:sys_role_permission.role_id
     *
     * @param role_id the value for sys_role_permission.role_id, 角色id
     */
    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }
}