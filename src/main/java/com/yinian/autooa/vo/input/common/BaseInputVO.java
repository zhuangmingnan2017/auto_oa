package com.yinian.autooa.vo.input.common;

import java.io.Serializable;

/**
 * 基本输入的VO
 * created by yinian on 18-4-30.
 */
public class BaseInputVO implements Serializable {

    private int currPage = 1;

    private int pageSize = 10;

    public int getCurrPage() {
        return currPage;
    }

    public void setCurrPage(int currPage) {
        if(currPage <= 0){
            this.currPage = 1;
            return ;
        }

        this.currPage = currPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        if(pageSize <= 0){
            this.pageSize = 10;
            return ;
        }

        this.pageSize = pageSize;
    }
}
