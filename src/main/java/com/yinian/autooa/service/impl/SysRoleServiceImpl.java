package com.yinian.autooa.service.impl;

import com.alibaba.fastjson.JSON;
import com.yinian.autooa.dao.autocode.SysRoleMapper;
import com.yinian.autooa.dao.autocode.SysUserRoleMapper;
import com.yinian.autooa.model.*;
import com.yinian.autooa.service.system.SysRoleService;
import com.yinian.autooa.service.system.SysUserService;
import com.yinian.autooa.vo.input.system.SetUserRoleInputVO;
import jodd.util.StringUtil;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

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

    @Override
    public List<SysRole> listAll() {
        return sysRoleMapper.selectByExample(new SysRoleExample());
    }

    @Override
    public void updateSelectiveById(SysRole role, Integer id) {
        sysRoleMapper.updateByPrimaryKeySelective(role);
    }

    @Override
    public void addNew(SysRole role) {
        role.setId(null);
        sysRoleMapper.insertSelective(role);
    }

    @Override
    public void delById(Integer id) {
        sysRoleMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<SysRole> listUserRoleByUserId(Integer userId) {
        SysUserRoleExample userRoleExample = new SysUserRoleExample();
        userRoleExample.createCriteria().andUser_idEqualTo(userId);
        List<SysUserRole> userRoleList = sysUserRoleMapper.selectByExample(userRoleExample);
        if(userRoleList.isEmpty()){
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
        return sysRoleMapper.selectByExample(roleExample);
    }

    @Override
    public void setUserRole(SetUserRoleInputVO vo) {
        Integer userId = vo.getUserId();

        // 先删除，再重新插入
        SysUserRoleExample userRoleExample = new SysUserRoleExample();
        userRoleExample.createCriteria().andUser_idEqualTo(userId);
        sysUserRoleMapper.deleteByExample(userRoleExample);

        // 如果是清空了角色配置就直接返回
        if(StringUtil.isBlank(vo.getRoleIdListStr())){
            return ;
        }

        List<String> roleIdStrList = Arrays.asList(vo.getRoleIdListStr().split(","));
        List<SysUserRole> userRoleList = new ArrayList<SysUserRole>(roleIdStrList.size());
        SysUserRole userRole = null;
        for(String roleIdStr : roleIdStrList){
            userRole = new SysUserRole();
            userRole.setUser_id(userId);
            userRole.setRole_id(Integer.valueOf(roleIdStr));

            userRoleList.add(userRole);
        }

        sysUserRoleMapper.insertBatchSelective(userRoleList);

    }
}
