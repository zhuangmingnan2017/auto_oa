package com.yinian.autooa.controller.system;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.SysMenu;
import com.yinian.autooa.service.system.SysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * 系统菜单资源管理
 * created by yinian on 18-4-21.
 */
@Controller
@RequestMapping("/oa/system/menu/")
public class SysMenuController extends BaseController {

    @Autowired
    private SysMenuService sysMenuService;

    @GetMapping("list.html")
    public ModelAndView listAllParentMenu(){
        ModelAndView mv = new ModelAndView();

        mv.addObject("menuList", sysMenuService.listAllParentSysMenu());
        mv.setViewName("system/list_menu");
        return mv;
    }

    @GetMapping("submenu/list.do")
    @ResponseBody
    public ApiResponse listSubMenuByParentId(Integer parentId){
        ApiResponse response  = ApiResponse.getDefaultResponse();

        response.setData(sysMenuService.listSubMenuByParentId(parentId));

        return response;
    }

    @PostMapping("add_or_update.do")
    @ResponseBody
    public ApiResponse addNewMenu(@RequestBody SysMenu menu){
        // 有id，则编辑
        if(menu.getId() != null && menu.getId() > 0){
            sysMenuService.updateSelectiveSysMenuById(menu, menu.getId());
        }else{
            // 没有id，则新增
            sysMenuService.addNewSysMenu(menu);
        }
        return ApiResponse.getDefaultResponse();
    }

    @GetMapping("allmenu/list.do")
    @ResponseBody
    public ApiResponse listAllMenu(String account){
        ApiResponse response  = ApiResponse.getDefaultResponse();

        response.setData(sysMenuService.listAllSysMenuByAccount(account));
        return response;
    }

    @PostMapping("del.do")
    @ResponseBody
    public ApiResponse delMenuById(Integer menuId, Integer parentId){

        sysMenuService.delSysMenuByMenuId(menuId);

        return ApiResponse.getDefaultResponse();
    }
}
