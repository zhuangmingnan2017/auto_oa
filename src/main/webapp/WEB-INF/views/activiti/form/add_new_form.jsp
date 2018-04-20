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
    <%--<link href="${pageContext.request.contextPath}/static/css/bootstrap-2.3.2/bootstrap.css?2024" rel="stylesheet" type="text/css" />--%>
</head>
<body>
<%@ include  file="../../common/barside.jsp"%>


<div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">最后一步</h4>
            </div>
            <form action="${pageContext.request.contextPath}/ac/form/add.do" method="post">
                <div class="modal-body center">
                    <div class="form-group">
                    <label>
                        请输入表单名称：
                        <input type="text" name="form_name" class="form-control"/>
                    </label>
                    </div>
                    <div class="form-group">
                        <label>
                            请输入表单编码：
                            <input type="text" name="form_key" class="form-control"/>
                        </label>
                    </div>
                    <div class="form-group">
                    <label>
                        请输入描述：
                        <input type="text" name="description"  class="form-control"/>
                    </label>
                    </div>
                    <input type="hidden" id='formContent' name="content" value="" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <input type="submit" class="btn btn-primary" value="确认添加"/>
                    <%--<button type="button" class="btn btn-primary">确认部署</button>--%>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal" id="previewFormModal" tabindex="-1" role="dialog" aria-labelledby="previewFormModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="previewFormModalLabel" id="previewFormTitle">表单预览</h4>
            </div>
            <div class="modal-body" id="previewFormBody" style="width: 100%;padding: auto;">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>


<div class="row">

    <div class="well well-small">
<%--<span class="pull-right">
    <a href="http://formdesign.leipi.org/demo.html" class="btn btn-success btn-small">使用实例演示</a>
</span>--%>

        <p>
            单击下列按钮即可增加相应组件：<br /><br />
            <button type="button" onclick="leipiFormDesign.exec('text');" class="btn btn-info">文本框</button>
            <button type="button" onclick="leipiFormDesign.exec('textarea');" class="btn btn-info">多行文本</button>
            <button type="button" onclick="leipiFormDesign.exec('select');" class="btn btn-info">下拉菜单</button>
            <button type="button" onclick="leipiFormDesign.exec('radios');" class="btn btn-info">单选框</button>
            <button type="button" onclick="leipiFormDesign.exec('checkboxs');" class="btn btn-info">复选框</button>
            <button type="button" onclick="leipiFormDesign.exec('macros');" class="btn btn-info">宏控件</button>
           <%-- <button type="button" onclick="leipiFormDesign.exec('progressbar');" class="btn btn-info">进度条</button>
            <button type="button" onclick="leipiFormDesign.exec('qrcode');" class="btn btn-info">二维码</button>
            <button type="button" onclick="leipiFormDesign.exec('listctrl');" class="btn btn-info">列表控件</button>--%>
        </p>
    </div>

</div>

