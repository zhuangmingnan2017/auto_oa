package com.yinian.autooa.controller;

import com.yinian.autooa.vo.output.ProcessDefinitionOutputVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * created by yinian on 18-4-4.
 */
@Controller
@RequestMapping("/autooa/process/")
public class ProcessController {

    @GetMapping("definition/list.do")
    public ModelAndView listDefinition(){
       // List<ProcessDefinitionOutputVO> definitionList = definitionService.listAllDefinitionService();

        ModelAndView modelAndView = new ModelAndView();
        //modelAndView.addObject("process", definitionList);
        modelAndView.setViewName("list_process_definition");
        return modelAndView;
    }

    @GetMapping("instance/start.do")
    public String startInstance(String processId, String userId){
        //definitionService.startProcessInstance(processId, userId);

        return "redirect:/autooa/usertask/user/list.do?assignee=zmn";
    }
}
