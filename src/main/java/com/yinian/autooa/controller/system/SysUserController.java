package com.yinian.autooa.controller.system;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.common.XMsg;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.system.DepartmentService;
import com.yinian.autooa.service.system.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * 系统用户管理
 * created by yinian on 18-4-22.
 */
@Controller
@RequestMapping("/oa/system/user/")
public class SysUserController extends BaseController {

    @Autowired
    private SysUserService sysUserService;

    @Autowired
    private DepartmentService departmentService;

    @GetMapping("list.html")
    public ModelAndView listAllUser(){
        ModelAndView mv = new ModelAndView("system/list_user");

        List<SysUser> userList = sysUserService.listAllUser();
        if(userList == null || userList.isEmpty()){
            return mv;
        }

        List<Integer> departmentIdList = new ArrayList<Integer>(userList.size());
        for(SysUser user : userList){
            Integer departId = user.getDepart_id();
            if(departId == null || departId <= 0){
                continue;
            }
            if(departmentIdList.contains(departId)){
                continue;
            }

            departmentIdList.add(departId);
        }

        mv.addObject("userList", userList);
        mv.addObject("departmentMap", departmentService.listDepartmentByDepartmentIdList(departmentIdList));
        return mv;
    }

    @GetMapping("list.do")
    @ResponseBody
    public ApiResponse listAllUserByAjax(){
        return ApiResponse.getDefaultResponse().setData(sysUserService.listAllUser());
    }

    @PostMapping("add_or_update.do")
    @ResponseBody
    public ApiResponse addOrUpdate(@RequestBody SysUser user){
        // 有id，则编辑
        if(user.getId() != null && user.getId() > 0){
            user.setPassword(null);
            user.setAccount(null);
            sysUserService.updateSelectiveUserById(user, user.getId());
        }else{
            try{
                sysUserService.addNewUCenter(user);
            }catch (Exception e){
                logger.error("新增ucenter用户出错", e);
                ApiResponse apiResponse = new ApiResponse(XMsg.FAIL);
                apiResponse.setData(e.getMessage());
                apiResponse.setMsg(e.getMessage());
                return apiResponse;
            }

            // 没有id，则新增
            user.setId(null);
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

    @PostMapping("department/change.html")
    public ModelAndView changeUserDepartment(Integer userId, Integer departmentId){
        ModelAndView mv = new ModelAndView();

        sysUserService.changeUserDepart(userId, departmentId);
        mv.setViewName("redirect:/oa/system/user/list.html");
        return mv;
    }
}
