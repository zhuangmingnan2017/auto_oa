package com.yinian.autooa.service.impl.workflow;

import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.BaseService;
import com.yinian.autooa.service.workflow.OaFormService;
import com.yinian.autooa.service.workflow.OaInstanceService;
import com.yinian.autooa.vo.input.workflow.ListJoinProcessInputVO;
import com.yinian.autooa.vo.output.workflow.ListJoinProcessOutputVO;
import org.activiti.engine.*;
import org.activiti.engine.form.FormProperty;
import org.activiti.engine.form.StartFormData;
import org.activiti.engine.impl.persistence.entity.ExecutionEntity;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.Execution;
import org.activiti.engine.runtime.NativeExecutionQuery;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 流程实例服务接口实现
 * created by yinian on 18-4-27.
 */
@Service
public class OaInstanceServiceImpl extends BaseService implements OaInstanceService {

    @Autowired
    private OaFormService oaFormService;
    @Autowired
    private FormService formService;
    @Autowired
    private IdentityService identityService;
    @Autowired
    private RuntimeService runtimeService;
    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private TaskService taskService;

    @Override
    public void startWithFormValue(String definitionId, Map<String, String> map, SysUser user) {
        StartFormData formData = oaFormService.getStartFormDataByDefinitionId(definitionId);
        Map<String, String> formMap = new HashMap<String, String>(formData.getFormProperties().size());

        for(FormProperty property : formData.getFormProperties()){
            // 排除不可写的表单
            if(!property.isWritable()){
                continue;
            }

            String value = map.get(property.getId());
/*            if("date".equals(property.getType().getName())){

            }*/

            formMap.put(property.getId(), value);
        }

        identityService.setAuthenticatedUserId(user.getAccount());
        ProcessInstance processInstance = formService.submitStartFormData(definitionId, formMap);

        if(processInstance == null){
            throw new RuntimeException("启动流程失败");
        }
    }

    @Override
    public ListJoinProcessOutputVO listJoinProcessInstanceByAccount(ListJoinProcessInputVO inputVO) {
        NativeExecutionQuery nativeExecutionQuery = runtimeService.createNativeExecutionQuery();

        /*
         * 查询当前运行实例中有哪些是用户参与过的，如果一个实例当前存在多个并行任务，则显示多个，所以是left join
         */
        String sql = " select RES.* from ACT_RU_EXECUTION RES left join ACT_HI_TASKINST ART on " +
                " ART.PROC_INST_ID_ = RES.PROC_INST_ID_ " +
                " where ART.ASSIGNEE_ = #{userAccount} and ACT_ID_ is not null " +
                " and IS_ACTIVE_ = '1' order by START_TIME_ desc ";

        int firstResultStart = (inputVO.getCurrPage()-1)*inputVO.getPageSize();
        List<Execution> executionList = nativeExecutionQuery.sql(sql)
                .parameter("userAccount", inputVO.getUserAccount())
                .listPage(firstResultStart, inputVO.getPageSize());

        Map<String, ProcessDefinition> definitionMap = new HashMap<String, ProcessDefinition>();
        Map<String, Task> taskMap = new HashMap<String, Task>();
        Map<String, List<String>> currentActivityMap = new HashMap<String, List<String>>();
        List<ExecutionEntity> entityList = new ArrayList<ExecutionEntity>();

        for(Execution execution : executionList){
            ExecutionEntity executionEntity = (ExecutionEntity)execution;
            String instanceId = executionEntity.getProcessInstanceId();
            String definitionId = executionEntity.getProcessDefinitionId();

            // 缓存流程定义，方便查询
            definitionCache(definitionMap, definitionId);

            // 一个执行流程可能有多个任务在并行执行
            List<String> activeActivityIdList = runtimeService.getActiveActivityIds(execution.getId());
            currentActivityMap.put(execution.getId(), activeActivityIdList);

            for(String activityId : activeActivityIdList){
                Task task = taskService.createTaskQuery()
                        .taskDefinitionKey(activityId).executionId(execution.getId()).singleResult();

                // 如果是调用活动，则当前活动任务id指向的是另一个流程实例，在task中表现为null
                if(task == null){
                    ProcessInstance processInstance = runtimeService.createProcessInstanceQuery()
                            .superProcessInstanceId(instanceId).singleResult();
                    task = taskService.createTaskQuery()
                            .processInstanceId(processInstance.getProcessInstanceId()).singleResult();
                    definitionCache(definitionMap, processInstance.getProcessDefinitionId());
                }

                taskMap.put(activityId, task);
            }

            entityList.add(executionEntity);
        }

        ListJoinProcessOutputVO outputVO = new ListJoinProcessOutputVO();

        outputVO.setDefinitionMap(definitionMap);
        outputVO.setTaskMap(taskMap);
        outputVO.setCurrentActivityMap(currentActivityMap);
        outputVO.setExecutionList(entityList);

        outputVO.setCurrPage(inputVO.getCurrPage());
        outputVO.setCurrPage(inputVO.getPageSize());

        return outputVO;
    }

    private void definitionCache(Map<String, ProcessDefinition> definitionMap, String definitionId) {
        if(definitionMap.containsKey(definitionId)){
            return;
        }

        ProcessDefinition definition
                = repositoryService.createProcessDefinitionQuery()
                    .processDefinitionId(definitionId).singleResult();
        if(definition == null){
            return;
        }

        definitionMap.put(definitionId, definition);
    }
}
