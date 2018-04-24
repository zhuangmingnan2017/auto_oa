package com.yinian.autooa.service.system;

import com.yinian.autooa.model.Department;

import java.util.List;
import java.util.Map;

/**
 * 部门管理
 * created by yinian on 18-4-23.
 */
public interface DepartmentService {

    List<Department> listDepartment();

    void addNewDepartment(Department department);

    void delDepartmentByDepartId(Integer departId);

    void updateDepartmentById(Integer departId, Department department);

    // key = departmentId
    Map<String, Department> listDepartmentByDepartmentIdList(List<Integer> departmentIdList);
}
