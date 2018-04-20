package com.yinian.autooa.constant;

/**
 * created by yinian on 18-4-5.
 */
public enum  StatusConst {

    VALID("00A"),
    NO_VALID("00X");


    private String status;

    StatusConst(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }
}
