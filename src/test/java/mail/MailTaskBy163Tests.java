package mail;

import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.test.ActivitiRule;
import org.activiti.engine.test.Deployment;
import org.junit.Rule;
import org.junit.Test;

import java.util.HashMap;
import java.util.Map;

/**
 * created by yinian on 18-4-28.
 */
public class MailTaskBy163Tests {

    @Rule
    public ActivitiRule activitiRule = new ActivitiRule("./activiti-163.cfg.xml");

    @Test
    @Deployment(resources = {"./mail.bpmn20.xml"})
    public void sendMailTest() throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();

        map.put("name", "yinian");
        map.put("to", "zhuangmingnan@qq.com");
        map.put("from", "zhuangmingnan@163.com");
        ProcessInstance instance = activitiRule.getRuntimeService().startProcessInstanceByKey("mail", map);

        assert instance != null;
    }
}
