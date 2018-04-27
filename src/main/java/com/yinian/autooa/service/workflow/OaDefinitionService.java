package com.yinian.autooa.service.workflow;

import org.activiti.engine.repository.ProcessDefinition;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * 流程定义管理接口
 * created by yinian on 18-4-27.
 */
public interface OaDefinitionService {

    Logger logger = LoggerFactory.getLogger(OaDefinitionService.class);

    List<ProcessDefinition> listAllDefinition();

    void delByDeploymentId(String deploymentId, boolean isCascade);
}
