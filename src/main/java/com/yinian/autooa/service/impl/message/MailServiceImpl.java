package com.yinian.autooa.service.impl.message;

import com.yinian.autooa.service.BaseService;
import com.yinian.autooa.service.message.MailService;
import com.yinian.autooa.vo.input.message.MailSendInputVO;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Properties;

/**
 * created by yinian on 18-4-24.
 */
@Service
public class MailServiceImpl extends BaseService implements MailService {

    @Value("${mail.send.account}")
    private String sendAccount;

    @Value("${mail.send.password}")
    private String sendPassword;

    @Value("${mail.smtp.host}")
    private String emailSMTPHost;

    @Override
    public void sendMail(MailSendInputVO inputVO)  {
        String receiveMailStr = inputVO.getReceiveMailStr()==null?"":inputVO.getReceiveMailStr();
        List<String> receiveMailList = Arrays.asList(receiveMailStr.split(";"));

        try {
            connectAndSendMail(receiveMailList, inputVO.getTitle(), inputVO.getContent());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private void connectAndSendMail(List<String> receiveMailList, String title, String content) throws Exception {
        // 1. 创建参数配置, 用于连接邮件服务器的参数配置
        Properties props = new Properties();                    // 参数配置
        props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
        props.setProperty("mail.smtp.host", emailSMTPHost);   // 发件人的邮箱的 SMTP 服务器地址
        props.setProperty("mail.smtp.auth", "true");

        // 2. 根据配置创建会话对象, 用于和邮件服务器交互
        Session session = Session.getInstance(props);
        session.setDebug(true);

        // 3.创建邮件
        MimeMessage message = createMimeMessage(session, receiveMailList, title, content);

        // 4. 根据 Session 获取邮件传输对象
        Transport transport = session.getTransport();

        // 5. 使用 邮箱账号 和 密码 连接邮件服务器, 这里认证的邮箱必须与 message 中的发件人邮箱一致, 否则报错
        transport.connect(sendAccount, sendPassword);

        // 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
       transport.sendMessage(message, message.getAllRecipients());

        // 7. 关闭连接
        transport.close();
    }

    private MimeMessage createMimeMessage(Session session, List<String> receiveMailList, String title, String content) throws Exception {
        // 1. 创建一封邮件
        MimeMessage message = new MimeMessage(session);

        // 2. From: 发件人（昵称有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改昵称）
        message.setFrom(new InternetAddress(sendAccount, "AUTO_OA", "UTF-8"));

        InternetAddress[] sendTo = new InternetAddress[receiveMailList.size()];
        for(int i = 0; i < receiveMailList.size(); i++){
            // 3. To: 收件人（可以增加多个收件人、抄送、密送）
            sendTo[i] = new InternetAddress(receiveMailList.get(i), "AUTO_OA用户", "UTF-8");
        }
        message.setRecipients(MimeMessage.RecipientType.TO, sendTo);

        // 4. Subject: 邮件主题（标题有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改标题）
        message.setSubject(title, "UTF-8");

        // 5. Content: 邮件正文（可以使用html标签）（内容有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改发送内容）
        message.setContent(content, "text/html;charset=UTF-8");

        // 6. 设置发件时间
        message.setSentDate(new Date());

        // 7. 保存设置
        message.saveChanges();

        return message;
    }
}
