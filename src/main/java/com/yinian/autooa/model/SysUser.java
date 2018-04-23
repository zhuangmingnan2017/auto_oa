package com.yinian.autooa.model;

public class SysUser {
    /**
     * id
     * 表字段 : sys_user.id
     */
    private Integer id;

    /**
     * 登录帐号
     * 表字段 : sys_user.account
     */
    private String account;

    /**
     * 用户名
     * 表字段 : sys_user.username
     */
    private String username;

    /**
     * 密码
     * 表字段 : sys_user.password
     */
    private String password;

    /**
     * 手机号码
     * 表字段 : sys_user.phone
     */
    private String phone;

    /**
     * 电子邮件
     * 表字段 : sys_user.email
     */
    private String email;

    /**
     * 性别，0女1男
     * 表字段 : sys_user.sex
     */
    private Integer sex;

    /**
     * 地址
     * 表字段 : sys_user.address
     */
    private String address;

    /**
     * 部门id
     * 表字段 : sys_user.depart_id
     */
    private Integer depart_id;

    /**
     * 获取 id 字段:sys_user.id
     *
     * @return sys_user.id, id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置 id 字段:sys_user.id
     *
     * @param id the value for sys_user.id, id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取 登录帐号 字段:sys_user.account
     *
     * @return sys_user.account, 登录帐号
     */
    public String getAccount() {
        return account;
    }

    /**
     * 设置 登录帐号 字段:sys_user.account
     *
     * @param account the value for sys_user.account, 登录帐号
     */
    public void setAccount(String account) {
        this.account = account == null ? null : account.trim();
    }

    /**
     * 获取 用户名 字段:sys_user.username
     *
     * @return sys_user.username, 用户名
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置 用户名 字段:sys_user.username
     *
     * @param username the value for sys_user.username, 用户名
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * 获取 密码 字段:sys_user.password
     *
     * @return sys_user.password, 密码
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置 密码 字段:sys_user.password
     *
     * @param password the value for sys_user.password, 密码
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * 获取 手机号码 字段:sys_user.phone
     *
     * @return sys_user.phone, 手机号码
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置 手机号码 字段:sys_user.phone
     *
     * @param phone the value for sys_user.phone, 手机号码
     */
    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    /**
     * 获取 电子邮件 字段:sys_user.email
     *
     * @return sys_user.email, 电子邮件
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置 电子邮件 字段:sys_user.email
     *
     * @param email the value for sys_user.email, 电子邮件
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * 获取 性别，0女1男 字段:sys_user.sex
     *
     * @return sys_user.sex, 性别，0女1男
     */
    public Integer getSex() {
        return sex;
    }

    /**
     * 设置 性别，0女1男 字段:sys_user.sex
     *
     * @param sex the value for sys_user.sex, 性别，0女1男
     */
    public void setSex(Integer sex) {
        this.sex = sex;
    }

    /**
     * 获取 地址 字段:sys_user.address
     *
     * @return sys_user.address, 地址
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置 地址 字段:sys_user.address
     *
     * @param address the value for sys_user.address, 地址
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    /**
     * 获取 部门id 字段:sys_user.depart_id
     *
     * @return sys_user.depart_id, 部门id
     */
    public Integer getDepart_id() {
        return depart_id;
    }

    /**
     * 设置 部门id 字段:sys_user.depart_id
     *
     * @param depart_id the value for sys_user.depart_id, 部门id
     */
    public void setDepart_id(Integer depart_id) {
        this.depart_id = depart_id;
    }
}