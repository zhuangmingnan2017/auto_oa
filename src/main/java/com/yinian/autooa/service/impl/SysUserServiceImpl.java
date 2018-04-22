package com.yinian.autooa.service.impl;

import com.yinian.autooa.dao.autocode.SysUserMapper;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.model.SysUserExample;
import com.yinian.autooa.service.system.SysUserService;
import com.yinian.autooa.util.MD5Util;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static org.slf4j.LoggerFactory.getLogger;

/**
 * created by yinian on 18-4-21.
 */
@Service
public class SysUserServiceImpl implements SysUserService {
    
    private static final Logger logger = getLogger(SysUserService.class);

    private SysUserMapper sysUserMapper;

    @Autowired
    public SysUserServiceImpl(SysUserMapper sysUserMapper) {
        this.sysUserMapper = sysUserMapper;
    }

    /**
     * 根据帐号获取用户信息
     *
     * @param account
     * @return
     */
    @Override
    public SysUser getUserByAccount(String account) {
        SysUserExample sysUserExample = new SysUserExample();
        sysUserExample.createCriteria().andAccountEqualTo(account);
        List<SysUser> sysUserList = sysUserMapper.selectByExample(sysUserExample);

        if(sysUserList.isEmpty()){
            logger.debug("account=[{}],找不到用户", account);
            return null;
        }

        return sysUserList.get(0);
    }

    /**
     * 列举所有用户
     *
     * @return
     */
    @Override
    public List<SysUser> listAllUser() {
        return sysUserMapper.selectByExample(new SysUserExample());
    }

    /**
     * 更新
     *
     * @param user
     * @param id
     */
    @Override
    public void updateSelectiveUserById(SysUser user, Integer id) {
        sysUserMapper.updateByPrimaryKeySelective(user);
    }

    /**
     * 新增用户
     *
     * @param user
     */
    @Override
    public void addNewUser(SysUser user) {
        user.setPassword(MD5Util.getMD5UpperCase(user.getPassword()));
        sysUserMapper.insertSelective(user);
    }

    /**
     * 删除
     *
     * @param userId
     */
    @Override
    public void delById(Integer userId) {
        sysUserMapper.deleteByPrimaryKey(userId);
    }
}
