package com.yinian.autooa.controller.workflow;

import com.yinian.autooa.service.workflow.OaFormService;
import com.yinian.autooa.service.workflow.OaInstanceService;
import org.activiti.engine.form.StartFormData;
import org.activiti.engine.form.TaskFormData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 表单相关接口
 * created by yinian on 18-4-27.
 */
@Controller
@RequestMapping("/oa/workflow/form/")
public class FormController {

    @Autowired
    private OaFormService oaFormService;
    @Autowired
    private OaInstanceService oaInstanceService;

    @GetMapping("definition/{definitionId}/get.html")
    public ModelAndView getDefinitionStartFormById(@PathVariable("definitionId") String definitionId){
        ModelAndView mv = new ModelAndView("workflow/fill_form");

        StartFormData formData = oaFormService.getStartFormDataByDefinitionId(definitionId);
        mv.addObject("formData", formData);
        mv.addObject("typeMetaDataMap", oaFormService.getFormTypeMetaDataMap(formData));
        mv.addObject("definitionId",definitionId);

        return mv;
    }

    @GetMapping("task/{taskId}/get.html")
    public ModelAndView getTaskFormById(@PathVariable("taskId") String taskId){
        ModelAndView mv = new ModelAndView("workflow/fill_form");

        TaskFormData formData = oaFormService.getTaskFormDataByTaskId(taskId);
        mv.addObject("formData", formData);
        mv.addObject("typeMetaDataMap", oaFormService.getFormTypeMetaDataMap(formData));
        mv.addObject("taskId",taskId);

        return mv;
    }


}
