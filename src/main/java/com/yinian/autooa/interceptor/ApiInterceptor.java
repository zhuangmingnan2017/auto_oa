package com.yinian.autooa.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Enumeration;

@Component
public class ApiInterceptor implements HandlerInterceptor {

    private static Logger logger = LoggerFactory.getLogger(ApiInterceptor.class);

    private String[] excludeUrls;

    public String[] getExcludeUrls() {
        return excludeUrls;
    }
    public void setExcludeUrls(String[] excludeUrls) {
        this.excludeUrls = excludeUrls;
    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        logger.info("---preHandle---");

        //排除掉的链接
        String uri = request.getRequestURI();
        if(exclude(uri)){
            return true;
        }

        String serverName = request.getServerName();
        String domain = request.getScheme()+"://"+serverName;
        logger.debug("[Interceptor]访问的域名地址=[{}]",domain);

        if(request.getSession().getAttribute("user") == null){
            response.sendRedirect("/login.html");
            return false;
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {

        logger.info("---afterCompletion---");

    }
    /**
     * 不需要权限控制URL
     * @param uri
     * @return
     */
    private boolean exclude(String uri) {
        if (excludeUrls != null) {
            for (String exc : excludeUrls) {
                if (exc.equals(uri)) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * 取得参数值
     * @author SHANSHAN
     */
    public static String getValue(HttpServletRequest request){
        String value = "";
        Enumeration enu = request.getParameterNames();
        while(enu.hasMoreElements()){
            String paraName = (String)enu.nextElement();
            if (!"_dc".equals(paraName) && !"node".equals(paraName)){//_dc的参数不要
                String [] arr = request.getParameterValues(paraName);
                if (arr != null && arr.length > 1){
                    value += paraName+"="+ConvertObjectArrToStr(arr)+";";
                }else{
                    value += paraName+"="+request.getParameter(paraName)+";";
                }
            }
        }
        return value;
    }

    /**
     * 把对象列表,转化成逗号分隔的字符串
     * @author SHANSHAN
     */
    public static String ConvertObjectArrToStr(Object [] arr) {
        String result = "";
        if (arr != null && arr.length > 0) {
            for (int i = 0; i < arr.length; i++) {
                if (!"".equals(String.valueOf(arr[i]))) {
                    result += String.valueOf(arr[i]) + ",";
                }
            }
            if (!"".equals(result)) {
                result = result.substring(0, result.length() - 1);
            }
        }
        return result;
    }

    public static String requestWrapper(HttpServletRequest request) throws IOException {

        StringBuilder stringBuilder = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            InputStream inputStream = request.getInputStream();
            if (inputStream != null) {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                char[] charBuffer = new char[128];
                int bytesRead = -1;
                while ((bytesRead = bufferedReader.read(charBuffer)) > 0) {
                    stringBuilder.append(charBuffer, 0, bytesRead);
                }
            } else {
                stringBuilder.append("");
            }
        } catch (IOException ex) {
            throw ex;
        } finally {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException ex) {
                    throw ex;
                }
            }
        }
        return stringBuilder.toString();
    }

}
