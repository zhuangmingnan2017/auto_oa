package com.yinian.autooa.service.impl.workflow;

import com.yinian.autooa.service.BaseService;
import com.yinian.autooa.service.workflow.OaHistoryService;
import org.activiti.engine.HistoryService;
import org.activiti.engine.history.HistoricProcessInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 工作流历史流程 服务实现
 * created by yinian on 18-5-2.
 */
@Service
public class OaHistoryServiceImpl extends BaseService implements OaHistoryService {
    @Autowired
    private HistoryService historyService;

    @Override
    public List<HistoricProcessInstance> listHistoricInstanceByUserAccount(String account) {
        return historyService.createHistoricProcessInstanceQuery().startedBy(account).list();
    }
}
