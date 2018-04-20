package com.yinian.autooa.model;

public class SysPermission {
    /**
     * id
     * 表字段 : sys_permission.id
     */
    private Integer id;

    /**
     * 权限编码
     * 表字段 : sys_permission.permission_code
     */
    private String permission_code;

    /**
     * 权限名称
     * 表字段 : sys_permission.permission_name
     */
    private String permission_name;

    /**
     * 获取 id 字段:sys_permission.id
     *
     * @return sys_permission.id, id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置 id 字段:sys_permission.id
     *
     * @param id the value for sys_permission.id, id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取 权限编码 字段:sys_permission.permission_code
     *
     * @return sys_permission.permission_code, 权限编码
     */
    public String getPermission_code() {
        return permission_code;
    }

    /**
     * 设置 权限编码 字段:sys_permission.permission_code
     *
     * @param permission_code the value for sys_permission.permission_code, 权限编码
     */
    public void setPermission_code(String permission_code) {
        this.permission_code = permission_code == null ? null : permission_code.trim();
    }

    /**
     * 获取 权限名称 字段:sys_permission.permission_name
     *
     * @return sys_permission.permission_name, 权限名称
     */
    public String getPermission_name() {
        return permission_name;
    }

    /**
     * 设置 权限名称 字段:sys_permission.permission_name
     *
     * @param permission_name the value for sys_permission.permission_name, 权限名称
     */
    public void setPermission_name(String permission_name) {
        this.permission_name = permission_name == null ? null : permission_name.trim();
    }
}