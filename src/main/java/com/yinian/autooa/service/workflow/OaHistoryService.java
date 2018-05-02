package com.yinian.autooa.service.workflow;

import org.activiti.engine.history.HistoricProcessInstance;

import java.util.List;

/**
 * 工作流历史流程
 * created by yinian on 18-5-2.
 */
public interface OaHistoryService {
    List<HistoricProcessInstance> listHistoricInstanceByUserAccount(String account);
}
