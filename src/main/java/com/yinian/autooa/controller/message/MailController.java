package com.yinian.autooa.controller.message;

import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.service.message.MessageService;
import com.yinian.autooa.service.system.SysUserService;
import com.yinian.autooa.vo.input.message.MailSendInputVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 邮件相关接口
 * created by yinian on 18-4-24.
 */
@Controller
@RequestMapping("/oa/message/")
public class MailController extends BaseController {

    @Autowired
    private MessageService messageService;

    @Autowired
    private SysUserService sysUserService;

    @GetMapping("mail/start.html")
    public ModelAndView goSendMailPage(String status){
        ModelAndView mv = new ModelAndView("message/mail_send_start");

        mv.addObject("status", status);
        mv.addObject("userList", sysUserService.listAllUser());

        return mv;
    }

    @PostMapping("mail/send.html")
    public ModelAndView sendMail(MailSendInputVO inputVO){
        ModelAndView mv = new ModelAndView("redirect: start.html?status=OK");

        messageService.sendMail(inputVO);

        return mv;
    }

    @GetMapping("mess/start.html")
    public ModelAndView goSendMessagePage(String status){
        ModelAndView mv = new ModelAndView("message/short_message_send_start");

        mv.addObject("status", status);
        mv.addObject("userList", sysUserService.listAllUser());

        return mv;
    }

    @PostMapping("mess/send.html")
    public ModelAndView sendMessage(MailSendInputVO inputVO){
        ModelAndView mv = new ModelAndView("redirect: start.html?status=OK");

        messageService.sendMail(inputVO);

        return mv;
    }
}
