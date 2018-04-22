package com.yinian.autooa.controller.system;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.SysRole;
import com.yinian.autooa.service.system.SysRoleService;
import com.yinian.autooa.vo.input.system.SetUserRoleInputVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * 系统角色管理
 * created by yinian on 18-4-22.
 */
@Controller
@RequestMapping("/oa/system/role/")
public class SysRoleController extends BaseController {


    @Autowired
    private SysRoleService sysRoleService;

    @GetMapping("list.html")
    public ModelAndView listAll(){
        ModelAndView mv = new ModelAndView();

        mv.addObject("roleList", sysRoleService.listAll());
        mv.setViewName("system/list_role");
        return mv;
    }

    @GetMapping("list.do")
    @ResponseBody
    public ApiResponse listAllByAjax(){
        return ApiResponse.getDefaultResponse().setData(sysRoleService.listAll());
    }

    @PostMapping("add_or_update.do")
    @ResponseBody
    public ApiResponse addOrUpdate(@RequestBody SysRole role){
        // 有id，则编辑
        if(role.getId() != null && role.getId() > 0){
            sysRoleService.updateSelectiveById(role, role.getId());
        }else{
            // 没有id，则新增
            sysRoleService.addNew(role);
        }
        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("del.do")
    @ResponseBody
    public ApiResponse delById(Integer id){

        sysRoleService.delById(id);

        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("user_role/set_user_role.do")
    @ResponseBody
    public ApiResponse setUserRole(@RequestBody SetUserRoleInputVO vo){

        sysRoleService.setUserRole(vo);
        return ApiResponse.getDefaultResponse();
    }

    @GetMapping("user_role/list.do")
    @ResponseBody
    public ApiResponse listUserRole(Integer userId){
        return ApiResponse.getDefaultResponse().setData(sysRoleService.listUserRoleByUserId(userId));
    }
}
