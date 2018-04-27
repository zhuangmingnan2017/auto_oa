package com.yinian.autooa.service.workflow;

import com.yinian.autooa.model.SysUser;
import org.activiti.engine.task.Task;

import java.util.List;
import java.util.Map;

/**
 * 流程服务逻辑接口
 * created by yinian on 18-4-27.
 */
public interface OaTaskService {
    /**
     * 获取所有用户的待办理、待签收任务
     * @param user
     * @return
     */
    List<Task> listAllTaskByUser(SysUser user);

    /**
     * 办理任务
     * @param taskId
     * @param map
     */
    void completeTask(String taskId, Map<String, String> map);

    /**
     * 签收任务
     * @param taskId
     * @param user
     */
    void claimTask(String taskId, SysUser user);
}
