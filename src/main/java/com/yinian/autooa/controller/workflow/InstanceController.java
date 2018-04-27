package com.yinian.autooa.controller.workflow;

import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.workflow.OaInstanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * 流程实例 请求控制器
 * created by yinian on 18-4-27.
 */
@Controller
@RequestMapping("/oa/workflow/instance/")
public class InstanceController extends BaseController {

    @Autowired
    private OaInstanceService oaInstanceService;

    @PostMapping("start.html")
    public String startInstance(String definitionId, HttpServletRequest request, HttpSession session){
        SysUser user = (SysUser)session.getAttribute("user");
        if(user == null){
            return "/login.html";
        }

        Map<String, String> map = getParamMapByRequest(request);
        oaInstanceService.startWithFormValue(definitionId, map, user);

        return "redirect:/oa/workflow/task/list.html";
    }
}
