package com.yinian.autooa.service.workflow;

import com.yinian.autooa.model.SysUser;

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
}
