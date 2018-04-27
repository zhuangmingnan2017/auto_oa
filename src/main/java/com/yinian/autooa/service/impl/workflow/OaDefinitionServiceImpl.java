package com.yinian.autooa.service.impl.workflow;

import com.yinian.autooa.service.BaseService;
import com.yinian.autooa.service.workflow.OaDefinitionService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.ProcessDefinition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 流程定义服务接口
 * created by yinian on 18-4-27.
 */
@Service
public class OaDefinitionServiceImpl extends BaseService implements OaDefinitionService {

    @Autowired
    private RepositoryService repositoryService;

    @Override
    public List<ProcessDefinition> listAllDefinition() {
        return repositoryService.createProcessDefinitionQuery()
                .orderByDeploymentId().desc()
                .list();
    }

    @Override
    public void delByDeploymentId(String deploymentId, boolean isCascade) {
        ProcessDefinition definition = repositoryService.createProcessDefinitionQuery()
                .deploymentId(deploymentId)
                .singleResult();
        if(definition == null){
            logger.info("找不到流程定义");
            return ;
        }

        // 级联删除
        if(isCascade){
            repositoryService.deleteDeployment(deploymentId, true);
            return ;
        }

        try{
            repositoryService.deleteDeployment(deploymentId);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
}
