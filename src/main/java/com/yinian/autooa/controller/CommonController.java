package com.yinian.autooa.controller;

import com.yinian.autooa.constant.MessConst;
import com.yinian.autooa.constant.SessionConst;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * created by yinian on 18-4-5.
 */
@Controller
@RequestMapping("oa/common/")
public class CommonController {

    @GetMapping("login.do")
    public ModelAndView login(String userName, String passwd){
        ModelAndView mv = new ModelAndView();

        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(userName, passwd);
        try {
            subject.login(token);
        } catch (UnknownAccountException e) {
            e.printStackTrace();
            mv.addObject("userName", "用户名错误！");
            mv.setViewName("login");
            return mv;
        } catch (IncorrectCredentialsException e) {
            e.printStackTrace();
            mv.addObject("passwd", "密码错误");
            mv.setViewName("login");
            return mv;
        }
        return mv;

    }

    @GetMapping({"index","/","jump_to_login"})
    public ModelAndView index(HttpServletRequest request, HttpSession session){
        if(session.getAttribute(SessionConst.ACCOUNT.name()) == null){
            ModelAndView modelAndView = new ModelAndView();
            if(request.getRequestURI().contains("jump_to_login")){
                modelAndView.addObject(MessConst.ERRNO.name(), -1);
                modelAndView.addObject(MessConst.ERR_MSG.name(), "请登录后操作");
            }
            modelAndView.setViewName("login");
            return modelAndView;
        }
        return new ModelAndView("index");
    }

    @GetMapping("regist")
    public ModelAndView regist(){
        return new ModelAndView("regist");
    }


    @GetMapping("logout.do")
    public ModelAndView logout(HttpSession session){

        session.removeAttribute(SessionConst.ACCOUNT.name());
        session.removeAttribute(SessionConst.USER_NAME.name());
        session.removeAttribute(SessionConst.USER_ID.name());

        return new ModelAndView("redirect:login");
    }
}
