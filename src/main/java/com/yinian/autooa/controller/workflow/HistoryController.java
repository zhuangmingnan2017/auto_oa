package com.yinian.autooa.controller.workflow;

import com.yinian.autooa.constant.PagePathConst;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.workflow.OaHistoryService;
import org.activiti.engine.HistoryService;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.history.HistoricVariableInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 历史流程前端控制器
 * created by yinian on 18-5-2.
 */
@Controller
@RequestMapping("/oa/workflow/history/")
public class HistoryController extends BaseController {

    @Autowired
    private OaHistoryService oaHistoryService;

    @Autowired
    private HistoryService historyService;

    @GetMapping("list.html")
    public ModelAndView listHistoryProcessInstance(HttpSession session){
        ModelAndView mv = new ModelAndView(PagePathConst.workflow.HISTORY_INSTANCE_LIST);

        SysUser user = getSessionUser(session);
        List<HistoricProcessInstance> historicProcessInstanceList
                = oaHistoryService.listHistoricInstanceByUserAccount(user.getAccount());

        mv.addObject("historicInstanceList", historicProcessInstanceList);
        return mv;
    }

    @GetMapping("detail.html")
    public ModelAndView getHistoricInstance(String instanceId){
        ModelAndView mv = new ModelAndView(PagePathConst.workflow.HISTORY_INSTANCE_DETAIL);

        HistoricProcessInstance instance
                = historyService.createHistoricProcessInstanceQuery()
                .processInstanceId(instanceId).singleResult();

        List<HistoricActivityInstance> activityInstances
                = historyService.createHistoricActivityInstanceQuery()
                .processInstanceId(instanceId).list();

        List<HistoricVariableInstance> variableInstances
                = historyService.createHistoricVariableInstanceQuery()
                .processInstanceId(instanceId).list();

        mv.addObject("instance", instance);
        mv.addObject("activityInstances", activityInstances);
        mv.addObject("variableInstances", variableInstances);
        return mv;
    }
}
