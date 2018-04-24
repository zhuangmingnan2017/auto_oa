package com.yinian.autooa.controller.message;

import com.yinian.autooa.controller.BaseController;
import com.yinian.autooa.service.message.MailService;
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
@RequestMapping("/oa/message/mail/")
public class MailController extends BaseController {

    @Autowired
    private MailService mailService;

    @GetMapping("start.html")
    public String goSendMessagePage(){
        return "message/mail_send_start";
    }

    @PostMapping("send.html")
    public ModelAndView sendMessage(MailSendInputVO inputVO){
        ModelAndView mv = new ModelAndView("message/mail_send_start");

        mailService.sendMail(inputVO);

        return mv;
    }



}
