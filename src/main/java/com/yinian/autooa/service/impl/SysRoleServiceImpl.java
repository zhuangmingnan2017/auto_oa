package com.yinian.autooa.service.impl;

import com.alibaba.fastjson.JSON;
import com.yinian.autooa.dao.autocode.SysRoleMapper;
import com.yinian.autooa.dao.autocode.SysUserRoleMapper;
import com.yinian.autooa.model.*;
import com.yinian.autooa.service.SysRoleService;
import com.yinian.autooa.service.SysUserService;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static org.slf4j.LoggerFactory.getLogger;

/**
 * created by yinian on 18-4-21.
 */
@Service
public class SysRoleServiceImpl implements SysRoleService {

    private static final Logger logger = getLogger(SysRoleService.class);

    private SysUserService sysUserService;
    private SysUserRoleMapper sysUserRoleMapper;
    private SysRoleMapper sysRoleMapper;

    @Autowired
    public SysRoleServiceImpl(SysUserService sysUserService, SysUserRoleMapper sysUserRoleMapper, SysRoleMapper sysRoleMapper) {
        this.sysUserService = sysUserService;
        this.sysUserRoleMapper = sysUserRoleMapper;
        this.sysRoleMapper = sysRoleMapper;
    }

    /**
     * 根据帐号获取用户的角色集合
     *
     * @param account
     * @return
     */
    @Override
    public Set<String> getRoleCodeSetByUserAccount(String account) {

        SysUser sysUser = sysUserService.getUserByAccount(account);
        if(sysUser == null){
            return null;
        }

        SysUserRoleExample sysUserRoleExample = new SysUserRoleExample();
        sysUserRoleExample.createCriteria().andUser_idEqualTo(sysUser.getId());
        List<SysUserRole> userRoleList = sysUserRoleMapper.selectByExample(sysUserRoleExample);
        if(userRoleList.isEmpty()){
            logger.debug("account=[{}], userId=[{}],用户没有定义角色", account, sysUser.getId());
            return null;
        }
        List<Integer> roleIdList = new ArrayList<Integer>(userRoleList.size());
        for(SysUserRole userRole : userRoleList){
            if(roleIdList.contains(userRole.getRole_id())){
                continue;
            }
            roleIdList.add(userRole.getRole_id());
        }

        SysRoleExample roleExample = new SysRoleExample();
        roleExample.createCriteria().andIdIn(roleIdList);
        List<SysRole> roleList = sysRoleMapper.selectByExample(roleExample);
        if(roleList.isEmpty()){
            logger.debug("account=[{}], userId=[{}], roleIdList=[{}]找不到角色",
                    account, sysUser.getId(), JSON.toJSONString(roleIdList));
            return null;
        }
        Set<String> roleCodeSet = new HashSet<String>(roleList.size());
        for(SysRole role : roleList){
            roleCodeSet.add(role.getRole_code());
        }

        return roleCodeSet;
    }

    /**
     * 根据帐号获取用户的角色id列表
     *
     * @param account
     * @return
     */
    @Override
    public List<Integer> getRoleIdListByUserAccount(String account) {
        SysUser sysUser = sysUserService.getUserByAccount(account);
        if(sysUser == null){
            return null;
        }

        SysUserRoleExample sysUserRoleExample = new SysUserRoleExample();
        sysUserRoleExample.createCriteria().andUser_idEqualTo(sysUser.getId());
        List<SysUserRole> userRoleList = sysUserRoleMapper.selectByExample(sysUserRoleExample);
        if(userRoleList.isEmpty()){
            logger.info("account=[{}], userId=[{}],用户没有定义角色", account, sysUser.getId());
            return null;
        }
        List<Integer> roleIdList = new ArrayList<Integer>(userRoleList.size());
        for(SysUserRole userRole : userRoleList){
            if(roleIdList.contains(userRole.getRole_id())){
                continue;
            }
            roleIdList.add(userRole.getRole_id());
        }

        return roleIdList;
    }
}
