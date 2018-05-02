package com.yinian.autooa.filter;

import com.yinian.autooa.service.system.SysUserService;
import org.apache.shiro.session.SessionException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.LogoutFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * shiro退出登录操作
 * created by yinian on 18-4-30.
 */
@Service
public class SystemLogoutFilter extends LogoutFilter {

    @Autowired
    private SysUserService sysUserService;

    private static final Logger logger = LoggerFactory.getLogger(SystemLogoutFilter.class);

    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        //在这里执行退出系统前需要清空的数据
        Subject subject = getSubject(request, response);
        //String redirectUrl = getRedirectUrl(request, response, subject);
        String redirectUrl = "/login.html";

        try {
            subject.logout();
        } catch (SessionException ise) {
            logger.error("退出登录错误", ise);
        }

        String uCenterLogoutScript = sysUserService.uCenterLogout();
        ((HttpServletRequest)request).getSession()
                .setAttribute("uCenterLogoutScript", uCenterLogoutScript);

        issueRedirect(request, response, redirectUrl);
        //返回false表示不执行后续的过滤器，直接返回跳转到登录页

        return false;

    }
}
