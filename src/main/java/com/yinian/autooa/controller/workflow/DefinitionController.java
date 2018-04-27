package com.yinian.autooa.controller.workflow;

import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.service.workflow.OaDefinitionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 工作流 定义 请求控制器
 * created by yinian on 18-4-7.
 */
@Controller
@RequestMapping("/oa/workflow/definition/")
public class DefinitionController extends BaseController {

    @Autowired
    private OaDefinitionService oaDefinitionService;

    @GetMapping("list.html")
    public ModelAndView goModelInit(){
        ModelAndView mv =  new ModelAndView("workflow/list_definition");
        mv.addObject("definitionList", oaDefinitionService.listAllDefinition());
        return mv;
    }

    @PostMapping("del.html")
    public String delDefinitionById(String deploymentId, boolean isCascade){
        oaDefinitionService.delByDeploymentId(deploymentId, isCascade);
        return "redirect:list.html";
    }

}
