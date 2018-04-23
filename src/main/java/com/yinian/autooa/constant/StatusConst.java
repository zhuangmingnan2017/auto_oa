package com.yinian.autooa.constant;

/**
 * created by yinian on 18-4-5.
 */
public interface   StatusConst {

    interface CommonStatus {
        String VALID ="00A";
        String NO_VALID = "00X";
    }

    enum ScheduleStatus {
        NORMAL("00A", "正常"),
        OUT_OF_DATE("00P", "已过期"),
        FINISH("00X","已完成");

        private String status ;
        private String msg;

        ScheduleStatus(String status, String msg) {
            this.status = status;
            this.msg = msg;
        }

        public String getStatus() {
            return status;
        }

        public String getMsg() {
            return msg;
        }

        public static String status2Msg(String status){
            for(ScheduleStatus scheduleStatus : ScheduleStatus.values()){
                if(scheduleStatus.status.equals(status)){
                    return scheduleStatus.status;
                }
            }
            return "";
        }
    }

}
