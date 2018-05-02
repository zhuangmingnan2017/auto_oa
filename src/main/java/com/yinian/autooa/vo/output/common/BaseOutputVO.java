package com.yinian.autooa.vo.output.common;

/**
 * 基本输出VO
 * created by yinian on 18-4-30.
 */
public class BaseOutputVO {

    private int totalPage;

    private int currPage;

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getCurrPage() {
        return currPage;
    }

    public void setCurrPage(int currPage) {
        this.currPage = currPage;
    }
}
