package com.yinian.autooa.service.shiro;

import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.system.SysPermissionService;
import com.yinian.autooa.service.system.SysRoleService;
import com.yinian.autooa.service.system.SysUserService;
import com.yinian.autooa.util.MD5Util;
import jodd.util.StringUtil;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * shiro自定义授权和认证接口
 * created by yinian on 18-4-20.
 */
public class CustomRealm extends AuthorizingRealm {

    private static final Logger logger = LoggerFactory.getLogger(CustomRealm.class);

    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private SysPermissionService sysPermissionService;
    @Autowired
    private SysRoleService sysRoleService;

    @Override
    public boolean supports(AuthenticationToken token) {
        // 仅支持UsernamePasswordToken 类型的Token
        return token instanceof UsernamePasswordToken;
    }

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
        List<String> permissionStrList = sysPermissionService.getPermissionStrListByUserAccount(account);
        if(permissionStrList == null){
            permissionStrList = new ArrayList<String>();
        }
        info.addStringPermissions(permissionStrList);
        Set<String> roleCodeSet = sysRoleService.getRoleCodeSetByUserAccount(account);
        if(roleCodeSet == null){
            roleCodeSet = new HashSet<String>();
        }
        info.setRoles(roleCodeSet);
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
        if(!(authenticationToken instanceof UsernamePasswordToken)){
            return null;
        }
        UsernamePasswordToken token = (UsernamePasswordToken)authenticationToken;

        String account = token.getUsername();
        String password = String.valueOf(token.getPassword());
        if (StringUtil.isBlank(account) || StringUtil.isBlank(password)) {
            return  null;
        }
        SysUser sysUser = sysUserService.getUserByAccount(account);
        if(sysUser == null){
            throw new UnknownAccountException("用户名不存在"); // 如果用户名错误
        }
        /* 密码使用MD5加密 */
        String encryptPassword = MD5Util.getMD5UpperCase(password);
        assert encryptPassword != null;
        boolean compareResult = encryptPassword.equals(sysUser.getPassword());

        logger.debug("帐号=[{}],数据库加密串=[{}], 登录用加密串=[{}], 匹配结果=[{}]",
                account, sysUser.getPassword(), encryptPassword, compareResult);
        if(compareResult){
            return new SimpleAuthenticationInfo(account, encryptPassword, getName());
        }

        throw new IncorrectCredentialsException("用户凭证错误"); // 如果密码错误
    }
}
