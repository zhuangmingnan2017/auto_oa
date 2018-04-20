package com.yinian.autooa.controller.activiti;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SimplePropertyPreFilter;
import com.yinian.autooa.controller.BaseController;
import org.activiti.engine.FormService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.form.StartFormData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * created by yinian on 18-4-5.
 */
@Controller
@RequestMapping("/ac/form/")
public class FormController extends BaseController {

    @Autowired
    private FormService formService;

    @Autowired
    private RepositoryService repositoryService;

    @GetMapping("start/get.do")
    @ResponseBody
    public String getStartFormJsonByDefinitionId(String definitionId){
        StartFormData startFormData = formService.getStartFormData(definitionId);

        SimplePropertyPreFilter filter = new SimplePropertyPreFilter();
        filter.getExcludes().add("processDefinition");

        return JSON.toJSONString(startFormData, filter);
    }


    /*@PostMapping("add.do")
    public ModelAndView uploadForm(Form form){

        formMapper.insertSelective(form);

        return new ModelAndView("redirect:list.do");
    }*/

   /* @GetMapping("list.do")
    public ModelAndView listForm(){

        ModelAndView modelAndView = new ModelAndView();
        List<Form> formList = formMapper.selectByExampleWithBLOBs(new FormExample());

        modelAndView.addObject("list", formList);
        modelAndView.setViewName("/activiti/form/list_form");

        return modelAndView;
    }*/

    @GetMapping("go_add_new_form.do")
    public ModelAndView goAddNewForm(){
        return new ModelAndView("/activiti/form/add_new_form");
    }

   /* @PostMapping("del.do")
    @ResponseBody
    public ApiResponse delFormById(Integer formId){

        boolean result =  formMapper.deleteByPrimaryKey(formId) > 0;

        if(result){
            return ApiResponse.getDefaultResponse();
        }
        else {
            return ApiResponse.getResponse(XMsg.FAIL);
        }
    }*/

    /*@PostMapping("edit.do")
    public ModelAndView editFormByFormId(Integer formId){
        ModelAndView mv = new ModelAndView();

        Form form = formMapper.selectByPrimaryKey(formId);
        if(form == null){
          mv.addObject(MessConst.ERR_MSG.name(), "表单不存在，请重试!");
          mv.setViewName("/activiti/form/list_form");
          return mv;
        }

        mv.addObject("form", form);
        mv.setViewName("/activiti/form/add_new_form");
        return mv;
    }*/

    /*@GetMapping("{definitionId}/startform.do")
    @ResponseBody
    public ApiResponse getStartFormByDefinitionId(@PathVariable("definitionId") String definitionId){
        String key = formService.getStartFormKey(definitionId);

        if(key == null){
            return ApiResponse.getDefaultResponse();
        }

        FormExample example = new FormExample();
        example.createCriteria().andForm_keyEqualTo(key);
        List<Form> formList = formMapper.selectByExampleWithBLOBs(example);

        if(formList.size() <= 0){
            return ApiResponse.getDefaultResponse();
        }

        return ApiResponse.getDefaultResponse().setData(formList.get(0));
    }*/
}
