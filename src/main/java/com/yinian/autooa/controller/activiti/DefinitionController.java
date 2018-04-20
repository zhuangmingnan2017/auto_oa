package com.yinian.autooa.controller.activiti;

import com.yinian.autooa.controller.BaseController;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.ProcessDefinition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * created by yinian on 18-4-5.
 */
@Controller
@RequestMapping("/ac/definition/")
public class DefinitionController extends BaseController {

    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private FormMapper formMapper;

    @GetMapping("list.do")
    public ModelAndView listAllDefinition(){
        ModelAndView modelAndView = new ModelAndView();

        List<ProcessDefinition> definitionList
                = repositoryService.createProcessDefinitionQuery()
                .orderByProcessDefinitionId().desc().list();

        List<Form> formList = formMapper.selectByExample(new FormExample());

        modelAndView.addObject("list", definitionList);
        modelAndView.addObject("formList", formList);
        modelAndView.setViewName("/activiti/definition/list_definition");

        return modelAndView;
    }

    @GetMapping("go_list_invoke_process.do")
    public ModelAndView goListInvokeProcess(){
        ModelAndView modelAndView = new ModelAndView();

        List<ProcessDefinition> definitionList
                = repositoryService.createProcessDefinitionQuery()
                .orderByProcessDefinitionVersion().desc().list();

        List<Form> formList = formMapper.selectByExample(new FormExample());

        modelAndView.addObject("list", definitionList);
        modelAndView.addObject("formList", formList);
        modelAndView.setViewName("/activiti/definition/list_invoke_process");

        return modelAndView;
    }

}
