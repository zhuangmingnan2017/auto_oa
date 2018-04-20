package com.yinian.autooa.controller;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.history.HistoricProcessInstanceQuery;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * created by yinian on 18-4-4.
 */
@Controller
@RequestMapping("/autooa/usertask/")
public class UserTaskController {

    @Autowired
    private ProcessEngine processEngine;

    @GetMapping("user/list.do")
    public ModelAndView listUserTaskByAssignee(String assignee){
        List<Task> list = processEngine.getTaskService()//与正在执行的任务管理相关的Service
                .createTaskQuery()//创建任务查询对象
                /**查询条件（where部分）*/
                .taskAssignee(assignee)//指定个人任务查询，指定办理人
//                      .taskCandidateUser(candidateUser)//组任务的办理人查询
//                      .processDefinitionId(processDefinitionId)//使用流程定义ID查询
//                      .processInstanceId(processInstanceId)//使用流程实例ID查询
//                      .executionId(executionId)//使用执行对象ID查询
                /**排序*/
                .orderByTaskCreateTime().asc()//使用创建时间的升序排列
                /**返回结果集*/
//                      .singleResult()//返回惟一结果集
//                      .count()//返回结果集的数量
//                      .listPage(firstResult, maxResults);//分页查询
                .list();//返回列表

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("taskList", list);
        modelAndView.setViewName("list_user_task");

        return modelAndView;
        //System.out.println(JSON.toJSONString(list));
    }

    @PostMapping("user/complete.do")
    public ModelAndView completeUserTask(String taskId, String userName){
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("审批", "同意");

        processEngine.getTaskService().complete(taskId, map);

        return new ModelAndView("redirect:list.do?assignee="+userName);
    }

    @GetMapping("user/history.do")
    public ModelAndView listHistoryTaskByUserId(String userId){
// 按照每一个task查询
        List<HistoricProcessInstance> list =
                processEngine.getHistoryService()
                .createHistoricProcessInstanceQuery()
                .finished().list();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("historyTaskList", list);
        modelAndView.setViewName("list_user_history_instance");
        return modelAndView;
    }
}
