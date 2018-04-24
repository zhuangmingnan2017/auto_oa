package com.yinian.autooa.model;

public class Department {
    /**
     * id
     * 表字段 : department.id
     */
    private Integer id;

    /**
     * 部门名称
     * 表字段 : department.depart_name
     */
    private String depart_name;

    /**
     * 简述
     * 表字段 : department.depart_desc
     */
    private String depart_desc;

    /**
     * 获取 id 字段:department.id
     *
     * @return department.id, id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置 id 字段:department.id
     *
     * @param id the value for department.id, id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取 部门名称 字段:department.depart_name
     *
     * @return department.depart_name, 部门名称
     */
    public String getDepart_name() {
        return depart_name;
    }

    /**
     * 设置 部门名称 字段:department.depart_name
     *
     * @param depart_name the value for department.depart_name, 部门名称
     */
    public void setDepart_name(String depart_name) {
        this.depart_name = depart_name == null ? null : depart_name.trim();
    }

    /**
     * 获取 简述 字段:department.depart_desc
     *
     * @return department.depart_desc, 简述
     */
    public String getDepart_desc() {
        return depart_desc;
    }

    /**
     * 设置 简述 字段:department.depart_desc
     *
     * @param depart_desc the value for department.depart_desc, 简述
     */
    public void setDepart_desc(String depart_desc) {
        this.depart_desc = depart_desc == null ? null : depart_desc.trim();
    }
}