package com.yinian.autooa.vo.input.workflow;

import com.yinian.autooa.vo.input.common.BaseInputVO;

/**
 * 列举参与过的流程输入VO
 * created by yinian on 18-5-2.
 */
public class ListJoinProcessInputVO extends BaseInputVO {

    private String userAccount;

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }
}
