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
    <title>用户管理-基于工作流的办公自动化系统</title>
    <%@ include  file="../common/header.jsp"%>

    <style>
        .errorInput{
            border: 2px solid red;
        }

        .currChooseInput{
            border: 2px solid green;
        }
    </style>
</head>

<body>
<%@ include  file="../common/barside.jsp"%>

<div class="container">
    <div class="row">
        <h3><a href="#" onclick="toggleDiv(this);" class="glyphicon glyphicon-upload"></a>部门日程</h3><br />
        <%--<p><button class="btn btn-default btn-sm" onclick="addSchedule('dept');">新增部门日程</button><small>（部门成员均可见）</small></p>--%>
        <hr />
    </div>
    <div class="row" id="dept_schedule_row">
        <div class="col-md-3">
            <div class="thumbnail">
                <div class="caption">
                    <h3>大会议室开会</h3>
                    <p>2018/4/22 12：00：00</p>
                    <p><a href="#" class="btn btn-primary" role="button">完成</a> <a href="#" class="btn btn-danger" role="button">删除</a></p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <h3><a href="#" onclick="toggleDiv(this);" class="glyphicon glyphicon-upload"></a>我的日程</h3>
        <%--<p><button class="btn btn-default btn-sm"  onclick="addSchedule('my');">新增我的日程</button><small>（仅自己可见可见）</small></p>--%>
        <hr />
    </div>
    <div class="row" id="my_schedule_row">
        <div class="col-md-3">
            <div class="thumbnail">
                <div class="caption">
                    <h3>大会议室开会</h3>
                    <p>2018/4/22 12：00：00</p>
                    <p><a href="#" class="btn btn-primary" role="button">完成</a> <a href="#" class="btn btn-danger" role="button">删除</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include  file="../common/footer.jsp"%>
<script type="text/javascript">
    $(function () {
        var thumbnailDiv = $("div.thumbnail");
        thumbnailDiv.mouseout(function () {
            $(this).find("p").css("display", "none");
        });
        thumbnailDiv.mouseover(function () {
            $(this).find("p").css("display", "block");
        });

        // 加载用户日程
        loadCurrUserSchedule();
    });

    function toggleDiv(ele){
        var operDiv = $(ele).parents("div").next("div");
        var currDisplayStatus = operDiv.css("display");
        if(currDisplayStatus === 'none'){
            operDiv.show(1000);
            $(ele).removeClass("glyphicon-download");
            $(ele).addClass("glyphicon-upload");
            return ;
        }

        operDiv.hide(1000);
        $(ele).removeClass("glyphicon-upload");
        $(ele).addClass("glyphicon-download");
    }

    // 新增日程 dept表示部门， my表示个人日程
    function addSchedule(type){
        initAddNewScheduleModal();

        var scheduleTypeText = "";
        if(type === 'dept'){
            scheduleTypeText = "部门日程";
        }else{
            scheduleTypeText = "个人日程";
        }
        $("#schedule_type_input").val(scheduleTypeText);
        $("#scheduleType").val(type);

        $("#addScheduleModal").show(1000);

    }

    // 初始化模态框
    function initAddNewScheduleModal(){
        var modal = $("#addScheduleModal");

        $(modal).find(".date").datepicker({
            lang:"ch", //语言选择中文 注：旧版本 新版方法：$.datetimepicker.setLocale('ch');
            format:"yyyy-mm-dd",      //格式化日期
            timepicker:false,    //关闭时间选项
            yearStart:1990,     //设置最小年份
            yearEnd:2050,        //设置最大年份
            todayButton:false    //关闭选择今天按钮
        });

        modal.find("input").val("");
        modal.find("textarea").val("");
    }

    function scheduleFormSubmit(){
        var postData = $("#addScheduleForm").serializeObject();

        // 默认部门，不对再换
        var scheduleType = 1;
        var belongId = ${sessionScope.user.depart_id};
        if($("#scheduleType").val() !== 'dept') {
            scheduleType = 2;
            belongId = ${sessionScope.user.id};
        }
        postData['type'] = scheduleType;
        postData['belong_id'] = belongId;

        postData = JSON.stringify(postData);

        var url = "${basePath}/oa/schedule/add.do";

        $.jsonPost(url, postData, function (data, textStatus, jqXHR) {
            if(data.code !== 0){
                sweetAlert("哎呦,出错了……", data.message,"error");
                return ;
            }

            sweetAlert("添加日程成功", "即将为您跳转页面","success");
            setTimeout(function () {
                window.location.reload();
            },2000);
        });
    }

    function loadCurrUserSchedule(){
        console.log("aaaa");
        var userId = ${sessionScope.user.id};
        var departId = ${sessionScope.user.depart_id};

        var statusStr = "00X";
        var url = "${basePath}/oa/schedule/list.do?userId="+userId+"&departId="+departId+"&statusStr="+statusStr;
        $.get(url, function (data) {
            if (data.code !== 0) {
                sweetAlert("哎呦,获取日程出错", data.message, "error");
                return;
            }

            if (data.data == null) {
                return;
            }

            // 遍历部门日程
            var deptEle =  $("#dept_schedule_row");
            deptEle.html("");
            $.each(data.data.dept, function (index, content) {
                deptEle.append(getScheduleDivHtml(content.title, content.start_datetime, content.end_datetime, content.id));
            });
            if(data.data.dept.length === 0){
                deptEle.append($("<h4 style='color:grey;'>没有更多内容了哦!</h4>"));
            }

            // 我的日程
            var myEle =  $("#my_schedule_row");
            myEle.html("");
            $.each(data.data.my, function (index, content) {
                myEle.append(getScheduleDivHtml(content.title, content.start_datetime, content.end_datetime, content.id));

            });
            if(data.data.my.length === 0){
                myEle.append($("<h4 style='color:grey;'>没有更多内容了哦!</h4>"));
            }
        });
    }

    function getScheduleDivHtml(title, startDatetime, endDatetime, scheduleId){
        var outOfDateSpanHtml = "<span style='font-size:0.5em;color:green;'>[正常]</span>";

        var nowTime = new Date().getTime();
        var isOutOfDate = false;
        if((endDatetime - nowTime) < 0){
            isOutOfDate = true;
            outOfDateSpanHtml = "<span style='font-size:0.5em;color:red;'>[已过期]</span>";
        }
        var eleHtml = "<div class=\"col-md-3\">\n" +
            "            <div class=\"thumbnail\">\n" +
            "                <div class=\"caption\">\n" +
            "                    <h3>"+title+outOfDateSpanHtml+"</h3>\n" +
            "                    <p>"+UnixToDate(startDatetime,'Y-m-d')+" 至 "+UnixToDate(endDatetime,'Y-m-d')+"</p>\n" +
            /*"                    <p><button onclick=\"finishSchedule("+scheduleId+")\" class=\"btn btn-primary\" role=\"button\">完成该日程(可以在历史日程找到)</button></p>\n" +*/
            "                </div>\n" +
            "            </div>\n" +
            "        </div>";

        return eleHtml;
    }

    // 完成日程
    function finishSchedule(scheduleId){
        var url = "${basePath}/oa/schedule/finish.do?scheduleId="+scheduleId;
        $.jsonPost(url, {}, function (data, textStatus, jqXHR) {
            if(data.code !== 0){
                sweetAlert("哎呦,获取日程出错", data.message, "error");
                return;
            }

            sweetAlert("日程已完成", "即将为您刷新页面", "success");
            setTimeout(function () {
                window.location.reload();
            },1000);
        });
    }

</script>

</body>
</html>
