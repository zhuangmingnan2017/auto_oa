package com.yinian.autooa.service.workflow;

import org.activiti.engine.form.FormData;
import org.activiti.engine.form.StartFormData;
import org.activiti.engine.form.TaskFormData;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Map;

/**
 * 流程表单服务逻辑
 * created by yinian on 18-4-27.
 */
public interface OaFormService {

    Logger logger = LoggerFactory.getLogger(OaFormService.class);
    /**
     * 获取流程定义启动表单
     * @param definitionId
     * @return
     */
    StartFormData getStartFormDataByDefinitionId(String definitionId);

    /**
     * 获取流程节点的表单信息
     * @param taskId
     * @return
     */
    TaskFormData getTaskFormDataByTaskId(String taskId);

    /**
     * 获取表单的相关源信息（datePattern, enumValues)
     * @param formData
     * @return
     */
    Map<String, Object> getFormTypeMetaDataMap(FormData formData);
}
