package com.yinian.autooa.controller.system;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.SysPermission;
import com.yinian.autooa.service.system.SysPermissionService;
import com.yinian.autooa.vo.input.system.SetRolePermissionInputVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * 系统权限管理
 * created by yinian on 18-4-22.
 */
@Controller
@RequestMapping("/oa/system/permission/")
public class SysPermissionController extends BaseController {


    @Autowired
    private SysPermissionService sysPermissionService;

    @GetMapping("list.html")
    public ModelAndView listAll(){
        ModelAndView mv = new ModelAndView();

        mv.addObject("permissionList", sysPermissionService.listAll());
        mv.setViewName("system/list_permission");
        return mv;
    }

    @GetMapping("list.do")
    @ResponseBody
    public ApiResponse listAllByAjax(){
        return ApiResponse.getDefaultResponse().setData(sysPermissionService.listAll());
    }

    @PostMapping("add_or_update.do")
    @ResponseBody
    public ApiResponse addOrUpdate(@RequestBody SysPermission permission){
        // 有id，则编辑
        if(permission.getId() != null && permission.getId() > 0){
            sysPermissionService.updateSelectiveById(permission, permission.getId());
        }else{
            // 没有id，则新增
            sysPermissionService.addNew(permission);
        }
        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("del.do")
    @ResponseBody
    public ApiResponse delById(Integer id){

        sysPermissionService.delById(id);

        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("role_permission/set_role_permission.do")
    @ResponseBody
    public ApiResponse setUserRole(@RequestBody SetRolePermissionInputVO vo){

        sysPermissionService.setRolePermission(vo);
        return ApiResponse.getDefaultResponse();
    }

    @GetMapping("role_permission/list.do")
    @ResponseBody
    public ApiResponse listRolePermissionByRoleId(Integer roleId){
        return ApiResponse.getDefaultResponse().setData(sysPermissionService.listRolePermissionByRoleId(roleId));
    }
}
