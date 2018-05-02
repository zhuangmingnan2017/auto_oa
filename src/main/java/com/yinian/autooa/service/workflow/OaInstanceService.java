package com.yinian.autooa.service.workflow;

import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.vo.input.workflow.ListJoinProcessInputVO;
import com.yinian.autooa.vo.output.workflow.ListJoinProcessOutputVO;

import java.util.Map;

/**
 * 流程实例服务逻辑
 * created by yinian on 18-4-27.
 */
public interface OaInstanceService {
    /**
     * 携带表单内容发起流程
     * @param definitionId
     * @param map
     * @param user
     */
    void startWithFormValue(String definitionId, Map<String, String> map, SysUser user);

    /**
     * 通过帐号获取用户的参与过的流程（处于运行状态的流程）
     * @param inputVO
     * @return
     */
    ListJoinProcessOutputVO listJoinProcessInstanceByAccount(ListJoinProcessInputVO inputVO);
}
