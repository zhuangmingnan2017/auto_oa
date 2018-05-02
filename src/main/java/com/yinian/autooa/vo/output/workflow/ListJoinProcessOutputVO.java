package com.yinian.autooa.vo.output.workflow;

import com.yinian.autooa.vo.output.common.BaseOutputVO;
import org.activiti.engine.impl.persistence.entity.ExecutionEntity;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.task.Task;

import java.util.List;
import java.util.Map;

/**
 * 列举参与过的流程输出VO
 * created by yinian on 18-5-2.
 */
public class ListJoinProcessOutputVO extends BaseOutputVO {

    private Map<String, Task> taskMap;

    private Map<String, ProcessDefinition> definitionMap;

    private Map<String, List<String>> currentActivityMap;

    private List<ExecutionEntity> executionList;

    public Map<String, Task> getTaskMap() {
        return taskMap;
    }

    public void setTaskMap(Map<String, Task> taskMap) {
        this.taskMap = taskMap;
    }

    public Map<String, ProcessDefinition> getDefinitionMap() {
        return definitionMap;
    }

    public void setDefinitionMap(Map<String, ProcessDefinition> definitionMap) {
        this.definitionMap = definitionMap;
    }

    public Map<String, List<String>> getCurrentActivityMap() {
        return currentActivityMap;
    }

    public void setCurrentActivityMap(Map<String, List<String>> currentActivityMap) {
        this.currentActivityMap = currentActivityMap;
    }

    public List<ExecutionEntity> getExecutionList() {
        return executionList;
    }

    public void setExecutionList(List<ExecutionEntity> executionList) {
        this.executionList = executionList;
    }
}
