package com.yinian.autooa.common;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.util.Date;
import java.util.HashMap;

/**
 * 服务响应对象
 * Created by henser
 */
@ApiModel
public class ApiResponse {

    @ApiModelProperty(value = "状态码,0表示成功 其他表示失败", example = "0")
    private int code;

    @ApiModelProperty(value = "错误信息", example = "Success")
    private String message;

    @ApiModelProperty(value = "时间戳", example = "1505100588899")
    private long timestamp;

    @ApiModelProperty(value = "返回数据内容", example = "{}")
    private Object data;

    public ApiResponse() {
    }

    public ApiResponse(XMsg x) {
        this.code = x.getCode();
        this.message = x.getMessage();
    }

    public ApiResponse(XMsg xMsg, Object data) {
        this.code = xMsg.getCode();
        this.message = xMsg.getMessage();
        if (data == null)
            data = new HashMap();
        this.data = data;
    }

    public static ApiResponse getDefaultResponse() {
        return new ApiResponse(XMsg.SUCCESS);
    }

    public static ApiResponse getDefaultResponse(Object data) {
        return new ApiResponse(XMsg.SUCCESS).setData(data);
    }

    public static ApiResponse getResponse(XMsg xMsg) {
        return new ApiResponse(xMsg);
    }

    public static ApiResponse getResponse(XMsg xMsg, Object data) {
        return new ApiResponse(xMsg).setData(data);
    }

    public int getCode() {
        return this.code;
    }

    public ApiResponse setCode(int code) {
        this.code = code;
        return this;
    }

    public String getMessage() {
        return message;
    }

    public ApiResponse setMsg(String message) {
        this.message = message;
        return this;
    }

    public long getTimestamp() {
        if (this.timestamp == 0L) {
            this.timestamp = (new Date()).getTime();
        }

        return this.timestamp;
    }

    public ApiResponse setTimestamp(long timestamp) {
        this.timestamp = timestamp;
        return this;
    }

    public Object getData() {
        return this.data;
    }

    public ApiResponse setData(Object data) {
        if (data == null)
            data = new HashMap();
        this.data = data;
        return this;
    }
}
