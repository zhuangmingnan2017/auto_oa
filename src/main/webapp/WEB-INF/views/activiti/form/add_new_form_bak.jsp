<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-5
  Time: 下午12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>表单管理-基于工作流的办公自动化系统</title>
    <%@ include  file="../../common/header.jsp"%>
    <style>
        #components{
            min-height: 600px;
        }
        #target{
            min-height: 200px;
            border: 1px solid #ccc;
            padding: 5px;
        }
        #target .component{
            border: 1px solid #fff;
        }
        #temp{
            width: 500px;
            background: white;
            border: 1px dotted #ccc;
            border-radius: 10px;
        }

        .popover-content form {
            margin: 0 auto;
            width: 213px;
        }
        .popover-content form .btn{
            margin-right: 10px
        }
        #source{
            min-height: 500px;
        }
    </style>
    <link href="${pageContext.request.contextPath}/static/css/formdesign/site.css?2024" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/static/css/bootstrap-2.3.2/bootstrap.css?2024" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include  file="../../common/barside.jsp"%>


<div class="container-fulid">
    <div class="row clearfix">
        <div class="col-md-6">
            <div class="clearfix">
                <h2>我的表单</h2>
                <hr>
                <div id="build">
                    <form id="target" class="form-horizontal">
                        <fieldset>
                            <div id="legend" class="component" rel="popover" title="编辑属性" trigger="manual"
                                 data-content="
                <form class='form'>
                  <div class='controls'>
                    <label class='control-label'>表单名称</label> <input type='text' id='orgvalue' placeholder='请输入表单名称'>
                    <hr/>
                    <button class='btn btn-info' type='button'>确定</button><button class='btn btn-danger' type='button'>取消</button>
                  </div>
                </form>"
                            >
                                <input type="hidden" name="form_name" value="" class="leipiplugins" leipiplugins="form_name"/>
                                <legend class="leipiplugins-orgvalue">点击填写表单名</legend>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <h2>拖拽下面的控件到左侧</h2>
            <hr>
            <div class="tabbable">
                <ul class="nav nav-tabs" id="navtab">
                    <li class="active"><a href="#1" data-toggle="tab">常用控件</a></li>
                    <li class><a href="#2" data-toggle="tab">定制控件</a></li>
                    <li class><a id="sourcetab" href="#5" data-toggle="tab">源代码</a></li>
                </ul>
                <form class="form-horizontal" id="components">
                    <fieldset>
                        <div class="tab-content">

                            <div class="tab-pane active" id="1">


                                <!-- Text start -->
                                <div class="control-group component" rel="popover" title="文本框控件" trigger="manual"
                                     data-content="
  <form class='form'>
    <div class='controls'>
      <label class='control-label'>控件名称</label> <input type='text' id='orgname' placeholder='必填项'>
      <label class='control-label'>默认值</label> <input type='text' id='orgvalue' placeholder='默认值'>
      <hr/>
      <button class='btn btn-info' type='button'>确定</button><button class='btn btn-danger' type='button'>取消</button>
    </div>
  </form>"
                                >
                                    <!-- Text -->
                                    <label class="control-label leipiplugins-orgname">文本框</label>
                                    <div class="controls">
                                        <input name="leipiNewField" type="text" placeholder="默认值" title="文本框" value="" class="leipiplugins" leipiplugins="text"/>
                                    </div>

                                </div>
                                <!-- Text end -->


                                <!-- Textarea start -->
                                <div class="control-group component" rel="popover" title="多行文本控件" trigger="manual"
                                     data-content="
  <form class='form'>
    <div class='controls'>
      <label class='control-label'>控件名称</label> <input type='text' id='orgname' placeholder='必填项'>
      <label class='control-label'>默认值</label> <input type='text' id='orgvalue' placeholder='默认值'>
      <hr/>
      <button class='btn btn-info' type='button'>确定</button><button class='btn btn-danger' type='button'>取消</button>
    </div>
  </form>"
                                >
                                    <!-- Textarea -->
                                    <label class="control-label leipiplugins-orgname">多行文本</label>
                                    <div class="controls">
                                        <div class="textarea">
                                            <textarea title="多行文本" name="leipiNewField" class="leipiplugins" leipiplugins="textarea"/> </textarea>
                                        </div>
                                    </div>
                                </div>
                                <!-- Textarea end -->

                                <!-- Select start -->
                                <div class="control-group component" rel="popover" title="下拉控件" trigger="manual"
                                     data-content="
  <form class='form'>
    <div class='controls'>
      <label class='control-label'>控件名称</label> <input type='text' id='orgname' placeholder='必填项'>
      <label class='control-label'>下拉选项</label>
      <textarea style='min-height: 200px' id='orgvalue'></textarea>
      <p class='help-block'>一行一个选项</p>
      <hr/>
      <button class='btn btn-info' type='button'>确定</button><button class='btn btn-danger' type='button'>取消</button>
    </div>
  </form>"
                                >
                                    <!-- Select -->
                                    <label class="control-label leipiplugins-orgname">下拉菜单</label>
                                    <div class="controls">
                                        <select name="leipiNewField" title="下拉菜单" class="leipiplugins" leipiplugins="select">
                                            <option>选项一</option>
                                            <option>选项二</option>
                                            <option>选项三</option>
                                        </select>
                                    </div>

                                </div>
                                <!-- Select end -->


                                <!-- Select start -->
                                <div class="control-group component" rel="popover" title="多选下拉控件" trigger="manual"
                                     data-content="
  <form class='form'>
    <div class='controls'>
      <label class='control-label'>控件名称</label> <input type='text' id='orgname' placeholder='必填项'>
      <label class='control-label'>下拉选项</label>
      <textarea style='min-height: 200px' id='orgvalue'></textarea>
      <p class='help-block'>一行一个选项</p>
      <hr/>
      <button class='btn btn-info' type='button'>确定</button><button class='btn btn-danger' type='button'>取消</button>
    </div>
  </form>"
                                >
                                    <!-- Select -->
                                    <label class="control-label leipiplugins-orgname">下拉菜单</label>
                                    <div class="controls">
                                        <select multiple="multiple" name="leipiNewField" title="下拉菜单" class="leipiplugins" leipiplugins="select">
                                            <option>选项一</option>
                                            <option>选项二</option>
                                            <option>选项三</option>
                                            <option>选项四</option>
                                        </select>
                                    </div>

                                </div>
                                <!-- Select end -->


                                <!-- Multiple Checkboxes start -->
                                <div class="control-group component" rel="popover" title="复选控件" trigger="manual"
                                     data-content="
  <form class='form'>
    <div class='controls'>
      <label class='control-label'>控件名称</label> <input type='text' id='orgname' placeholder='必填项'>
      <label class='control-label'>复选框</label>
      <textarea style='min-height: 200px' id='orgvalue'></textarea>
      <p class='help-block'>一行一个选项</p>
      <hr/>
      <button class='btn btn-info' type='button'>确定</button><button class='btn btn-danger' type='button'>取消</button>
    </div>
  </form>"
                                >
                                    <label class="control-label leipiplugins-orgname">复选框</label>
                                    <div class="controls leipiplugins-orgvalue">
                                        <!-- Multiple Checkboxes -->
                                        <label class="checkbox inline">
                                            <input type="checkbox" name="leipiNewField" title="复选框" value="选项1" class="leipiplugins" leipiplugins="checkbox" orginline="inline">
                                            选项1
                                        </label>
                                        <label class="checkbox inline">
                                            <input type="checkbox" name="leipiNewField" title="复选框" value="选项2" class="leipiplugins" leipiplugins="checkbox" orginline="inline">
                                            选项2
                                        </label>
                                    </div>

                                </div>

                                <div class="control-group component" rel="popover" title="复选控件" trigger="manual"
                                     data-content="
  <form class='form'>
    <div class='controls'>
      <label class='control-label'>控件名称</label> <input type='text' id='orgname' placeholder='必填项'>
      <label class='control-label'>复选框</label>
      <textarea style='min-height: 200px' id='orgvalue'></textarea>
      <p class='help-block'>一行一个选项</p>
      <hr/>
      <button class='btn btn-info' type='button'>确定</button><button class='btn btn-danger' type='button'>取消</button>
    </div>
  </form>"
                                >
                                    <label class="control-label leipiplugins-orgname">复选框</label>
                                    <div class="controls leipiplugins-orgvalue">
                                        <!-- Multiple Checkboxes -->
                                        <label class="checkbox">
                                            <input type="checkbox" name="leipiNewField" title="复选框" value="选项1" class="leipiplugins" leipiplugins="checkbox">
                                            选项1
                                        </label>
                                        <label class="checkbox">
                                            <input type="checkbox" name="leipiNewField" title="复选框" value="选项2" class="leipiplugins" leipiplugins="checkbox">
                                            选项2
                                        </label>
                                    </div>
                                </div>
                                <!-- Multiple Checkboxes end -->

                                <!-- Multiple radios start -->
                                <div class="control-group component" rel="popover" title="单选控件" trigger="manual"
                                     data-content="
  <form class='form'>
    <div class='controls'>
      <label class='control-label'>控件名称</label> <input type='text' id='orgname' placeholder='必填项'>
      <label class='control-label'>单选框</label>
      <textarea style='min-height: 200px' id='orgvalue'></textarea>
      <p class='help-block'>一行一个选项</p>
      <hr/>
      <button class='btn btn-info' type='button'>确定</button><button class='btn btn-danger' type='button'>取消</button>
    </div>
  </form>"
                                >
                                    <label class="control-label leipiplugins-orgname">单选</label>
                                    <div class="controls leipiplugins-orgvalue">
                                        <!-- Multiple Checkboxes -->
                                        <label class="radio inline">
                                            <input type="radio" name="leipiNewField" title="单选框" value="选项1" class="leipiplugins" leipiplugins="radio" orginline="inline">
                                            选项1
                                        </label>
                                        <label class="radio inline">
                                            <input type="radio" name="leipiNewField" title="单选框" value="选项2" class="leipiplugins" leipiplugins="radio" orginline="inline">
                                            选项2
                                        </label>
                                    </div>
                                </div>

                                <div class="control-group component" rel="popover" title="单选控件" trigger="manual"
                                     data-content="
  <form class='form'>
    <div class='controls'>
      <label class='control-label'>控件名称</label> <input type='text' id='orgname' placeholder='必填项'>
      <label class='control-label'>单选框</label>
      <textarea style='min-height: 200px' id='orgvalue'></textarea>
      <p class='help-block'>一行一个选项</p>
      <hr/>
      <button class='btn btn-info' type='button'>确定</button><button class='btn btn-danger' type='button'>取消</button>
    </div>
  </form>"
                                >
                                    <label class="control-label leipiplugins-orgname">单选</label>
                                    <div class="controls leipiplugins-orgvalue">
                                        <!-- Multiple Checkboxes -->
                                        <label class="radio">
                                            <input type="radio" name="leipiNewField" title="单选框" value="选项1" class="leipiplugins" leipiplugins="radio">
                                            选项1
                                        </label>
                                        <label class="radio">
                                            <input type="radio" name="leipiNewField" title="单选框" value="选项2" class="leipiplugins" leipiplugins="radio">
                                            选项2
                                        </label>
                                    </div>
                                </div>
                                <!-- Multiple radios end -->


                            </div>

                            <div class="tab-pane" id="2">



                                <div class="control-group component" rel="popover" title="文件上传" trigger="manual"
                                     data-content="
                  <form class='form'>
                    <div class='controls'>
                      <label class='control-label'>控件名称</label> <input type='text' id='orgname' placeholder='必填项'>
                      <hr/>
                      <button class='btn btn-info' type='button'>确定</button><button class='btn btn-danger' type='button'>取消</button>
                    </div>
                  </form>"
                                >
                                    <label class="control-label leipiplugins-orgname">文件上传</label>

                                    <!-- File Upload -->
                                    <div>
                                        <input type="file" name="leipiNewField" title="文件上传" class="leipiplugins" leipiplugins="uploadfile">
                                    </div>
                                </div>


                            </div>



                            <div class="tab-pane" id="5">
                                <textarea id="source" class="col-md-6"></textarea>
                            </div>


                    </fieldset>
                </form>
            </div><!--tab-content-->
        </div><!---tabbable-->
    </div> <!-- row -->

</div> <!-- /container -->
<%@ include  file="../../common/footer.jsp"%>
<%--<script src="${pageContext.request.contextPath}/static/js/extend/jquery-1.7.2.min.js?2024" charset="utf-8"></script>--%>
<script src="${pageContext.request.contextPath}/static/js/extend/bootstrap-2.3.2/bootstrap.js?2024"></script>
<script src="${pageContext.request.contextPath}/static/js/extend/formdesign/leipi.form.build.core.js?2024"></script>
<script src="${pageContext.request.contextPath}/static/js/extend/formdesign/leipi.form.build.plugins.js?2024"></script>

<script type="text/javascript">

</script>
</body>
<%--
<c:forEach items="${list}" begin="0" var="item">
        部署流程id:${item.id}<br />
        名称：${item.name}<br />
        部署时间：<fmt:formatDate value="${item.deploymentTime}" pattern="yyyy-MM-dd"/><br />
        流程分类：${item.category}<br />
        流程的key：${item.key}<br />
        tenantId:${item.tenantId} <br />
        <form action="/ac/model/del.do" method="post" >
            <input type="hidden" name="deploymentId" value="${item.id}" />
            <input type="submit" value="删除流程部署" />
        </form>
    </c:forEach>
--%>
</html>
