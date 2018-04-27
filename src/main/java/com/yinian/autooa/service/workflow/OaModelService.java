package com.yinian.autooa.service.workflow;

import org.activiti.engine.repository.Model;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * 模型逻辑服务
 * created by yinian on 18-4-27.
 */
public interface OaModelService {
    
    Logger logger = LoggerFactory.getLogger(OaModelService.class);

    /**
     * 列举所有的模型
     * @return
     */
    List<Model> listAllModel();

    /**
     * 删除模型
     * @param modelId
     */
    void delModelByModelId(String modelId);

    /**
     * 部署模型
     * @param modelId
     */
    void deployModelByModelId(String modelId) throws IOException;

    /**
     * 导出模型的xml定义
     * @param modelId
     * @param response
     */
    void exportModelXmlByModelId(String modelId, HttpServletResponse response) throws Exception;

    /**
     * 流程设计器初始化模型信息
     * @param process_id
     * @param process_author
     * @param name
     * @param model_name
     * @param description
     * @param category
     * @return
     * @throws UnsupportedEncodingException
     */
    String createModel(String process_id, String process_author, String name, String model_name, String description, String category) throws UnsupportedEncodingException;

    /**
     * 导出流程模型图片
     * @param modelId
     * @param response
     */
    void exportModelPicByModelId(String modelId, HttpServletResponse response) throws IOException;
}
