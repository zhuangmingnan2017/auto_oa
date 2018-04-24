<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-4
  Time: 上午10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>部门管理-基于工作流的办公自动化系统</title>
    <%@ include  file="../common/header.jsp"%>

    <style>
        .choice_tr{
            background-color: lightgrey;
        }
        ul li{
            text-decoration: none;!important;
        }
        .errorInput{
            border: 2px solid red;
        }
        .submenuTr{
            color:black;
            background-color: lightcyan;
        }
        #menuTable button{
            padding:5px 10px;
            font-size:12px;
            line-height:1.5;
            border-radius:3px
        }
    </style>
</head>

<body>
<%@ include  file="../common/barside.jsp"%>
<%--菜单栏--%>
<div class="row">
    <ul style="text-decoration: none;">
        <li>
            <button class="btn btn-primary" onclick="addNewDepartment();">新增部门</button>
        </li>
    </ul>
</div>
<%--权限列表--%>
<div class="row">
    <h4 style="background-color: green; color: white; padding: 5px; display: none;" id="sendingTip">[邮件]发送中....</h4>
    <form action="${basePath}/oa/message/mail/send.html" method="post" id="mailSendForm">
        <div class="form-group">
            <label for="receiveMailStr">收件人</label>
                <input type="text" id="receiveMailStr" name="receiveMailStr" class="form-control">
        </div>
        <div class="form-group">
            <label for="mailTitle">标题</label>
                <input type="text" id="mailTitle" name="title" class="form-control">
        </div>
        <div class="form-group">
            <label for="mailContent">内容：</label>
                <textarea name="content" id="mailContent" class="form-control"></textarea>
            <button class="btn btn-success">发送</button>
        </div>
    </form>
</div>

<%@ include  file="../common/footer.jsp"%>

<script type="text/javascript">
    $(function () {
        $("#mailSendForm").submit(function () {
            mailSendTipShow();
        });
    });

    function mailSendTipShow() {
        var loadingCount = 2;
        var tip = $("#sendingTip");
        tip.show();

        setInterval(function () {
            var text = '[邮件]发送中';
            for(var i = 1; i <= loadingCount; i++){
                text += '..';
            }
            loadingCount = (loadingCount+1)%5;

            tip.text(text);
        }, 100);
    }
</script>

</body>
</html>
