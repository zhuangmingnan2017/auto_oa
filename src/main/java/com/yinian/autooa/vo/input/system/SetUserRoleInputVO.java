package com.yinian.autooa.vo.input.system;

/**
 * created by yinian on 18-4-22.
 */
public class SetUserRoleInputVO {

    private Integer userId;

    private String roleIdListStr;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getRoleIdListStr() {
        return roleIdListStr;
    }

    public void setRoleIdListStr(String roleIdListStr) {
        this.roleIdListStr = roleIdListStr;
    }
}
