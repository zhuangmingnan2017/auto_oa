package com.yinian.autooa.service.impl.schedule;

import com.yinian.autooa.constant.StatusConst;
import com.yinian.autooa.constant.TypeConst;
import com.yinian.autooa.dao.autocode.ScheduleMapper;
import com.yinian.autooa.model.Schedule;
import com.yinian.autooa.model.ScheduleExample;
import com.yinian.autooa.service.BaseService;
import com.yinian.autooa.service.schedule.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 日程管理服务逻辑
 * created by yinian on 18-4-23.
 */
@Service
public class ScheduleServiceImpl extends BaseService implements ScheduleService {

    @Autowired
    private ScheduleMapper scheduleMapper;
    /**
     * 新增日程
     *
     * @param schedule
     */
    @Override
    public void addNewSchedule(Schedule schedule) {
        schedule.setId(null);
        schedule.setStatus(StatusConst.ScheduleStatus.NORMAL.getStatus());
        scheduleMapper.insertSelective(schedule);
    }

    /**
     * 根据userid列举日程
     *
     * @param userId
     * @param statusList
     * @return
     */
    @Override
    public List<Schedule> listScheduleByUserId(Integer userId, List<String> statusList) {
        return listScheduleByTypeAndBelongId(TypeConst.ScheduleType.MY, userId, statusList);
    }

    /**
     * 根据部门id列举日程
     *
     * @param departId
     * @param statusList
     * @return
     */
    @Override
    public List<Schedule> listScheduleByDepartId(Integer departId, List<String> statusList) {
        return listScheduleByTypeAndBelongId(TypeConst.ScheduleType.DEPART, departId, statusList);
    }

    /**
     * 取消日程
     *
     * @param scheduleId
     */
    @Override
    public void finishScheduleByScheduleId(Integer scheduleId) {
        Schedule schedule = new Schedule();
        schedule.setStatus(StatusConst.ScheduleStatus.FINISH.getStatus());
        schedule.setId(scheduleId);

        scheduleMapper.updateByPrimaryKeySelective(schedule);
    }

    /**
     * 获取日程详情
     *
     * @param scheduleId
     * @return
     */
    @Override
    public Schedule getScheduleDetailByScheduleId(Integer scheduleId) {
        return scheduleMapper.selectByPrimaryKey(scheduleId);
    }

    /**
     * 根据类型和归属id获取日程
     * @param type
     * @param belongId
     * @param statusList
     * @return
     */
    private List<Schedule> listScheduleByTypeAndBelongId(Integer type, Integer belongId, List<String> statusList){
        ScheduleExample example = new ScheduleExample();
        ScheduleExample.Criteria criteria
                = example.createCriteria().andTypeEqualTo(type).andBelong_idEqualTo(belongId);
        if(statusList != null && !statusList.isEmpty()){
            criteria.andStatusIn(statusList);
        }
        example.setOrderByClause(" id desc ");
        return scheduleMapper.selectByExampleWithBLOBs(example);
    }
}
