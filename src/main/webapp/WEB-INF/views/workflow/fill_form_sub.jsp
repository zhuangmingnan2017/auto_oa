<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:if test="${formData != null and formData.formProperties != null}">
    <c:forEach items="${formData.formProperties}" var="item" varStatus="status">
        <c:set var="itemId" value="${item.id}" scope="request"/>
        <div class="col-md-6 singleForm">
        <div class="form-group">
        <label for="${item.id}" class="col-md-2">${item.name}:</label>

        <c:if test="${item.type.name == 'string' or item.type.name == 'long'}">
                <div class="col-sm-10">
                    <c:if test="${item.writable == null or item.writable == false}">
                        <input type="text" id="${item.id}" name="${item.id}" class="form-control" value="${item.value}" disabled="disabled"/>
                    </c:if>
                    <c:if test="${item.writable == true}">
                        <input type="text" id="${item.id}" name="${item.id}" class="form-control" value="${item.value}" />
                    </c:if>
                </div>
            </div>
        </c:if>

        <c:if test="${item.type.name == 'date'}">
                <%--java代码解决jstl无法链接字符串问题--%>
                <%
                    String itemId = (String)request.getAttribute("itemId");
                    itemId = "pattern_"+itemId;
                    request.setAttribute("itemId", itemId);
                %>
                <div class="col-sm-10">
                <c:if test="${item.writable == null or item.writable == false}">
                    <input type="text" id="${item.id}"
                           name="${item.id}" class="form-control datepicker" value="${item.value}"
                            <c:if test="${typeMetaDataMap != null and typeMetaDataMap[itemId] != null}">
                               data-date-format="${fn:toUpperCase(typeMetaDataMap[itemId])}"
                           </c:if>
                           disabled="disabled" />
                </c:if>
                <c:if test="${item.writable == true}">
                    <input type="text" id="${item.id}"
                           name="${item.id}" class="form-control datepicker" value="${item.value}"
                            <c:if test="${typeMetaDataMap != null and typeMetaDataMap[itemId] != null}">
                               data-date-format="${fn:toUpperCase(typeMetaDataMap[itemId])}"
                           </c:if>
                    />
                </c:if>
                </div>
            </div>
        </c:if>

        <c:if test="${item.type.name == 'enum'}">
            <div class="col-sm-10">
                <select id="${item.id}" name="${item.id}" class="form-control"
                <c:if test="${item.writable == null or item.writable == false}">
                    disabled
                </c:if>
                >
                    <%
                        String itemId = (String)request.getAttribute("itemId");
                        itemId = "enum_"+itemId;
                        request.setAttribute("enumId", itemId);
                    %>
                    <c:if test="${typeMetaDataMap != null and not empty typeMetaDataMap[enumId]}">
                        <c:forEach items="${typeMetaDataMap[enumId]}" var="enumValue">
                            <option value="${enumValue.key}"
                                <c:if test="${item.value != null and item.value == enumValue.key}">
                                        checked
                                </c:if>
                            >${enumValue.value}</option>
                        </c:forEach>
                    </c:if>
                </select>
            </div>
            </div>
        </c:if>
    </div>
    </c:forEach>
</c:if>
