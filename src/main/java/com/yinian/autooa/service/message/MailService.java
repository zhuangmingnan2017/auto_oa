package com.yinian.autooa.service.message;

import com.yinian.autooa.vo.input.message.MailSendInputVO;

import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;

/**
 * 邮件相关服务
 * created by yinian on 18-4-24.
 */
public interface MailService {


    void sendMail(MailSendInputVO inputVO);
}
