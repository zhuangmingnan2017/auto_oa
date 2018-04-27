package com.yinian.autooa.service.impl.workflow;

import com.yinian.autooa.service.BaseService;
import com.yinian.autooa.service.workflow.OaFormService;
import org.activiti.engine.FormService;
import org.activiti.engine.form.FormData;
import org.activiti.engine.form.FormProperty;
import org.activiti.engine.form.StartFormData;
import org.activiti.engine.form.TaskFormData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * 表单逻辑处理
 * created by yinian on 18-4-27.
 */
@Service
public class OaFormServiceImpl extends BaseService implements OaFormService {

    @Autowired
    private FormService formService;

    /**
     * 获取流程定义启动表单
     *
     * @param definitionId
     * @return
     */
    @Override
    public StartFormData getStartFormDataByDefinitionId(String definitionId) {
        return formService.getStartFormData(definitionId);
    }

    @Override
    public TaskFormData getTaskFormDataByTaskId(String taskId) {
        return formService.getTaskFormData(taskId);
    }

    @Override
    public Map<String, Object> getFormTypeMetaDataMap(FormData formData) {
        if(formData == null || formData.getFormProperties() == null){
            return null;
        }
        Map<String, Object> map = new HashMap<String, Object>(formData.getFormProperties().size());

        for (FormProperty formProperty : formData.getFormProperties()) {
            if("enum".equals(formProperty.getType().getName())){
                Map<String, String> values;
                values = (Map<String, String>) formProperty.getType().getInformation("values");
                if (values != null) {
                    for (Map.Entry<String, String> enumEntry : values.entrySet())
                        logger.debug("enum, key: {}, value: {}", enumEntry.getKey(), enumEntry.getValue());
                    map.put("enum_" + formProperty.getId(), values);
                }

            }else if("date".equals(formProperty.getType().getName())){
                map.put("pattern_"+formProperty.getId(), (String)formProperty.getType().getInformation("datePattern"));
                logger.debug("date,key:{},pattern:{}",formProperty.getId(),formProperty.getType().getInformation("datePattern"));
            }

        }
        return map;
    }
}