<div class="row-fluid">
        <div class="col-md-12 col-xs-12">

            <script id="myFormDesign" type="text/plain" style="width:100%;">
                <p style="text-align: center;">
                    <span style="font-size: 24px;">示例表</span>
                </p>
                <table class="table table-bordered">
                    <tbody>
                    <tr class="firstRow">
                        <td valign="top" style="word-break: break-all; border-color: rgb(221, 221, 221);">
                            文本框
                        </td>
                        <td valign="top" style="word-break: break-all; border-color: rgb(221, 221, 221);" width="227">
                            <input style="text-align: left; width: 150px;" title="文本框" value="雷劈网" name="leipiNewField" orgheight="" orgwidth="150" orgalign="left" orgfontsize="" orghide="0" leipiplugins="text" orgtype="text"/>
                        </td>
                        <td valign="top" style="word-break: break-all; border-color: rgb(221, 221, 221);" width="85">
                            下拉菜单
                        </td>
                        <td valign="top" style="border-color: rgb(221, 221, 221);" width="312">
                            {|-<span leipiplugins="select"><select name="leipiNewField" title="下拉菜单" leipiplugins="select" size="1" orgwidth="150" style="width: 150px;"><option value="下拉">
                    下拉
                </option>
                <option value="菜单">
                    菜单
                </option></select>&nbsp;&nbsp;</span>-|}
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" style="word-break: break-all; border-color: rgb(221, 221, 221);">
                            单选
                        </td>
                        <td valign="top" style="word-break: break-all; border-color: rgb(221, 221, 221);" width="41">
                            {|-<span leipiplugins="radios" title="单选" name="leipiNewField"><input value="单选1" type="radio" checked="checked" name="radio1"/>单选1&nbsp;<input value="单选2" name="radio1" type="radio"/>单选2&nbsp;</span>-|}
                        </td>
                        <td valign="top" style="word-break: break-all; border-color: rgb(221, 221, 221);" width="85">
                            复选
                        </td>
                        <td valign="top" style="word-break: break-all; border-color: rgb(221, 221, 221);" width="312">
                            {|-<span leipiplugins="checkboxs" title="复选"><input name="leipiNewField" value="复选1" type="checkbox" checked="checked"/>复选1&nbsp;<input name="leipiNewField" value="复选2" type="checkbox" checked="checked"/>复选2&nbsp;<input name="leipiNewField" value="复选3" type="checkbox"/>复选3&nbsp;</span>-|}
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" style="word-break: break-all; border-color: rgb(221, 221, 221);">
                            宏控件
                        </td>
                        <td valign="top" style="border-color: rgb(221, 221, 221);" width="41">
                            <input name="leipiNewField" type="text" value="{macros}" title="宏控件" leipiplugins="macros" orgtype="sys_date_cn" orghide="0" orgfontsize="12" orgwidth="150" style="font-size: 12px; width: 150px;"/>
                        </td>
                        <td valign="top" style="word-break: break-all; border-color: rgb(221, 221, 221);" width="85">
                            二维码
                        </td>
                        <td valign="top" style="border-color: rgb(221, 221, 221);" width="312">
                            <img name="leipiNewField" title="雷劈网" value="http://www.leipi.org" orgtype="url" leipiplugins="qrcode" src="${pageContext.request.contextPath}/static/js/extend/ueditor/formdesign/images/qrcode.gif" orgwidth="40" orgheight="40" style="width: 40px; height: 40px;"/>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <p>
                    <input name="leipiNewField" leipiplugins="listctrl" type="text" value="{列表控件}" readonly="readonly" title="采购商品列表" orgtitle="商品名称`数量`单价`小计`描述`" orgcoltype="text`int`int`int`text`" orgunit="```元``" orgsum="0`0`0`1`0`" orgcolvalue="`````" orgwidth="100%" style="width: 50%;"/>
                </p>
                <p>
                    <textarea title="多行文本" name="leipiNewField" leipiplugins="textarea" value="" orgrich="0" orgfontsize="12" orgwidth="50%" orgheight="80" style="font-size:12px;width:50%;height:80px;"></textarea>
                </p>
            </script>
        </div>
