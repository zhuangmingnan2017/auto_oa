package com.yinian.autooa.model;

import java.util.Date;

public class Schedule {
    /**
     * id
     * 表字段 : schedule.id
     */
    private Integer id;

    /**
     * 标题
     * 表字段 : schedule.title
     */
    private String title;

    /**
     * 开始时间
     * 表字段 : schedule.start_datetime
     */
    private Date start_datetime;

    /**
     * 截止时间
     * 表字段 : schedule.end_datetime
     */
    private Date end_datetime;

    /**
     * 类型，1部门2个人
     * 表字段 : schedule.type
     */
    private Integer type;

    /**
     * 关联部门/个人id
     * 表字段 : schedule.belong_id
     */
    private Integer belong_id;

    /**
     * 状态，00A正常,00P过期,00X取消
     * 表字段 : schedule.status
     */
    private String status;

    /**
     * 内容
     * 表字段 : schedule.content
     */
    private String content;

    /**
     * 获取 id 字段:schedule.id
     *
     * @return schedule.id, id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置 id 字段:schedule.id
     *
     * @param id the value for schedule.id, id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取 标题 字段:schedule.title
     *
     * @return schedule.title, 标题
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置 标题 字段:schedule.title
     *
     * @param title the value for schedule.title, 标题
     */
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    /**
     * 获取 开始时间 字段:schedule.start_datetime
     *
     * @return schedule.start_datetime, 开始时间
     */
    public Date getStart_datetime() {
        return start_datetime;
    }

    /**
     * 设置 开始时间 字段:schedule.start_datetime
     *
     * @param start_datetime the value for schedule.start_datetime, 开始时间
     */
    public void setStart_datetime(Date start_datetime) {
        this.start_datetime = start_datetime;
    }

    /**
     * 获取 截止时间 字段:schedule.end_datetime
     *
     * @return schedule.end_datetime, 截止时间
     */
    public Date getEnd_datetime() {
        return end_datetime;
    }

    /**
     * 设置 截止时间 字段:schedule.end_datetime
     *
     * @param end_datetime the value for schedule.end_datetime, 截止时间
     */
    public void setEnd_datetime(Date end_datetime) {
        this.end_datetime = end_datetime;
    }

    /**
     * 获取 类型，1部门2个人 字段:schedule.type
     *
     * @return schedule.type, 类型，1部门2个人
     */
    public Integer getType() {
        return type;
    }

    /**
     * 设置 类型，1部门2个人 字段:schedule.type
     *
     * @param type the value for schedule.type, 类型，1部门2个人
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * 获取 关联部门/个人id 字段:schedule.belong_id
     *
     * @return schedule.belong_id, 关联部门/个人id
     */
    public Integer getBelong_id() {
        return belong_id;
    }

    /**
     * 设置 关联部门/个人id 字段:schedule.belong_id
     *
     * @param belong_id the value for schedule.belong_id, 关联部门/个人id
     */
    public void setBelong_id(Integer belong_id) {
        this.belong_id = belong_id;
    }

    /**
     * 获取 状态，00A正常,00P过期,00X取消 字段:schedule.status
     *
     * @return schedule.status, 状态，00A正常,00P过期,00X取消
     */
    public String getStatus() {
        return status;
    }

    /**
     * 设置 状态，00A正常,00P过期,00X取消 字段:schedule.status
     *
     * @param status the value for schedule.status, 状态，00A正常,00P过期,00X取消
     */
    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    /**
     * 获取 内容 字段:schedule.content
     *
     * @return schedule.content, 内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置 内容 字段:schedule.content
     *
     * @param content the value for schedule.content, 内容
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}