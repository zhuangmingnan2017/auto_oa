package com.yinian.autooa.model;

public class SysMenu {
    /**
     * id
     * 表字段 : sys_menu.id
     */
    private Integer id;

    /**
     * 排序字段,越大表示越靠前
     * 表字段 : sys_menu.sort
     */
    private Integer sort;

    /**
     * 父id
     * 表字段 : sys_menu.parent_id
     */
    private Integer parent_id;

    /**
     * 资源菜单名称
     * 表字段 : sys_menu.name
     */
    private String name;

    /**
     * 菜单地址
     * 表字段 : sys_menu.url
     */
    private String url;

    /**
     * 权限，user:systemManage:view表示user角色拥有系统管理资源菜单的查看权限
     * 表字段 : sys_menu.permission
     */
    private String permission;

    /**
     * 描述
     * 表字段 : sys_menu.description
     */
    private String description;

    /**
     * 获取 id 字段:sys_menu.id
     *
     * @return sys_menu.id, id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置 id 字段:sys_menu.id
     *
     * @param id the value for sys_menu.id, id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取 排序字段,越大表示越靠前 字段:sys_menu.sort
     *
     * @return sys_menu.sort, 排序字段,越大表示越靠前
     */
    public Integer getSort() {
        return sort;
    }

    /**
     * 设置 排序字段,越大表示越靠前 字段:sys_menu.sort
     *
     * @param sort the value for sys_menu.sort, 排序字段,越大表示越靠前
     */
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /**
     * 获取 父id 字段:sys_menu.parent_id
     *
     * @return sys_menu.parent_id, 父id
     */
    public Integer getParent_id() {
        return parent_id;
    }

    /**
     * 设置 父id 字段:sys_menu.parent_id
     *
     * @param parent_id the value for sys_menu.parent_id, 父id
     */
    public void setParent_id(Integer parent_id) {
        this.parent_id = parent_id;
    }

    /**
     * 获取 资源菜单名称 字段:sys_menu.name
     *
     * @return sys_menu.name, 资源菜单名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置 资源菜单名称 字段:sys_menu.name
     *
     * @param name the value for sys_menu.name, 资源菜单名称
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * 获取 菜单地址 字段:sys_menu.url
     *
     * @return sys_menu.url, 菜单地址
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置 菜单地址 字段:sys_menu.url
     *
     * @param url the value for sys_menu.url, 菜单地址
     */
    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    /**
     * 获取 权限，user:systemManage:view表示user角色拥有系统管理资源菜单的查看权限 字段:sys_menu.permission
     *
     * @return sys_menu.permission, 权限，user:systemManage:view表示user角色拥有系统管理资源菜单的查看权限
     */
    public String getPermission() {
        return permission;
    }

    /**
     * 设置 权限，user:systemManage:view表示user角色拥有系统管理资源菜单的查看权限 字段:sys_menu.permission
     *
     * @param permission the value for sys_menu.permission, 权限，user:systemManage:view表示user角色拥有系统管理资源菜单的查看权限
     */
    public void setPermission(String permission) {
        this.permission = permission == null ? null : permission.trim();
    }

    /**
     * 获取 描述 字段:sys_menu.description
     *
     * @return sys_menu.description, 描述
     */
    public String getDescription() {
        return description;
    }

    /**
     * 设置 描述 字段:sys_menu.description
     *
     * @param description the value for sys_menu.description, 描述
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}