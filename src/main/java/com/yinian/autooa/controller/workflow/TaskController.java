package com.yinian.autooa.controller.workflow;

import com.yinian.autooa.constant.PagePathConst;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.workflow.OaInstanceService;
import com.yinian.autooa.service.workflow.OaTaskService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * 流程任务 前端控制器
 * created by yinian on 18-4-27.
 */
@Api("流程任务")
@Controller
@RequestMapping("/oa/workflow/task/")
public class TaskController extends BaseController {

    @Autowired
    private OaTaskService oaTaskService;

    @GetMapping("list.html")
    public ModelAndView listMyTask(HttpSession session){
        ModelAndView mv = new ModelAndView("workflow/list_task");
        SysUser user = getSessionUser(session);

        mv.addObject("taskList", oaTaskService.listAllTaskByUser(user));
        return mv;
    }

    @PostMapping("{taskId}/complete.html")
    public String completeTask(@PathVariable("taskId") String taskId, HttpServletRequest request){
        Map<String, String> map  = getParamMapByRequest(request);

        oaTaskService.completeTask(taskId, map);
        return "redirect:list.html";
    }

    @PostMapping("{taskId}/claim.html")
    public String claimTask(@PathVariable("taskId") String taskId, HttpSession session){
        SysUser user = getSessionUser(session);

        oaTaskService.claimTask(taskId, user);
        return "redirect:list.html";
    }
}
