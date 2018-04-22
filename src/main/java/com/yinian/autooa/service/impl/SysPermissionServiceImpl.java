package com.yinian.autooa.service.impl;

import com.alibaba.fastjson.JSON;
import com.yinian.autooa.dao.autocode.SysPermissionMapper;
import com.yinian.autooa.dao.autocode.SysRolePermissionMapper;
import com.yinian.autooa.model.SysPermission;
import com.yinian.autooa.model.SysPermissionExample;
import com.yinian.autooa.model.SysRolePermission;
import com.yinian.autooa.model.SysRolePermissionExample;
import com.yinian.autooa.service.system.SysPermissionService;
import com.yinian.autooa.service.system.SysRoleService;
import com.yinian.autooa.vo.input.system.SetRolePermissionInputVO;
import jodd.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * created by yinian on 18-4-21.
 */
@Service
public class SysPermissionServiceImpl implements SysPermissionService {
    
    private static final Logger logger = LoggerFactory.getLogger(SysPermissionService.class);

    private SysRoleService sysRoleService;
    private SysRolePermissionMapper sysRolePermissionMapper;
    private SysPermissionMapper sysPermissionMapper;

    @Autowired
    public SysPermissionServiceImpl( SysRoleService sysRoleService, SysRolePermissionMapper sysRolePermissionMapper, SysPermissionMapper sysPermissionMapper) {
        this.sysRoleService = sysRoleService;
        this.sysRolePermissionMapper = sysRolePermissionMapper;
        this.sysPermissionMapper = sysPermissionMapper;
    }

    /**
     * 根据用户帐号获取用户权限
     *
     * @param account
     * @return
     */
    @Override
    public List<String> getPermissionStrListByUserAccount(String account) {
        // account-> role
        // role->permission
        List<Integer> roleIdList = sysRoleService.getRoleIdListByUserAccount(account);
        if(roleIdList == null || roleIdList.isEmpty()){
            return null;
        }

        SysRolePermissionExample rolePermissionExample = new SysRolePermissionExample();
        rolePermissionExample.createCriteria().andRole_idIn(roleIdList);
        sysRolePermissionMapper.selectByExample(rolePermissionExample);
        List<SysRolePermission> rolePermissionList = sysRolePermissionMapper.selectByExample(rolePermissionExample);
        if(rolePermissionList.isEmpty()){
            logger.info("account=[{}],roleIdList=[{}]",
                    account, JSON.toJSONString(roleIdList));
            return null;
        }
        List<Integer> permissionIdList = new ArrayList<Integer>(rolePermissionList.size());
        for(SysRolePermission rolePermission : rolePermissionList ){
            if(permissionIdList.contains(rolePermission.getPermission_id())){
                continue;
            }
            permissionIdList.add(rolePermission.getPermission_id());
        }


        SysPermissionExample permissionExample = new SysPermissionExample();
        permissionExample.createCriteria().andIdIn(permissionIdList);
        List<SysPermission> permissionList = sysPermissionMapper.selectByExample(permissionExample);

        List<String> permissionCodeList = new ArrayList<String>(permissionList.size());
        for(SysPermission permission : permissionList){
            if(permissionCodeList.contains(permission.getPermission_code())){
                continue;
            }
            permissionCodeList.add(permission.getPermission_code());
        }
        return permissionCodeList;
    }

    @Override
    public void updateSelectiveById(SysPermission permission, Integer id) {
        sysPermissionMapper.updateByPrimaryKeySelective(permission);
    }

    @Override
    public void addNew(SysPermission permission) {
        permission.setId(null);
        sysPermissionMapper.insertSelective(permission);
    }

    @Override
    public void delById(Integer id) {
        sysPermissionMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<SysPermission> listAll() {
        return sysPermissionMapper.selectByExample(new SysPermissionExample());
    }

    @Override
    public void setRolePermission(SetRolePermissionInputVO vo) {
        Integer roleId = vo.getRoleId();

        // 先删除，再重新插入
        SysRolePermissionExample rolePermissionExample = new SysRolePermissionExample();
        rolePermissionExample.createCriteria().andRole_idEqualTo(roleId);
        sysRolePermissionMapper.deleteByExample(rolePermissionExample);

        // 如果是清空了角色配置就直接返回
        if(StringUtil.isBlank(vo.getPermissionIdListStr())){
            return ;
        }

        List<String> permissionIdStrList = Arrays.asList(vo.getPermissionIdListStr().split(","));
        List<SysRolePermission> rolePermissionList = new ArrayList<SysRolePermission>(permissionIdStrList.size());
        SysRolePermission rolePermission = null;
        for(String permissionIdStr : permissionIdStrList) {
            rolePermission = new SysRolePermission();
            rolePermission.setRole_id(roleId);
            rolePermission.setPermission_id(Integer.valueOf(permissionIdStr));

            rolePermissionList.add(rolePermission);
        }

        sysRolePermissionMapper.insertBatchSelective(rolePermissionList);
    }

    @Override
    public List<SysPermission> listRolePermissionByRoleId(Integer roleId) {
        SysRolePermissionExample rolePermissionExample = new SysRolePermissionExample();
        rolePermissionExample.createCriteria().andRole_idEqualTo(roleId);
        List<SysRolePermission> rolePermissionList = sysRolePermissionMapper.selectByExample(rolePermissionExample);
        if(rolePermissionList.isEmpty()){
            return null;
        }

        List<Integer> permissionIdList = new ArrayList<Integer>(rolePermissionList.size());
        for(SysRolePermission rolePermission : rolePermissionList){
            if(permissionIdList.contains(rolePermission.getPermission_id())){
                continue;
            }

            permissionIdList.add(rolePermission.getPermission_id());
        }

        SysPermissionExample permissionExample = new SysPermissionExample();
        permissionExample.createCriteria().andIdIn(permissionIdList);
        return sysPermissionMapper.selectByExample(permissionExample);
    }
}
