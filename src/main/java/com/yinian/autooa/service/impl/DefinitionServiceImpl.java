package com.yinian.autooa.service.impl;

import com.yinian.autooa.vo.output.ProcessDefinitionOutputVO;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * created by yinian on 18-4-4.
 */
@Service("definitionService")
public class DefinitionServiceImpl implements DefinitionService {

    private RepositoryService repositoryService;
    private ProcessEngine processEngine;

    @Autowired
    public DefinitionServiceImpl(RepositoryService repositoryService, ProcessEngine processEngine) {
        this.repositoryService = repositoryService;
        this.processEngine = processEngine;
    }

    @Override
    public List<ProcessDefinitionOutputVO> listAllDefinitionService() {

        List<ProcessDefinition> definitionList
                = processEngine.getRepositoryService().createProcessDefinitionQuery().list();

        List<ProcessDefinitionOutputVO> outputVOList = new ArrayList<ProcessDefinitionOutputVO>(definitionList.size());
        for(ProcessDefinition definition : definitionList){
            ProcessDefinitionOutputVO outputVO = tranDefinition(definition);
            outputVOList.add(outputVO);
        }

        return outputVOList;
    }

    @Override
    public void startProcessInstance(String deploymentId, String userId) {
        ProcessInstance pi = processEngine.getRuntimeService()
                .startProcessInstanceByKey(deploymentId);
        System.out.println("流程实例id：" + pi.getId());  //流程实例id  101
        System.out.println("流程定义id：" + pi.getProcessDefinitionId());   //流程定义ID helloworld:1:4
    }

    private ProcessDefinitionOutputVO tranDefinition(ProcessDefinition definition){
        ProcessDefinitionOutputVO outputVO = new ProcessDefinitionOutputVO();

        outputVO.setId(definition.getId());
        outputVO.setCategory(definition.getCategory());
        outputVO.setName(definition.getName());
        outputVO.setKey(definition.getKey());
        outputVO.setDescription(definition.getDescription());
        outputVO.setVersion(definition.getVersion());
        outputVO.setResourceName(definition.getResourceName());
        outputVO.setDeploymentId(definition.getDeploymentId());
        outputVO.setDiagramResourceName(definition.getDiagramResourceName());
        outputVO.setHasStartFormKey(definition.hasStartFormKey());
        outputVO.setSuspended(definition.isSuspended());
        outputVO.setTenantId(definition.getTenantId());

        return outputVO;
    }
}
