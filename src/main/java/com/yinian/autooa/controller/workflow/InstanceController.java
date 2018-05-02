package com.yinian.autooa.controller.workflow;

import com.yinian.autooa.constant.PagePathConst;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.workflow.OaInstanceService;
import com.yinian.autooa.vo.input.common.BaseInputVO;
import com.yinian.autooa.vo.input.workflow.ListJoinProcessInputVO;
import com.yinian.autooa.vo.output.workflow.ListJoinProcessOutputVO;
import io.swagger.models.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
    public String startInstance(String bid, HttpServletRequest request, HttpSession session){
        SysUser user = (SysUser)session.getAttribute("user");
        if(user == null){
            return "/login.html";
        }

        Map<String, String> map = getParamMapByRequest(request);
        oaInstanceService.startWithFormValue(bid, map, user);

        return "redirect:/oa/workflow/task/list.html";
    }

    @GetMapping("join/list.html")
    public ModelAndView listJoinProcessInstance(HttpSession session, ListJoinProcessInputVO inputVO){
        ModelAndView mv = new ModelAndView(PagePathConst.workflow.JOIN_INSTANCE_LIST);

        SysUser user = getSessionUser(session);
        inputVO.setUserAccount(user.getAccount());
        ListJoinProcessOutputVO outputVO = oaInstanceService.listJoinProcessInstanceByAccount(inputVO);

        mv.addObject("outputVO",outputVO);
        return mv;
    }
}
