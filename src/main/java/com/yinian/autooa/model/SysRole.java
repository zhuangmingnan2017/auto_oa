package com.yinian.autooa.model;

public class SysRole {
    /**
     * id
     * 表字段 : sys_role.id
     */
    private Integer id;

    /**
     * 角色编码
     * 表字段 : sys_role.role_code
     */
    private String role_code;

    /**
     * 角色名称
     * 表字段 : sys_role.role_name
     */
    private String role_name;

    /**
     * 获取 id 字段:sys_role.id
     *
     * @return sys_role.id, id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置 id 字段:sys_role.id
     *
     * @param id the value for sys_role.id, id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取 角色编码 字段:sys_role.role_code
     *
     * @return sys_role.role_code, 角色编码
     */
    public String getRole_code() {
        return role_code;
    }

    /**
     * 设置 角色编码 字段:sys_role.role_code
     *
     * @param role_code the value for sys_role.role_code, 角色编码
     */
    public void setRole_code(String role_code) {
        this.role_code = role_code == null ? null : role_code.trim();
    }

    /**
     * 获取 角色名称 字段:sys_role.role_name
     *
     * @return sys_role.role_name, 角色名称
     */
    public String getRole_name() {
        return role_name;
    }

    /**
     * 设置 角色名称 字段:sys_role.role_name
     *
     * @param role_name the value for sys_role.role_name, 角色名称
     */
    public void setRole_name(String role_name) {
        this.role_name = role_name == null ? null : role_name.trim();
    }
}