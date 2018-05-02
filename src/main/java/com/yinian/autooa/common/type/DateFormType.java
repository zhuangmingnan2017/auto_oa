package com.yinian.autooa.common.type;

import org.activiti.engine.ActivitiIllegalArgumentException;
import org.activiti.engine.form.AbstractFormType;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.FastDateFormat;

import java.text.Format;
import java.text.ParseException;

/**
 * 自定义格式的日期格式
 * created by yinian on 18-4-28.
 */
public class DateFormType extends AbstractFormType {
    private static final long serialVersionUID = 1L;

    protected String datePattern;
    protected Format dateFormat;

    public DateFormType(String datePattern) {
        this.datePattern = datePattern;
        this.dateFormat = FastDateFormat.getInstance(datePattern);
    }

    @Override
    public Object convertFormValueToModelValue(String propertyValue) {
        if (StringUtils.isEmpty(propertyValue)) {
            return null;
        }
        try {
            return dateFormat.parseObject(propertyValue);
        } catch (ParseException e) {
            throw new ActivitiIllegalArgumentException("invalid date value " + propertyValue);
        }
    }

    @Override
    public String convertModelValueToFormValue(Object modelValue) {
        if (modelValue == null) {
            return null;
        }
        return dateFormat.format(modelValue);
    }

    /**
     * Name for the form type.
     */
    @Override
    public String getName() {
       return "date";
    }
}
