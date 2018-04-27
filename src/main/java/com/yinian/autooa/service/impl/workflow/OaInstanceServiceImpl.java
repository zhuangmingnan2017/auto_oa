package com.yinian.autooa.service.impl.workflow;

import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.BaseService;
import com.yinian.autooa.service.workflow.OaFormService;
import com.yinian.autooa.service.workflow.OaInstanceService;
import org.activiti.engine.FormService;
import org.activiti.engine.IdentityService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.form.FormProperty;
import org.activiti.engine.form.StartFormData;
import org.activiti.engine.runtime.ProcessInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
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
}