</div>
<%@ include  file="../../common/footer.jsp"%>
<%--<script src="${pageContext.request.contextPath}/static/js/extend/jquery-1.7.2.min.js?2024" charset="utf-8"></script>--%>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/extend/ueditor/ueditor.config.js?2023"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/extend/ueditor/ueditor.all.js?2023"> </script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/extend/ueditor/lang/zh-cn/zh-cn.js?2023"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/extend/ueditor/formdesign/leipi.formdesign.v4.js?2023"></script>
<script type="text/javascript">

    var leipiEditor = UE.getEditor('myFormDesign',{
        //allowDivTransToP: false,//阻止转换div 为p
        toolleipi:true,//是否显示，设计器的 toolbars
        textarea: 'design_content',
        //这里可以选择自己需要的工具按钮名称,此处仅选择如下五个
        toolbars:[[
            'fullscreen', 'source', '|', 'undo', 'redo', '|','bold', 'italic', 'underline', 'fontborder', 'strikethrough',  'removeformat', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist','|', 'fontfamily', 'fontsize', '|', 'indent', '|', 'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|',  'link', 'unlink',  '|',  'horizontal',  'spechars',  'wordimage', '|', 'inserttable', 'deletetable',  'mergecells',  'splittocells']],
        //focus时自动清空初始化时的内容
        //autoClearinitialContent:true,
        //关闭字数统计
        wordCount:false,
        //关闭elementPath
        elementPathEnabled:false,
        //默认的编辑区域高度
        initialFrameHeight:300
        ///,iframeCssUrl:"css/bootstrap/css/bootstrap.css" //引入自身 css使编辑器兼容你网站css
        //更多其他参数，请参考ueditor.config.js中的配置项
    });

    var leipiFormDesign = {
        /*执行控件*/
        exec : function (method) {
            leipiEditor.execCommand(method);
        },
        /*
            Javascript 解析表单
            template 表单设计器里的Html内容
            fields 字段总数
        */
        parse_form:function(template,fields)
        {
            //正则  radios|checkboxs|select 匹配的边界 |--|  因为当使用 {} 时js报错
            var preg =  /(\|-<span(((?!<span).)*leipiplugins=\"(radios|checkboxs|select)\".*?)>(.*?)<\/span>-\||<(img|input|textarea|select).*?(<\/select>|<\/textarea>|\/>))/gi,preg_attr =/(\w+)=\"(.?|.+?)\"/gi,preg_group =/<input.*?\/>/gi;
            if(!fields) fields = 0;

            var template_parse = template,template_data = new Array(),add_fields=new Object(),checkboxs=0;

            var pno = 0;
            template.replace(preg, function(plugin,p1,p2,p3,p4,p5,p6){
                var parse_attr = new Array(),attr_arr_all = new Object(),name = '', select_dot = '' , is_new=false;
                var p0 = plugin;
                var tag = p6 ? p6 : p4;
                //alert(tag + " \n- t1 - "+p1 +" \n-2- " +p2+" \n-3- " +p3+" \n-4- " +p4+" \n-5- " +p5+" \n-6- " +p6);

                if(tag == 'radios' || tag == 'checkboxs')
                {
                    plugin = p2;
                }else if(tag == 'select')
                {
                    plugin = plugin.replace('|-','');
                    plugin = plugin.replace('-|','');
                }
                plugin.replace(preg_attr, function(str0,attr,val) {
                    if(attr=='name')
                    {
                        if(val=='leipiNewField')
                        {
                            is_new=true;
                            fields++;
                            val = 'data_'+fields;
                        }
                        name = val;
                    }

                    if(tag=='select' && attr=='value')
                    {
                        if(!attr_arr_all[attr]) attr_arr_all[attr] = '';
                        attr_arr_all[attr] += select_dot + val;
                        select_dot = ',';
                    }else
                    {
                        attr_arr_all[attr] = val;
                    }
                    var oField = new Object();
                    oField[attr] = val;
                    parse_attr.push(oField);
                })
                /*alert(JSON.stringify(parse_attr));return;*/
                if(tag =='checkboxs') /*复选组  多个字段 */
                {
                    plugin = p0;
                    plugin = plugin.replace('|-','');
                    plugin = plugin.replace('-|','');
                    var name = 'checkboxs_'+checkboxs;
                    attr_arr_all['parse_name'] = name;
                    attr_arr_all['name'] = '';
                    attr_arr_all['value'] = '';

                    attr_arr_all['content'] = '<span leipiplugins="checkboxs"  title="'+attr_arr_all['title']+'">';
                    var dot_name ='', dot_value = '';
                    p5.replace(preg_group, function(parse_group) {
                        var is_new=false,option = new Object();
                        parse_group.replace(preg_attr, function(str0,k,val) {
                            if(k=='name')
                            {
                                if(val=='leipiNewField')
                                {
                                    is_new=true;
                                    fields++;
                                    val = 'data_'+fields;
                                }

                                attr_arr_all['name'] += dot_name + val;
                                dot_name = ',';

                            }
                            else if(k=='value')
                            {
                                attr_arr_all['value'] += dot_value + val;
                                dot_value = ',';

                            }
                            option[k] = val;
                        });

                        if(!attr_arr_all['options']) attr_arr_all['options'] = new Array();
                        attr_arr_all['options'].push(option);
                        //if(!option['checked']) option['checked'] = '';
                        var checked = option['checked'] !=undefined ? 'checked="checked"' : '';
                        attr_arr_all['content'] +='<input type="checkbox" name="'+option['name']+'" value="'+option['value']+'"  '+checked+'/>'+option['value']+'&nbsp;';

                        if(is_new)
                        {
                            var arr = new Object();
                            arr['name'] = option['name'];
                            arr['leipiplugins'] = attr_arr_all['leipiplugins'];
                            add_fields[option['name']] = arr;

                        }

                    });
                    attr_arr_all['content'] += '</span>';

                    //parse
                    template = template.replace(plugin,attr_arr_all['content']);
                    template_parse = template_parse.replace(plugin,'{'+name+'}');
                    template_parse = template_parse.replace('{|-','');
                    template_parse = template_parse.replace('-|}','');
                    template_data[pno] = attr_arr_all;
                    checkboxs++;

                }else if(name)
                {
                    if(tag =='radios') /*单选组  一个字段*/
                    {
                        plugin = p0;
                        plugin = plugin.replace('|-','');
                        plugin = plugin.replace('-|','');
                        attr_arr_all['value'] = '';
                        attr_arr_all['content'] = '<span leipiplugins="radios" name="'+attr_arr_all['name']+'" title="'+attr_arr_all['title']+'">';
                        var dot='';
                        p5.replace(preg_group, function(parse_group) {
                            var option = new Object();
                            parse_group.replace(preg_attr, function(str0,k,val) {
                                if(k=='value')
                                {
                                    attr_arr_all['value'] += dot + val;
                                    dot = ',';
                                }
                                option[k] = val;
                            });
                            option['name'] = attr_arr_all['name'];
                            if(!attr_arr_all['options']) attr_arr_all['options'] = new Array();
                            attr_arr_all['options'].push(option);
                            //if(!option['checked']) option['checked'] = '';
                            var checked = option['checked'] !=undefined ? 'checked="checked"' : '';
                            attr_arr_all['content'] +='<input type="radio" name="'+attr_arr_all['name']+'" value="'+option['value']+'"  '+checked+'/>'+option['value']+'&nbsp;';

                        });
                        attr_arr_all['content'] += '</span>';

                    }else
                    {
                        attr_arr_all['content'] = is_new ? plugin.replace(/leipiNewField/,name) : plugin;
                    }
                    //attr_arr_all['itemid'] = fields;
                    //attr_arr_all['tag'] = tag;
                    template = template.replace(plugin,attr_arr_all['content']);
                    template_parse = template_parse.replace(plugin,'{'+name+'}');
                    template_parse = template_parse.replace('{|-','');
                    template_parse = template_parse.replace('-|}','');
                    if(is_new)
                    {
                        var arr = new Object();
                        arr['name'] = name;
                        arr['leipiplugins'] = attr_arr_all['leipiplugins'];
                        add_fields[arr['name']] = arr;
                    }
                    template_data[pno] = attr_arr_all;


                }
                pno++;
            })
            var parse_form = new Object({
                'fields':fields,//总字段数
                'template':template,//完整html
                'parse':template_parse,//控件替换为{data_1}的html
                'data':template_data,//控件属性
                'add_fields':add_fields//新增控件
            });
            return JSON.stringify(parse_form);
        },
        /*type  =  save 保存设计 versions 保存版本  close关闭 */
        fnCheckForm : function ( type ) {
            if(leipiEditor.queryCommandState( 'source' ))
                leipiEditor.execCommand('source');//切换到编辑模式才提交，否则有bug

            if(leipiEditor.hasContents()){
                leipiEditor.sync();/*同步内容*/

                /*alert("你点击了保存,这里可以异步提交，请自行处理....");*/

                //--------------以下仅参考-----------------------------------------------------------------------------------------------------
                var type_value='',formid=0,fields=$("#fields").val(),formeditor='';

                if( typeof type!=='undefined' ){
                    type_value = type;
                }
                //获取表单设计器里的内容
                formeditor=leipiEditor.getContent();
                //解析表单设计器控件
                var parse_form = this.parse_form(formeditor,fields);
                //alert(parse_form);

                //console.log(formeditor);
                /* console.log("==========");
                 console.log(parse_form);*/

                try{
                    $('#formContent').val(formeditor);
                    $('#myModal').modal('show');
                }catch (e) {
                    console.log(e);
                }

                return false;

                //异步提交数据
                $.ajax({
                    type: 'POST',
                    url : '/index.php?s=/index/parse.html',
                    //dataType : 'json',
                    data : {'type' : type_value,'formid':formid,'parse_form':parse_form},
                    success : function(data){
                        if(confirm('查看js解析后，提交到服务器的数据，请临时允许弹窗'))
                        {
                            win_parse=window.open('','','width=800,height=600');
                            //这里临时查看，所以替换一下，实际情况下不需要替换
                            data  = data.replace(/<\/+textarea/,'&lt;textarea');
                            win_parse.document.write('<textarea style="width:100%;height:100%">'+data+'</textarea>');
                            win_parse.focus();
                        }

                        /*
                      if(data.success==1){
                          alert('保存成功');
                          $('#submitbtn').button('reset');
                      }else{
                          alert('保存失败！');
                      }*/
                    }
                });

            } else {
                alert('表单内容不能为空！')
                $('#submitbtn').button('reset');
                return false;
            }
        } ,
        /*预览表单*/
        fnReview : function (){
            if(leipiEditor.queryCommandState( 'source' ))
                leipiEditor.execCommand('source');/*切换到编辑模式才提交，否则部分浏览器有bug*/

            if(leipiEditor.hasContents()) {
                leipiEditor.sync();
                /*同步内容*/

                //alert("你点击了预览,请自行处理....");

                var formeditor = leipiEditor.getContent();
                $('#previewFormBody').html(formeditor);
                $('#previewFormTitle').text('表单预览');
                $('#previewFormModal').modal('show');

                return true;
            }
        }
    };
</script>
<script type="text/javascript">
    $(document).ready(function () {
        <c:if test="${form != null}">
            console.log("a");
            setTimeout(function () {
                $("#ueditor_0").contents().find('body').html('${form.content}');
            }, 300);
        </c:if>
    });
</script>
</body>
</html>
