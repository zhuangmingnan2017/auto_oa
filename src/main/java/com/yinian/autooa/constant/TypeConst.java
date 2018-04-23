package com.yinian.autooa.constant;

/**
 * 类型常量
 * created by yinian on 18-4-23.
 */
public interface TypeConst {

    // 日程类型
    interface ScheduleType{
        int DEPART = 1;
        int MY = 2;
    }

    interface FileShareType{
        int ONLY_ME = 1;
        int DEPART_VIEW = 2;
        int DEPART_OWN = 3;
        int ALL_VIEW = 4;
        int ALL_OWN = 5;
    }
}
