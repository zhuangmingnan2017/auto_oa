package com.yinian.autooa.service.impl.workflow;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.yinian.autooa.service.BaseService;
import com.yinian.autooa.service.workflow.OaModelService;
import org.activiti.bpmn.converter.BpmnXMLConverter;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.editor.language.json.converter.BpmnJsonConverter;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.DeploymentBuilder;
import org.activiti.engine.repository.Model;
import org.activiti.image.ProcessDiagramGenerator;
import org.activiti.image.impl.DefaultProcessDiagramGenerator;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;

/**
 * created by yinian on 18-4-27.
 */
@Service
public class OaModelServiceImpl extends BaseService implements OaModelService {

    @Autowired
    private RepositoryService repositoryService;

    /**
     * 列举所有的模型
     *
     * @return
     */
    @Override
    public List<Model> listAllModel() {

        return repositoryService.createModelQuery()
                .orderByLastUpdateTime().desc() .list();
    }

    @Override
    public void delModelByModelId(String modelId) {
        repositoryService.deleteModel(modelId);
    }

    /**
     * 部署模型
     *
     * @param modelId
     */
    @Override
    public void deployModelByModelId(String modelId) throws IOException {
        Model modelData = repositoryService.getModel(modelId);
        ObjectNode modelNode = (ObjectNode) new ObjectMapper().readTree(repositoryService.getModelEditorSource(modelData.getId()));
        byte[] bpmnBytes = null;

        BpmnJsonConverter BpmnJsonConverter = new BpmnJsonConverter();
        BpmnModel model = BpmnJsonConverter.convertToBpmnModel(modelNode);
        bpmnBytes = new BpmnXMLConverter().convertToXML(model);
        String processName = modelData.getName() + ".bpmn20.xml";

        DeploymentBuilder deploymentBuilder = repositoryService.createDeployment().name(modelData.getName());		//部署名称
        deploymentBuilder.addString(processName, new String(bpmnBytes,"utf-8")).deploy();	//完成部署
    }

    /**
     * 导出模型的xml定义
     *
     * @param modelId
     * @param response
     */
    @Override
    public void exportModelXmlByModelId(String modelId, HttpServletResponse response) throws Exception{
        Model modelData = repositoryService.getModel(modelId);
        BpmnJsonConverter jsonConverter = new BpmnJsonConverter();
        ObjectNode modelNode = null;

        modelNode = (ObjectNode) new ObjectMapper().readTree(repositoryService.getModelEditorSource(modelData.getId()));
        BpmnModel bpmnModel = jsonConverter.convertToBpmnModel(modelNode);
        BpmnXMLConverter xmlConverter = new BpmnXMLConverter();
        byte[] bpmnBytes = xmlConverter.convertToXML(bpmnModel);

        ByteArrayInputStream in = new ByteArrayInputStream(bpmnBytes);
        IOUtils.copy(in, response.getOutputStream());

        String filename = bpmnModel.getMainProcess().getId() + ".bpmn20.xml";
        response.setHeader("Content-Disposition", "attachment; filename=" + filename);
        response.flushBuffer();
        in.close();
    }

    @Override
    public String createModel(String process_id, String process_author, String name, String model_name, String description, String category) throws UnsupportedEncodingException {
        ObjectMapper objectMapper = new ObjectMapper();
        ObjectNode editorNode = objectMapper.createObjectNode();
        editorNode.put("id", "canvs");
        editorNode.put("resourceId", "canvs");
        ObjectNode stencilSetNode = objectMapper.createObjectNode();
        stencilSetNode.put("namespace", "http://b3mn.org/stencilset/bpmn2.0#");		//命名空间(禁止修改)
        stencilSetNode.put("author", "");											//流程节点作者
        editorNode.set("stencilset", stencilSetNode);
        ObjectNode propertiesNode = objectMapper.createObjectNode();
        propertiesNode.put("process_id",process_id);		 						//流程唯一标识
        propertiesNode.put("process_author",process_author);						//流程作者
        propertiesNode.put("name",name);	 			 							//流程名称
        editorNode.set("properties", propertiesNode);

        ObjectNode modelObjectNode = objectMapper.createObjectNode();
        modelObjectNode.put("name", model_name);					//模型名称
        modelObjectNode.put("revision", 1);						//模型版本
        modelObjectNode.put("description", description);		//模型描述
        Model modelData = repositoryService.newModel();
        modelData.setCategory(category);						//模型分类
        modelData.setDeploymentId(null);
        modelData.setKey(null);
        modelData.setMetaInfo(modelObjectNode.toString());
        modelData.setName(model_name);							//模型名称
        modelData.setTenantId("");
        modelData.setVersion(1);

        repositoryService.saveModel(modelData);					//保存模型,存储数据到表：act_re_model 流程设计模型部署表
        repositoryService.addModelEditorSource(modelData.getId(), editorNode.toString().getBytes("utf-8"));//保存资源,存储数据到表：act_ge_bytearray 二进制数据表

        return modelData.getId();
    }

    @Override
    public void exportModelPicByModelId(String modelId, HttpServletResponse response) throws IOException {
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
}
