package com.yinian.autooa.vo.output.common;

/**
 * 返回boolean， 带回信息
 * created by yinian on 18-5-9.
 */
public class BooleanOutWithMsg {
    //处理状态
    private boolean status;

    // 返回消息
    private String message;

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public static BooleanOutWithMsg success(){
        return new BooleanOutWithMsg(true, null);
    }

    public static BooleanOutWithMsg success(String message){
        return new BooleanOutWithMsg(true, message);
    }

    public static BooleanOutWithMsg fail(String message){
        return new BooleanOutWithMsg(false, message);
    }

    public boolean isSuccess(){
        return this.status;
    }

    private BooleanOutWithMsg() {
    }

    private BooleanOutWithMsg(boolean status, String message){
        this.status = status;
        this.message = message;
    }

}
