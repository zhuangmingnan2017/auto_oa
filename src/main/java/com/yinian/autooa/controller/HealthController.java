package com.yinian.autooa.controller;

import com.yinian.autooa.common.ApiResponse;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 测试接口
 * Author: hener
 */
@Api(description = "检查服务测试接口")
@Controller
public class HealthController {

    @ApiOperation("检查服务测试接口")
    @RequestMapping(value = "/health.do", method = RequestMethod.GET)
    @ResponseBody
    public ApiResponse health(){
        return ApiResponse.getDefaultResponse().setData("It is autooa running......");

    }

}
