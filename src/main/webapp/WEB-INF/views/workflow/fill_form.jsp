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
        <form action="${instancePre}start.html" method="post" id="formFormEle">
            <input type="hidden" name="definitionId" value="${definitionId}" />
            <c:if test="${formData != null and formData.formProperties != null}">
                <c:forEach items="${formData.formProperties}" var="item" varStatus="status">
                    <c:set var="itemId" value="${item.id}" scope="request"/>

                    <c:if test="${item.type.name == 'string' or item.type.name == 'long'}">
                        <div class="form-group">
                            <label for="${item.id}">${item.name}:</label>
                           <c:if test="${item.writable == null or item.writable == false}">
                               <input type="text" id="${item.id}" name="${item.id}" class="form-control" disabled/>
                           </c:if>
                           <c:if test="${item.writable == true}">
                              <input type="text" id="${item.id}" name="${item.id}" class="form-control" />
                           </c:if>
                        </div>
                    </c:if>

                    <c:if test="${item.type.name == 'date'}">
                        <div class="form-group">
                            <label for="${item.id}">${item.name}:</label>
                            <%--java代码解决jstl无法链接字符串问题--%>
                            <%
                                String itemId = (String)request.getAttribute("itemId");
                                itemId = "pattern_"+itemId;
                                request.setAttribute("itemId", itemId);
                            %>
                            <c:if test="${item.writable == null or item.writable == false}">
                                <input type="text" id="${item.id}"
                                       name="${item.id}" class="form-control datepicker"
                                       <c:if test="${typeMetaDataMap != null and typeMetaDataMap[itemId] != null}">
                                           data-date-format="${fn:toUpperCase(typeMetaDataMap[itemId])}"
                                       </c:if>
                                       disabled />
                            </c:if>
                            <c:if test="${item.writable == true}">
                                <input type="text" id="${item.id}"
                                       name="${item.id}" class="form-control datepicker"
                                       <c:if test="${typeMetaDataMap != null and typeMetaDataMap[itemId] != null}">
                                           data-date-format="${fn:toUpperCase(typeMetaDataMap[itemId])}"
                                       </c:if>
                                />
                            </c:if>

                        </div>
                    </c:if>

                    <c:if test="${item.type.name == 'enum'}">
                        <div class="form-group">
                            <label for="${item.id}">${item.name}:</label>
                            <select id="${item.id}" name="${item.id}">
                                <%
                                    String itemId = (String)request.getAttribute("itemId");
                                    itemId = "enum_"+itemId;
                                    request.setAttribute("enumId", itemId);
                                %>
                                <c:if test="${typeMetaDataMap != null and not empty typeMetaDataMap[enumId]}">
                                    <c:forEach items="${typeMetaDataMap[enumId]}" var="enumValue">
                                        <option value="${enumValue.key}">${enumValue.value}</option>
                                    </c:forEach>
                                </c:if>
                            </select>
                        </div>
                    </c:if>
                </c:forEach>
            </c:if>
            <button type="submit" class="btn btn-default" id="submitBtnEle">
                <i class="glyphicon glyphicon-ok"></i>
                <span>启动流程</span>
            </button>
        </form>
    </div>
<%@ include  file="../common/footer.jsp"%>
</body>
<script type="text/javascript">

    /*  如果是流程节点，则替换表单路径 */
    <c:if test="${taskId != null and definitionId == null}">
        $(function () {
            $("#formFormEle").attr("action", "${taskPre}${taskId}/complete.html");
            $("#submitBtnEle").find("span").text("完成任务");
        });
    </c:if>

</script>
</html>

