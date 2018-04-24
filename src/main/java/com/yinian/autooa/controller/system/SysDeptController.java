package com.yinian.autooa.controller.system;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.model.Department;
import com.yinian.autooa.service.system.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * 部门管理
 * created by yinian on 18-4-22.
 */
@Controller
@RequestMapping("/oa/human/department/")
public class SysDeptController extends BaseController {

    @Autowired
    private DepartmentService departmentService;

    @GetMapping("list.html")
    public ModelAndView listDepartment(){
        ModelAndView mv = new ModelAndView("system/list_dept");

        mv.addObject("departmentList", departmentService.listDepartment());
        return mv;
    }

    @GetMapping("list.do")
    @ResponseBody
    public ApiResponse listDepartmentAjax(){
        return ApiResponse.getDefaultResponse().setData(departmentService.listDepartment());
    }

    @PostMapping("add.html")
    public String addNewDepartment(Department department){

        departmentService.addNewDepartment(department);
        return "redirect:list.html";
    }

    @PostMapping("del.do")
    @ResponseBody
    public ApiResponse delDepartment(Integer id){

        departmentService.delDepartmentByDepartId(id);
        return ApiResponse.getDefaultResponse();
    }

    @PostMapping("update.html")
    public String updateDepartment(Department department, Integer departId){

        departmentService.updateDepartmentById(departId, department);
        return "redirect:list.html";
    }

}
