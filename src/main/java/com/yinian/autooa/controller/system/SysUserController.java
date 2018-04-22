package com.yinian.autooa.controller.system;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * 系统用户管理
 * created by yinian on 18-4-22.
 */
@Controller
@RequestMapping("/oa/system/user/")
public class SysUserController extends BaseController {

    @Autowired
    private SysUserService sysUserService;

    @GetMapping("list.html")
    public ModelAndView listAllUser(){
        ModelAndView mv = new ModelAndView();

        mv.addObject("userList", sysUserService.listAllUser());
        mv.setViewName("system/list_user");
        return mv;
    }

    @PostMapping("add_or_update.do")
    @ResponseBody
    public ApiResponse addOrUpdate(@RequestBody SysUser user){
        // 有id，则编辑
        if(user.getId() != null && user.getId() > 0){
            sysUserService.updateSelectiveUserById(user, user.getId());
        }else{
            // 没有id，则新增
            sysUserService.addNewUser(user);
        }
        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("del.do")
    @ResponseBody
    public ApiResponse delById(Integer userId){

        sysUserService.delById(userId);

        return ApiResponse.getDefaultResponse();
    }
}
