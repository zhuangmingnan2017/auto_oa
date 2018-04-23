package com.yinian.autooa.model;

import java.util.Date;

public class File {
    /**
     * id
     * 表字段 : file.id
     */
    private Integer id;

    /**
     * 文件名
     * 表字段 : file.name
     */
    private String name;

    /**
     * 文件大小，单位KB
     * 表字段 : file.size
     */
    private Integer size;

    /**
     * 最后修改时间
     * 表字段 : file.last_modify_datetime
     */
    private Date last_modify_datetime;

    /**
     * 文件实际存放路径
     * 表字段 : file.location
     */
    private String location;

    /**
     * 父文件夹id,0表示存放于根目录下
     * 表字段 : file.parent_id
     */
    private Integer parent_id;

    /**
     * 是否是文件夹,0表示文件，1表示文件夹
     * 表字段 : file.is_folder
     */
    private Integer is_folder;

    /**
     * 分享类型1仅自己可见2部门可见3部门拥有所有权4所有人可见5所有人拥有所有权
     * 表字段 : file.share_type
     */
    private Integer share_type;

    /**
     * 上传者名称
     * 表字段 : file.upload_username
     */
    private String upload_username;

    /**
     * 上传者用户id
     * 表字段 : file.upload_user_id
     */
    private Integer upload_user_id;

    /**
     * 获取 id 字段:file.id
     *
     * @return file.id, id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置 id 字段:file.id
     *
     * @param id the value for file.id, id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取 文件名 字段:file.name
     *
     * @return file.name, 文件名
     */
    public String getName() {
        return name;
    }

    /**
     * 设置 文件名 字段:file.name
     *
     * @param name the value for file.name, 文件名
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * 获取 文件大小，单位KB 字段:file.size
     *
     * @return file.size, 文件大小，单位KB
     */
    public Integer getSize() {
        return size;
    }

    /**
     * 设置 文件大小，单位KB 字段:file.size
     *
     * @param size the value for file.size, 文件大小，单位KB
     */
    public void setSize(Integer size) {
        this.size = size;
    }

    /**
     * 获取 最后修改时间 字段:file.last_modify_datetime
     *
     * @return file.last_modify_datetime, 最后修改时间
     */
    public Date getLast_modify_datetime() {
        return last_modify_datetime;
    }

    /**
     * 设置 最后修改时间 字段:file.last_modify_datetime
     *
     * @param last_modify_datetime the value for file.last_modify_datetime, 最后修改时间
     */
    public void setLast_modify_datetime(Date last_modify_datetime) {
        this.last_modify_datetime = last_modify_datetime;
    }

    /**
     * 获取 文件实际存放路径 字段:file.location
     *
     * @return file.location, 文件实际存放路径
     */
    public String getLocation() {
        return location;
    }

    /**
     * 设置 文件实际存放路径 字段:file.location
     *
     * @param location the value for file.location, 文件实际存放路径
     */
    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    /**
     * 获取 父文件夹id,0表示存放于根目录下 字段:file.parent_id
     *
     * @return file.parent_id, 父文件夹id,0表示存放于根目录下
     */
    public Integer getParent_id() {
        return parent_id;
    }

    /**
     * 设置 父文件夹id,0表示存放于根目录下 字段:file.parent_id
     *
     * @param parent_id the value for file.parent_id, 父文件夹id,0表示存放于根目录下
     */
    public void setParent_id(Integer parent_id) {
        this.parent_id = parent_id;
    }

    /**
     * 获取 是否是文件夹,0表示文件，1表示文件夹 字段:file.is_folder
     *
     * @return file.is_folder, 是否是文件夹,0表示文件，1表示文件夹
     */
    public Integer getIs_folder() {
        return is_folder;
    }

    /**
     * 设置 是否是文件夹,0表示文件，1表示文件夹 字段:file.is_folder
     *
     * @param is_folder the value for file.is_folder, 是否是文件夹,0表示文件，1表示文件夹
     */
    public void setIs_folder(Integer is_folder) {
        this.is_folder = is_folder;
    }

    /**
     * 获取 分享类型1仅自己可见2部门可见3部门拥有所有权4所有人可见5所有人拥有所有权 字段:file.share_type
     *
     * @return file.share_type, 分享类型1仅自己可见2部门可见3部门拥有所有权4所有人可见5所有人拥有所有权
     */
    public Integer getShare_type() {
        return share_type;
    }

    /**
     * 设置 分享类型1仅自己可见2部门可见3部门拥有所有权4所有人可见5所有人拥有所有权 字段:file.share_type
     *
     * @param share_type the value for file.share_type, 分享类型1仅自己可见2部门可见3部门拥有所有权4所有人可见5所有人拥有所有权
     */
    public void setShare_type(Integer share_type) {
        this.share_type = share_type;
    }

    /**
     * 获取 上传者名称 字段:file.upload_username
     *
     * @return file.upload_username, 上传者名称
     */
    public String getUpload_username() {
        return upload_username;
    }

    /**
     * 设置 上传者名称 字段:file.upload_username
     *
     * @param upload_username the value for file.upload_username, 上传者名称
     */
    public void setUpload_username(String upload_username) {
        this.upload_username = upload_username == null ? null : upload_username.trim();
    }

    /**
     * 获取 上传者用户id 字段:file.upload_user_id
     *
     * @return file.upload_user_id, 上传者用户id
     */
    public Integer getUpload_user_id() {
        return upload_user_id;
    }

    /**
     * 设置 上传者用户id 字段:file.upload_user_id
     *
     * @param upload_user_id the value for file.upload_user_id, 上传者用户id
     */
    public void setUpload_user_id(Integer upload_user_id) {
        this.upload_user_id = upload_user_id;
    }
}