package com.yinian.autooa.controller;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.vo.output.GroupOutputVO;
import org.activiti.engine.IdentityService;
import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.activiti.engine.impl.persistence.entity.UserEntity;
import org.activiti.engine.impl.persistence.entity.UserEntityImpl;
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
@RequestMapping("/autooa/user/")
public class UserController {

    @Autowired
    private IdentityService identityService;

    @PostMapping("add.do")
    public ModelAndView addUser(UserEntityImpl user){
        String id = user.getId();
        ModelAndView modelAndView = new ModelAndView();
        if(id == null || id.trim().equals("")){
            modelAndView = listUser();
            modelAndView.addObject("errno", "30011");
            modelAndView.addObject("errmsg", "员工编号不能为空");
            return modelAndView;
        }
        long count = identityService.createUserQuery().userId(id).count();
        if(count > 0){
            modelAndView = listUser();
            modelAndView.addObject("errno", "30012");
            modelAndView.addObject("errmsg", "编号["+id+"]已经存在");
            return modelAndView;
        }

        identityService.saveUser(user);
        modelAndView.setViewName("redirect:list.do");
        return modelAndView;
    }

    @GetMapping("list.do")
    public ModelAndView listUser(){
        List<User> userList = identityService.createUserQuery().orderByUserId().desc().list();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userList", userList);
        modelAndView.setViewName("/user/list_user_mess");
        return modelAndView;
    }

    @PostMapping("update.do")
    public ModelAndView updateUser(UserEntityImpl user){
        identityService.deleteUser(user.getId());
        return addUser(user);
    }

    @PostMapping("del.do")
    public ModelAndView delUser(String userId){
        identityService.deleteUser(userId);

        return new ModelAndView("redirect:list.do");
    }

    @PostMapping("ship/bind.do")
    @ResponseBody
    public ApiResponse bindUserGroupShip(String userId, String groupId){
        identityService.createMembership(userId, groupId);

        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("ship/unbind.do")
    @ResponseBody
    public ApiResponse unbindUserGroupShip(String userId, String groupId){
        identityService.deleteMembership(userId, groupId);

        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("ship/listgroup.do")
    @ResponseBody
    public ApiResponse listUserGroup(String userId){
        return ApiResponse.getDefaultResponse().setData(
                identityService.createGroupQuery().groupMember(userId).list()
        );
    }

    @PostMapping("ship/group/listuser.do")
    @ResponseBody
    public ApiResponse listUserInGroup(String groupId){
        return ApiResponse.getDefaultResponse().setData(
                identityService.createUserQuery().memberOfGroup(groupId).list()
        );
    }

    private GroupOutputVO tranGroupVO(Group group){
        GroupOutputVO outputVO = new GroupOutputVO();
        outputVO.setId(group.getId());
        outputVO.setName(group.getName());
        outputVO.setType(group.getType());
        return outputVO;
    }
}
