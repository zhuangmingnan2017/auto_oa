package com.yinian.autooa.constant;

/**
 * 页面路径常量
 * created by yinian on 18-4-27.
 */
public interface PagePathConst {


    interface workflow{
        String workflowPre = "workflow/";
        String TASK_LIST = workflowPre + "list_task";
        String JOIN_INSTANCE_LIST = workflowPre + "list_join_process_instance";
        String HISTORY_INSTANCE_LIST = workflowPre + "list_history_instance";
        String HISTORY_INSTANCE_DETAIL = workflowPre + "detail_history_instance";
    }
}
