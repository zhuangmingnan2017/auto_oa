<%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-10
  Time: 下午10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>创建模型前填写信息</title>
</head>
<body>
    <form action="/ac/modeler/editor.do" method="get">
        流程作者：<input type="text" name="process_author" /><br>
        流程名称：<input type="text" name="name" /><br>
        流程编号：<input type="text" name="process_id"><br>
        流程名称：<input type="text" name="model_name" ><br>
        模型描述：<input type="text" name="description"><br>
        模型分类：<input type="text" name="category"><br>
        <input type="submit" />
    </form>
</body>
</html>
