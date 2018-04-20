package com.yinian.autooa.controller.activiti;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.controller.BaseController;
import org.activiti.engine.*;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * created by yinian on 18-4-5.
 */
@Controller
@RequestMapping("/process/instance/")
public class InstanceController extends BaseController {

    @Autowired
    private RuntimeService runtimeService;
    @Autowired
    private IdentityService identityService;
    @Autowired
    private TaskService taskService;
    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private FormService formService;

    @GetMapping("list.do")
    public ModelAndView listInstance(String userId){
        ModelAndView modelAndView = new ModelAndView();

        TaskQuery query = taskService.createTaskQuery();
        if(userId != null){
            query.taskAssignee(userId);
        }
        List<Task> taskList = query.list();
        Map<String, ProcessInstance> map = new HashMap<String, ProcessInstance>();
        Map<String, Object> varMap = new HashMap<String, Object>();

        for(Task task : taskList){
            String instanceId = task.getProcessInstanceId();
            if(!map.containsKey(instanceId)){
                map.put(instanceId, runtimeService.createProcessInstanceQuery().processInstanceId(instanceId).singleResult());
            }
            varMap.put(task.getId(),taskService.getVariable(task.getId(), "content"));
        }

        modelAndView.addObject("list", taskList);
        modelAndView.addObject("instance_map", map);
        modelAndView.addObject("var_map", varMap);
        modelAndView.setViewName("/activiti/instance/list_instance");

        return modelAndView;
    }

    @PostMapping("start.do")
    @ResponseBody
    public ApiResponse startProcess(String definitionId, String userId, String content, String formId){

        identityService.setAuthenticatedUserId(userId);

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("content", content);
        map.put("formId", formId);

        runtimeService.startProcessInstanceById(definitionId, map);

        return ApiResponse.getDefaultResponse();
//        return new ModelAndView("redirect:list.do?userId="+userId);
    }
}
