package com.yinian.autooa.service.shiro;

import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.SysPermissionService;
import com.yinian.autooa.service.SysRoleService;
import com.yinian.autooa.service.SysUserService;
import com.yinian.autooa.util.MD5Util;
import jodd.util.StringUtil;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * shiro自定义授权和认证接口
 * created by yinian on 18-4-20.
 */
public class CustomRealm extends AuthorizingRealm {

    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private SysPermissionService sysPermissionService;
    @Autowired
    private SysRoleService sysRoleService;

    /**
     * 鉴权
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String account = (String) principalCollection.getPrimaryPrincipal();
        if(StringUtil.isBlank(account)){
            return null;
        }

        SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
        info.addStringPermissions(sysPermissionService.getPermisssionStrListByUserAccount(account));
        info.setRoles(sysRoleService.getRoleStrSetByUserAccount(account));
        return info;
    }

    /**
     * 登录认证
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String account = (String) authenticationToken.getPrincipal();
        String password = (String)authenticationToken.getCredentials();
        if (StringUtil.isBlank(account) || StringUtil.isBlank(password)) {
            return  null;
        }
        SysUser sysUser = sysUserService.getUserByAccount(account);
        if(sysUser == null){
            return null;
        }
        /* 密码使用MD5加密 */
        String encryptPassword = MD5Util.getMD5(password);
        if(encryptPassword.equals(sysUser.getPassword())){
            return new SimpleAuthenticationInfo(account, encryptPassword, getName());
        }

        return null;
    }
}
