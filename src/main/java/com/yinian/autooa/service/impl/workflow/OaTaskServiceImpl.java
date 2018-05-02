package com.yinian.autooa.service.impl.workflow;

import com.yinian.autooa.model.Department;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.BaseService;
import com.yinian.autooa.service.system.DepartmentService;
import com.yinian.autooa.service.workflow.OaTaskService;
import org.activiti.engine.FormService;
import org.activiti.engine.TaskService;
import org.activiti.engine.form.FormProperty;
import org.activiti.engine.form.TaskFormData;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 流程任务 服务实现类
 * created by yinian on 18-4-27.
 */
@Service
public class OaTaskServiceImpl extends BaseService implements OaTaskService {

    @Autowired
    private TaskService taskService;
    @Autowired
    private FormService formService;
    @Autowired
    private DepartmentService departmentService;

    @Override
    public List<Task> listAllTaskByUser(SysUser user) {
        List<Task> taskList =
                taskService.createTaskQuery().taskCandidateOrAssigned(user.getAccount())
                .orderByTaskId().desc().list();

        if(user.getDepart_id() == null){
            return taskList;
        }
        Department department = departmentService.getDepartmentByDepartId(user.getDepart_id());
        if(department == null){
            return taskList;
        }
        
        taskList.addAll(taskService.createTaskQuery().taskCandidateGroup(department.getDepart_name()).orderByTaskCreateTime().desc().list());

        return taskList;
    }

    @Override
    public void completeTask(String taskId, Map<String, String> map) {
        TaskFormData formData = formService.getTaskFormData(taskId);
        List<FormProperty> propertyList = formData.getFormProperties();

        Map<String, String> formMap = new HashMap<String, String>(propertyList.size());

        for(FormProperty property : propertyList){
            if(!property.isWritable()){
                continue;
            }
            formMap.put(property.getId(), map.get(property.getId()));
        }

        formService.submitTaskFormData(taskId, formMap);
    }

    @Override
    public void claimTask(String taskId, SysUser user) {
        taskService.claim(taskId, user.getAccount());
    }
}
