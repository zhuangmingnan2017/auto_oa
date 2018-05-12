package com.yinian.autooa.controller.workflow;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.service.workflow.OaModelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/**
 * 工作流模型请求控制器
 * created by yinian on 18-4-7.
 */
@Controller
@RequestMapping("/oa/workflow/model/")
public class ModelController extends BaseController {

    @Autowired
    private OaModelService oaModelService;

    @GetMapping("list.html")
    public ModelAndView goModelInit(){
        ModelAndView mv =  new ModelAndView("workflow/list_model");

        mv.addObject("modelList", oaModelService.listAllModel());
        return mv;
    }

    @PostMapping("editor.html")
    public ModelAndView goEditor(HttpServletRequest request) throws UnsupportedEncodingException {

        ModelAndView modelAndView = new ModelAndView();
        Map<String, String> map = getParamMapByRequest(request);

        String process_author = map.get("process_author");	//流程作者
        String name  = map.get("name");					//流程名称
        String process_id  = map.get("process_id");		//流程标识
        String model_name  = map.get("model_name");			//模型名称
        String description  = map.get("description");		//模型描述
        String category  = map.get("category");			//模型分类

        String modelId = oaModelService.createModel(process_id,process_author,name,model_name,description,category);

        modelAndView.setViewName("/activiti/design/editor");
        modelAndView.addObject("modelId",modelId);

        return modelAndView;
    }

    @PostMapping("del.html")
    public ApiResponse delModelById(String modelId){
        oaModelService.delModelByModelId(modelId);
        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("deploy.do")
    @ResponseBody
    public ApiResponse deployModel(String modelId) throws IOException {
        oaModelService.deployModelByModelId(modelId);
        return ApiResponse.getDefaultResponse();
    }

    @GetMapping("xml/export.html")
    public void exportModelXmlByModelId(String modelId, HttpServletResponse response) throws Exception {
        oaModelService.exportModelXmlByModelId(modelId, response);
    }

    @GetMapping("pic/export.html")
    public void exportModelPicByModelId(String modelId, HttpServletResponse response) throws IOException {
        oaModelService.exportModelPicByModelId(modelId, response);
    }

}
