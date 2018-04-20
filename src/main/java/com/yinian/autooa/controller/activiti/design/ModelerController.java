package com.yinian.autooa.controller.activiti.design;

import com.yinian.autooa.util.web.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;

/**
 * created by yinian on 18-4-7.
 */
@Controller
@RequestMapping("/ac/modeler/")
public class ModelerController extends AcBaseController {

    @GetMapping("go_model_init.do")
    public ModelAndView goModelInit(){
        return new ModelAndView("/activiti/design/create_model_init");
    }

    @GetMapping("editor.do")
    public ModelAndView goEditor() throws UnsupportedEncodingException {

        ModelAndView modelAndView = new ModelAndView();
        PageData pageData = this.getPageData();

        String process_author = pageData.getString("process_author");	//流程作者
        String name  = pageData.getString("name");					//流程名称
        String process_id  = pageData.getString("process_id");		//流程标识
        String model_name  = pageData.getString("model_name");			//模型名称
        String description  = pageData.getString("description");		//模型描述
        String category  = pageData.getString("category");			//模型分类

        String modelId = createModel(process_id,process_author,name,model_name,description,category);

        modelAndView.setViewName("/activiti/design/editor");
        modelAndView.addObject("modelId",modelId);

        return modelAndView;
    }

}
