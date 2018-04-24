package com.yinian.autooa.vo.input.message;

/**
 * 邮件发送输入参数
 * created by yinian on 18-4-24.
 */
public class MailSendInputVO {

    private String receiveMailStr;

    private String title;

    private String content;

    public String getReceiveMailStr() {
        return receiveMailStr;
    }

    public void setReceiveMailStr(String receiveMailStr) {
        this.receiveMailStr = receiveMailStr;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
