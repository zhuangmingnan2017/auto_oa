package com.yinian.autooa.controller;

import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.service.system.SysUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * 通用的前端控制器
 * created by yinian on 18-4-5.
 */
@Controller
public class CommonController extends BaseController{

    @Autowired
    private SysUserService sysUserService;

    @GetMapping("/")
    public String index(){
        if(SecurityUtils.getSubject().isAuthenticated()){
            return "index";
        }
        return "login";
    }

    @GetMapping("login.html")
    public String loginPage(){
        return "login";
    }

    @PostMapping("login.do")
    public ModelAndView login(String account, String password, HttpSession session){
        ModelAndView mv = new ModelAndView();

        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(account, password);
        try {
            subject.login(token);
        } catch (AuthenticationException e) {
            logger.debug("登录失败,message=[{}]", e.getMessage());
            mv.addObject("login_error_msg", "帐号/密码错误，请检查");
            mv.setViewName("login");
            return mv;
        }
        SysUser user = sysUserService.getUserByAccount(account);

        session.setAttribute("account", account);
        session.setAttribute("user", user);
        mv.setViewName("index");
        return mv;
    }

    @GetMapping("/error/{errorCode}.html")
    public  ModelAndView errorPage(@PathVariable("errorCode") String errorCode){
        return new ModelAndView("error/"+errorCode);
    }
}
