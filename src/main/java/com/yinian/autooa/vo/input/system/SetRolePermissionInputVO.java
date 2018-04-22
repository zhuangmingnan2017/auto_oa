package com.yinian.autooa.vo.input.system;

/**
 * created by yinian on 18-4-22.
 */
public class SetRolePermissionInputVO {

    private Integer roleId;

    private String permissionIdListStr;

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getPermissionIdListStr() {
        return permissionIdListStr;
    }

    public void setPermissionIdListStr(String permissionIdListStr) {
        this.permissionIdListStr = permissionIdListStr;
    }
}
