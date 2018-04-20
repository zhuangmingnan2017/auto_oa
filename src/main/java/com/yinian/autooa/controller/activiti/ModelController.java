package com.yinian.autooa.controller.activiti;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.controller.activiti.design.AcBaseController;
import com.yinian.autooa.util.web.PageData;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.editor.language.json.converter.BpmnJsonConverter;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.Model;
import org.activiti.image.ProcessDiagramGenerator;
import org.activiti.image.impl.DefaultProcessDiagramGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;

/**
 * 模型控制器
 * created by yinian on 18-4-5.
 */
@Controller
@RequestMapping("/ac/model/")
public class ModelController extends AcBaseController {

    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private RuntimeService runtimeService;
    @Autowired
    private CategoryService categoryService;

    @GetMapping("list.do")
    public ModelAndView listModel(){
        List<Model> modelList = repositoryService.createModelQuery().orderByLastUpdateTime().desc().list();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("list", modelList);
        modelAndView.addObject("category_list", categoryService.listAll());
        modelAndView.setViewName("activiti/model/list_model");

        return modelAndView;
    }

    @PostMapping("deployment.do")
    @ResponseBody
    public ApiResponse deploymentModel() throws Exception {
        PageData pageData = this.getPageData();
        String modelId = pageData.getString("modelId");

        deploymentProcessDefinitionFromModelId(modelId);

        return ApiResponse.getDefaultResponse();
    }

    @GetMapping("viewXml.do")
    @ResponseBody
    public String viewXml() throws Exception {
        PageData pageData = this.getPageData();

        String modelId = pageData.getString("modelId");

        return viewXmlFromModelId(modelId);
    }

    @GetMapping(value = "viewPic.do")
    public void showModelPicture(HttpServletResponse response , String modelId)throws Exception{
        ModelAndView mv=new ModelAndView();

        Model modelData = repositoryService.getModel(modelId);
        ObjectNode modelNode = null;
        try {
            modelNode = (ObjectNode) new ObjectMapper()
                    .readTree(repositoryService.getModelEditorSource(modelData.getId()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        BpmnModel model = new BpmnJsonConverter().convertToBpmnModel(modelNode);
        ProcessDiagramGenerator processDiagramGenerator = new DefaultProcessDiagramGenerator();
        InputStream inputStream = processDiagramGenerator.generateDiagram(model,
                "png", "WenQuanYi Micro Hei", "WenQuanYi Micro Hei",
                null, null, 10.0);

        OutputStream out = response.getOutputStream();
        for (int b = -1; (b = inputStream.read()) != -1; ) {
            out.write(b);
        }
        out.close();
        inputStream.close();
    }

    @GetMapping("list_deployment.do")
    public ModelAndView listDeployment(){
        List<Deployment> deploymentList = repositoryService.createDeploymentQuery().orderByDeploymenTime().desc().list();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("list", deploymentList);
        modelAndView.addObject("category_list", categoryService.listAll());
        modelAndView.setViewName("activiti/model/list_deployment");

        return modelAndView;
    }

    /*@GetMapping("add")
    public ModelAndView goAddPage(){

        ModelAndView modelAndView =  new ModelAndView("activiti/model/add_deployment");
        modelAndView.addObject("category_list", categoryService.listAll());

        return modelAndView;
    }

    @PostMapping("add.do")
    public ModelAndView addNewModel(MultipartFile file, String category_name) throws FileNotFoundException {
        String newFileName = this.get32UUID();
        String fileName = FileUpload.fileUp(file, FileConst.FILE_UPLOAD_DIR, newFileName);
        String filePath = FileConst.FILE_UPLOAD_DIR+fileName;

        FileInputStream bpmnfileInputStream = new FileInputStream(filePath);
        Deployment deployment = null;
        if(fileName.contains(".zip")){
            //repositoryService.createDeployment()
            ZipInputStream zipInputStream = new ZipInputStream(bpmnfileInputStream);
            deployment  = repositoryService//获取流程定义和部署对象相关的Service
                .createDeployment()//创建部署对象
                .addZipInputStream(zipInputStream)//使用zip方式部署，将helloworld.bpmn和helloworld.png压缩成zip格式的文件
                .name(file.getOriginalFilename())
                .category(category_name)
                .key(newFileName)
                .deploy();//完成部署
        }else{
            deployment = repositoryService//获取流程定义和部署对象相关的Service
                .createDeployment()//创建部署对象
                .addInputStream(fileName,bpmnfileInputStream)
                .name(file.getOriginalFilename())
                .category(category_name)
                .key(newFileName)
                .deploy();//完成部署
        }

        System.out.println("部署ID："+deployment.getId());//1
        System.out.println("部署时间："+deployment.getDeploymentTime());

        return new ModelAndView("redirect:list.do");
    }
*/
    @PostMapping("del.do")
    public ModelAndView delModelDeploy(String modelId){
        repositoryService.deleteModel(modelId);
        return new ModelAndView("redirect:list.do");
    }
}
