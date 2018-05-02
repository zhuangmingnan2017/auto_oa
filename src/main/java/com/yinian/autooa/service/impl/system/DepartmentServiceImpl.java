package com.yinian.autooa.service.impl.system;

import com.yinian.autooa.dao.autocode.DepartmentMapper;
import com.yinian.autooa.model.Department;
import com.yinian.autooa.model.DepartmentExample;
import com.yinian.autooa.service.BaseService;
import com.yinian.autooa.service.system.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * created by yinian on 18-4-23.
 */
@Service
public class DepartmentServiceImpl extends BaseService implements DepartmentService {

    @Autowired
    private DepartmentMapper departmentMapper;

    @Override
    public List<Department> listDepartment() {
        DepartmentExample example = new DepartmentExample();
        example.setOrderByClause(" id desc ");
        return departmentMapper.selectByExample(example);
    }

    @Override
    public void addNewDepartment(Department department) {
        department.setId(null);
        departmentMapper.insertSelective(department);
    }

    @Override
    public void delDepartmentByDepartId(Integer departId) {
        departmentMapper.deleteByPrimaryKey(departId);
    }

    @Override
    public void updateDepartmentById(Integer departId, Department department) {
        department.setId(departId);
        departmentMapper.updateByPrimaryKeySelective(department);
    }

    @Override
    public Map<String, Department> listDepartmentByDepartmentIdList(List<Integer> departmentIdList) {
        if(departmentIdList == null || departmentIdList.isEmpty()){
            return null;
        }

        DepartmentExample example = new DepartmentExample();
        example.createCriteria().andIdIn(departmentIdList);
        List<Department> departmentList =  departmentMapper.selectByExample(example);
        if(departmentIdList.isEmpty()){
            return null;
        }

        Map<String, Department> map = new HashMap<String, Department>(departmentIdList.size());
        for(Department department: departmentList){
            map.put(department.getId()+"", department);
        }

        return map;
    }

    @Override
    public Department getDepartmentByDepartId(Integer departId) {
        return departmentMapper.selectByPrimaryKey(departId);
    }
}
