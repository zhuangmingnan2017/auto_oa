package com.yinian.autooa.service.schedule;

import com.yinian.autooa.model.Schedule;

import java.util.List;

/**
 * 日程安排服务接口
 * created by yinian on 18-4-23.
 */
public interface ScheduleService{


    /**
     * 新增日程
     * @param schedule
     */
    void addNewSchedule(Schedule schedule);

    /**
     * 根据userid列举日程
     * @param userId
     * @param statusList
     * @return
     */
    List<Schedule> listScheduleByUserId(Integer userId, List<String> statusList);

    /**
     * 根据部门id列举日程
     * @param departId
     * @param statusList
     * @return
     */
    List<Schedule> listScheduleByDepartId(Integer departId, List<String> statusList);

    /**
     * 取消日程
     * @param scheduleId
     */
    void finishScheduleByScheduleId(Integer scheduleId);

    /**
     * 获取日程详情
     * @param scheduleId
     * @return
     */
    Schedule getScheduleDetailByScheduleId(Integer scheduleId);
}
