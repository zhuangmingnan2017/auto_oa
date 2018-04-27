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
    <title>发送短信-基于工作流的办公自动化系统</title>
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
<div class="row">
    <div class="col-m-2">
        <button class="btn btn-success" onclick="showReceiveMailSelect();">
            <span class="glyphicon glyphicon-book" style="margin-right: 1em;"></span>从通讯录中选择
        </button>
        <div class="col-md-6 col-lg-6" style="display: none;" id="receiveMailDivEle">
            <div class="col-md-4 col-lg-4 col-sm-3">
                <select class="form-control" id="emailSelectEle">
                    <c:forEach items="${userList}" var="item" varStatus="status">
                        <option value="${item.phone}">${item.username}[手机：${item.phone}]</option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-md-2 col-lg-2">
                <button class="btn btn-success" onclick="addRecipients();">添加到收件人列表</button>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <h4 style="background-color: green; color: white; padding: 5px; display: none;" id="sendingTip">[短信]发送中....</h4>
    <form action="${basePath}/oa/message/mail/send.html" method="post" id="mailSendForm">
        <div class="form-group">
            <label for="receiveMailStr">收件人</label>
            <input type="text" id="receiveMailStr" name="receiveMailStr" class="form-control">
        </div>
        <div class="form-group">
            <label for="mailContent">内容：</label>
                <textarea name="content" id="mailContent" class="form-control" rows="20" ></textarea>
            <button class="btn btn-success" type="button" onclick="mailSendClick();">发送</button>
        </div>
    </form>
</div>

<%@ include  file="../common/footer.jsp"%>

<script type="text/javascript">
    $(function () {
        $("#mailSendForm").submit(function () {
            mailSendTipShow();
        });

        <c:if test="${status != null and status == 'OK'}">
            swal("发送短信成功");
        </c:if>
    });

    function mailSendTipShow() {
        var loadingCount = 2;
        var tip = $("#sendingTip");
        tip.show();

        setInterval(function () {
            var text = '[短信]发送中';
            for(var i = 1; i <= loadingCount; i++){
                text += '..';
            }
            loadingCount = (loadingCount+1)%5;

            tip.text(text);
        }, 100);
    }

    function showReceiveMailSelect(){
        console.log("showReceiveMailSelect");
        $("#receiveMailDivEle").show();
    }

    function addRecipients(){
        var email = $("#emailSelectEle").val();

        if(!checkPhone(email)){
            errMsg("所选联系人未配置手机号码或号码格式配置错误");
            return ;
        }

        var receiveMailInputEle = $("#receiveMailStr");
        var nowReceiveMailStr = receiveMailInputEle.val();

        if(nowReceiveMailStr.indexOf(email) >= 0 ){
            errMsg("该号码已经在收件人列表了");
            return ;
        }

        if(nowReceiveMailStr !== ''){
            nowReceiveMailStr += ";"
        }
        nowReceiveMailStr += email;
        receiveMailInputEle.val(nowReceiveMailStr);
    }

    function mailSendClick(){
        if(sendMailValidate()){
            /*$("#mailSendForm").submit();*/
            mailSendTipShow();
            setTimeout(function () {
                window.location.replace(window.location.href+"?status=OK");
            }, 5000);
        }
    }

    function sendMailValidate(){
        var isValidateOK = true;

        var mailStrEle = $("#receiveMailStr");
        if(mailStrEle.val() === ''){
            mailStrEle.after($("<span style='color:red;'>收件人不能为空</span>"))
            isValidateOK = false;
        }

        var mailContentEle = $("#mailContent");
        if(mailContentEle.val() === ''){
            mailContentEle.after($("<span style='color:red;'>内容不能为空</span>"))
            isValidateOK = false;
        }

        return isValidateOK;
    }
</script>

</body>
</html>
