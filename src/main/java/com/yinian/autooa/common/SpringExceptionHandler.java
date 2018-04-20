package com.yinian.autooa.common;

import com.yinian.autooa.constant.MessConst;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

/**
 * created by yinian on 18-4-5.
 */
@ControllerAdvice
public class SpringExceptionHandler {

    private static final Logger logger = LoggerFactory.getLogger(SpringExceptionHandler.class);
    /**
     * 全局处理Exception
     * 错误的情况下返回500
     * @param ex
     * @param req
     * @return
     */
    @ExceptionHandler(value = {Exception.class})
    public ModelAndView handleOtherExceptions(final Exception ex, final WebRequest req) {
        logger.error("捕获全局异常", ex);

        return new ModelAndView("error/500").addObject(MessConst.ERR_MSG.name(), ex.getMessage());
    }
}
