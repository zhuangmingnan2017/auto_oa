package com.yinian.autooa.controller.activiti;

import com.yinian.autooa.constant.SessionConst;
import com.yinian.autooa.controller.BaseController;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.TaskService;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * created by yinian on 18-4-5.
 */
@Controller
@RequestMapping("/ac/task/")
public class TaskController extends BaseController {

    @Autowired
    private TaskService taskService;
    @Autowired
    private RepositoryService repositoryService;

    @GetMapping("listByUserId.do")
    public ModelAndView listUserTaskByUserId(String username){
        ModelAndView modelAndView = new ModelAndView();

        List<Task> taskList = taskService.createTaskQuery().taskAssignee(username).list();

        Map<String, Object> map = new HashMap<String, Object>();
        for(Task task : taskList){
            map.put(task.getId(),taskService.getVariable(task.getId(), "content"));
        }

        modelAndView.addObject("list", taskList);
        modelAndView.addObject("map", map);
        modelAndView.setViewName("activiti/task/list_task");

        return modelAndView;
    }

    @PostMapping("complete.do")
    public ModelAndView completeTask(String taskId, HttpSession session){
        String account = (String) session.getAttribute(SessionConst.ACCOUNT.name());

        taskService.complete(taskId);

        return new ModelAndView("activiti/instance/list_instance");
    }
}
