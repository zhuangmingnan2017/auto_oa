package com.yinian.autooa.controller;

import com.yinian.autooa.common.exception.UserNotLoginException;
import com.yinian.autooa.model.SysUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

/**
 * created by yinian on 18-4-5.
 */
public class BaseController {

    protected Logger logger = LoggerFactory.getLogger(this.getClass());

    private static final long serialVersionUID = 6357869213649815390L;

    protected static Map<String, String> getParamMapByRequest(HttpServletRequest request){
        Enumeration enu=request.getParameterNames();

        Map<String, String> map = new HashMap<String, String>();
        while(enu.hasMoreElements()){
            String paraName=(String)enu.nextElement();
            map.put(paraName, request.getParameter(paraName));
        }

        return map;
    }

    protected SysUser getSessionUser(HttpSession session){
        SysUser user = (SysUser)session.getAttribute("user");
        if(user == null){
            throw new UserNotLoginException();
        }

        return user;
    }
}
