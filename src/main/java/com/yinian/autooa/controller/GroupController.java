package com.yinian.autooa.controller;

import com.yinian.autooa.common.ApiResponse;
import org.activiti.engine.IdentityService;
import org.activiti.engine.identity.Group;
import org.activiti.engine.impl.persistence.entity.GroupEntity;
import org.activiti.engine.impl.persistence.entity.GroupEntityImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * created by yinian on 18-4-4.
 */
@Controller
@RequestMapping("/autooa/group/")
public class GroupController {

    @Autowired
    private IdentityService identityService;

    @PostMapping("add.do")
    public ModelAndView addGroup(String groupName){
        ModelAndView modelAndView = new ModelAndView();

        long count = identityService.createGroupQuery().groupId(groupName).count();
        if(count > 0){
            modelAndView = listGroup();
            modelAndView.addObject("errno", "30001");
            modelAndView.addObject("errmsg", "组已经存在");
            return modelAndView;
        }
        GroupEntity groupEntity = new GroupEntityImpl();
        groupEntity.setId(groupName);
        groupEntity.setName(groupName);
        identityService.saveGroup(groupEntity);
        modelAndView.setViewName("redirect:list.do");
        return modelAndView;
    }

    @GetMapping("list.do")
    public ModelAndView listGroup(){
        List<Group> groupList = identityService.createGroupQuery().list();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("groupList", groupList);
        modelAndView.setViewName("group/list_group_mess");

        return modelAndView;
    }

    @PostMapping("update.do")
    @ResponseBody
    public ApiResponse updateGroup(String groupId, String groupName, String groupType){
    
        identityService.deleteGroup(groupId);

        Group group = identityService.newGroup(groupId);
        group.setName(groupName);
        group.setType(groupId);

        identityService.saveGroup(group);

        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("del.do")
    public ModelAndView delGroup(String groupId){

        identityService.deleteGroup(groupId);
        return new ModelAndView("redirect:list.do");
    }
}
