<%@ page import="org.activiti.engine.form.FormType" %>
<%@ page import="org.activiti.engine.form.FormProperty" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>启动流程-基于工作流的办公自动化系统</title>
    <%@ include  file="../common/header.jsp"%>
</head>
<body>
<%@ include  file="../common/barside.jsp"%>
    <div class="row">
        <form action="${instancePre}start.html" method="post" id="formFormEle" class="form-horizontal">
            <input type="hidden" name="bid" id="bid" value="${definitionId}" />

            <%--引入表单信息--%>
            <c:import url="fill_form_sub.jsp" />

            <div id="divEle1" class="row"></div>
            <hr />
            <div id="divEle2" class="row"></div>
            <hr />

            <div class="row text-center" id="subBtnDivEle">
                <button type="submit" class="btn btn-primary" id="submitBtnEle">
                    <i class="glyphicon glyphicon-ok"></i>
                    <span>启动流程</span>
                </button>
            </div>
        </form>
    </div>
<%@ include  file="../common/footer.jsp"%>
</body>
<script type="text/javascript">

    /*  如果是流程节点，则替换表单路径 */
    <c:if test="${taskId != null and definitionId == null}">
        $(function () {
            $("#formFormEle").attr("action", "${taskPre}${taskId}/complete.html");
            $("#bid").val('${taskId}');
            $("#submitBtnEle").find("span").text("完成任务");
        });
    </c:if>

    // 对所有表单进行排列，不允许编辑的排前面，hr，再显示允许编辑的内容
    $(function () {

        $("input").each(function (index, content) {
            if($(this).prop("disabled") === true){
                $("#divEle1").append($(this).parents("div.singleForm"));
            }else{
                $("#divEle2").append($(this).parents("div.singleForm"));
            }
        });
        $("select").each(function (index, content) {
            if($(this).prop("disabled") === true){
                $("#divEle1").append($(this).parents("div.singleForm"));
            }else{
                $("#divEle2").append($(this).parents("div.singleForm"));
            }
        })
    });

</script>
</html>

