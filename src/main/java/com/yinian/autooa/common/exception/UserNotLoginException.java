package com.yinian.autooa.common.exception;

/**
 * 用户没有登录错误
 * created by yinian on 18-4-27.
 */
public class UserNotLoginException extends RuntimeException{

    public UserNotLoginException() {
        super("用户没有登录");
    }
}
