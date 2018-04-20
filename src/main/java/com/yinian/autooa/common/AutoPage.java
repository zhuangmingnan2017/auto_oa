package com.yinian.autooa.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * <pre>
 * Title:类中文名称
 * Description: 类功能的描述     分页组件封装SQL查询的分页信息
 * </pre>
 * @author caozj  cao.zhijun@163.com
 * @date 2015-8-29 上午11:03:23
 * @version 1.00.00
 * <pre>
 * 修改记录
 *    修改后版本:     修改人：  修改日期:     修改内容:
 * </pre>
 * @param <T>
 */
public class AutoPage<T> {

    private int pageIndex = 1;//页码，默认是第一页
    private int pageSize = 20;//每页显示的记录数，默认是15
    private int total;//总记录数
    private int pageCount;//总页数
    //分页标志   true 为需要分页   false 为不需要分页
    private boolean page_flag = true ;
    private List<T> rows = new ArrayList<T>();//对应的当前页记录
    private Map params = new HashMap();

    private int page = 1;

    private int displayRecord = 0;

    public AutoPage(){}


    public AutoPage(int pageIndex, int pageSize) {
        this.pageIndex = pageIndex;
        this.pageSize = pageSize;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {

        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
        int totalPage = total %pageSize==0 ? total /pageSize : total /pageSize + 1;
        this.setPageCount(totalPage);
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }

    public Map getParams() {
        return params;
    }

    public void setParams(Map params) {
        this.params = params;
    }


    public boolean isPage_flag() {
        return page_flag;
    }


    public void setPage_flag(boolean page_flag) {
        this.page_flag = page_flag;
    }


    public int getPage() {
        return page;
    }


    public void setPage(int page) {
        this.page = page;
        this.pageIndex = page;
    }


    public int getDisplayRecord() {
        return displayRecord;
    }


    public void setDisplayRecord(int displayRecord) {
        this.displayRecord = displayRecord;
        if(this.displayRecord <= 0){
            this.displayRecord = 20;
        }
        this.pageSize = this.displayRecord;
    }


}