package com.yinian.autooa.service.impl.system;

import com.fivestars.interfaces.bbs.client.Client;
import com.fivestars.interfaces.bbs.util.XMLHelper;
import com.yinian.autooa.dao.autocode.SysUserMapper;
import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.model.SysUserExample;
import com.yinian.autooa.service.system.SysUserService;
import com.yinian.autooa.util.MD5Util;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
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

    /**
     * 获取用户
     *
     * @param userId
     * @return
     */
    @Override
    public SysUser getUserByUserId(Integer userId) {
        return sysUserMapper.selectByPrimaryKey(userId);
    }

    /**
     * 获取部门id下的用户
     *
     * @param departId
     * @return
     */
    @Override
    public List<SysUser> listUserByDepartId(Integer departId) {
        SysUserExample example = new SysUserExample();
        example.createCriteria().andDepart_idEqualTo(departId);
        return sysUserMapper.selectByExample(example);
    }

    @Override
    public void changeUserDepart(Integer userId, Integer departmentId) {
        SysUser user = new SysUser();
        user.setDepart_id(departmentId);
        user.setId(userId);

        sysUserMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public String uCenterLogout() {
        Client uc = new Client();
        String $ucsynlogout = uc.uc_user_synlogout();
        logger.info("退出成功:"+$ucsynlogout);

        return $ucsynlogout;
    }

    @Override
    public String uCenterLogin(String account, String password) {
        Client e = new Client();
        String result = e.uc_user_login(account, password);
        String $ucsynlogin = "";

        LinkedList<String> rs = XMLHelper.uc_unserialize(result);
        if(rs.size()>0){
            int $uid = Integer.parseInt(rs.get(0));
            String $username = rs.get(1);
            String $password = rs.get(2);
            String $email = rs.get(3);
            if($uid > 0) {
                $ucsynlogin = e.uc_user_synlogin($uid);
            } else if($uid == -1) {
                logger.info("UCenter-用户不存在,或者被删除");
            } else if($uid == -2) {
                logger.info("UCenter-密码错");
            } else {
                logger.info("UCenter-未定义");
            }
        }else{
            logger.info("UCenter-Login failed");
            logger.info(result);
        }
        return $ucsynlogin;
    }

    @Override
    public void addNewUCenter(SysUser user) {
        Client uc = new Client();
        String $returns = uc.uc_user_register(user.getAccount(), user.getPassword() ,user.getEmail());
        int $uid = Integer.parseInt($returns);
        if($uid <= 0) {
            String errMsg = "";
            if($uid == -1) {
                errMsg = "用户名不合法";
            } else if($uid == -2) {
                errMsg = "包含要允许注册的词语";
            } else if($uid == -3) {
                errMsg = "用户名已经存在";
            } else if($uid == -4) {
                errMsg = "Email 格式有误";
            } else if($uid == -5) {
                errMsg = "Email 不允许注册";
            } else if($uid == -6) {
                errMsg = "该 Email 已经被注册";
            } else {
                errMsg = "未定义";
            }
            throw new RuntimeException(errMsg);
        } else {
            logger.debug("OK:------------------------"+$returns);
        }
    }
}
