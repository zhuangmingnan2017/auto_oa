package com.yinian.autooa.controller.schedule;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.Schedule;
import com.yinian.autooa.service.schedule.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 日程管理Controller
 * created by yinian on 18-4-23.
 */
@Controller
@RequestMapping("/oa/schedule/")
public class ScheduleController extends BaseController {

    @Autowired
    private ScheduleService scheduleService;

    @GetMapping("list.html")
    public String goSchedulePage(){
        return "schedule/list_schedule";
    }

    @GetMapping("list.do")
    @ResponseBody
    public ApiResponse listScheduleByUserIdAndDeptId(Integer userId, Integer departId, String statusStr){

        List<String> statusList = null;
        if(statusStr != null && statusStr.length() > 0){
            statusList = Arrays.asList(statusStr.split(","));
        }

        Map<String, List<Schedule>> scheduleMap = new HashMap<String, List<Schedule>>(2);
        scheduleMap.put("my", scheduleService.listScheduleByUserId(userId, statusList));
        scheduleMap.put("dept", scheduleService.listScheduleByDepartId(departId, statusList));
        return ApiResponse.getDefaultResponse().setData(scheduleMap);
    }

    @PostMapping("add.do")
    @ResponseBody
    public ApiResponse addNewSchedule(@RequestBody Schedule schedule){
        scheduleService.addNewSchedule(schedule);
        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("finish.do")
    @ResponseBody
    public ApiResponse finishSchedule(Integer scheduleId){
        scheduleService.finishScheduleByScheduleId(scheduleId);
        return ApiResponse.getDefaultResponse();
    }

    @GetMapping("detail.do")
    @ResponseBody
    public ApiResponse getScheduleDetailById(Integer scheduleId){
        return ApiResponse.getDefaultResponse().setData(scheduleService.getScheduleDetailByScheduleId(scheduleId));
    }
}
