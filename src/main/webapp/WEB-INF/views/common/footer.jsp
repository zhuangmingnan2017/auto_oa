<%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-4
  Time: 下午3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- 封装通用Modal -->
<div class="modal" id="commonModal" tabindex="-1" role="dialog" aria-labelledby="commonModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="javascript:$('#commonModal').hide(500);">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="commonModalLabel">用户操作</h4>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer row">
                <div class="col-md-12">
                    <button class="btn btn-default" data-dismiss="modal" onclick="javascript:$('#commonModal').hide(500);">关闭</button>
                    <button class="btn btn-primary" id="confirmBtn">确认</button>
                </div>
            </div>
        </div>
    </div>
</div>

<%--封装通用的分页插件 --%>
<div style="display: none;" id="pageRow">
    <nav aria-label="Page navigation">
        <ul>
            <li><a href="#" id="pageRow_homeAEle">首页</a></li>
            <li>
                <a href="#" aria-label="Previous" id="pageRow_preAEle">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>

            <li>
                <a href="#" aria-label="Next" id="pageRow_nextAEle">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>

            <li><a href="#" id="pageRow_endAEle">末页</a></li>
        </ul>
    </nav>
    <h5>当前/全部：<span id="pageRow_noticeSpanEle"></span></h5>
</div>

</div>
</div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        <c:if test="ERR_MSG != null">
        swal("出错啦", "${ERR_MSG}", "error");
        </c:if>
    });
    $.fn.serializeObject = function() {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function() {
            if (o[this.name]) {
                if (!o[this.name].push) {
                    o[this.name] = [ o[this.name] ];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };

    $.jsonPost = function(url, data, callBack){
        $.post({
            url:url,
            data:data,
            dataType:"json",
            contentType:"application/json",
            success:callBack
        });
    }

    /**
     * 时间戳转换日期
     * @param <int> unixTime    待时间戳(秒)
     * @param <bool> isFull    返回完整时间(Y-m-d 或者 Y-m-d H:i:s)
     * @param <int>  timeZone   时区
     */

    function UnixToDate(unixTime, isFull, timeZone) {
        if (typeof (timeZone) == 'number'){
            unixTime = parseInt(unixTime) + parseInt(timeZone) * 60 * 60;
        }
        var time = new Date(unixTime);
        var ymdhis = "";
        ymdhis += time.getUTCFullYear() + "-";
        ymdhis += (time.getUTCMonth()+1) + "-";
        ymdhis += time.getUTCDate();
        if (isFull === true){
            ymdhis += " " + time.getUTCHours() + ":";
            ymdhis += time.getUTCMinutes() + ":";
            ymdhis += time.getUTCSeconds();
        }
        return ymdhis;
    }

    /**
     * 通用的删除用的提示语
     * @param postUrl
     * @param postData
     */
    function delNotice(postUrl, postData){
        swal({
                title: "确定删除吗？",
                text: "删除内容不可恢复",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确认删除！",
                cancelButtonText: "再想想",
                closeOnConfirm: false
            },
            function(){
                $.post(postUrl, postData, function (data, textStatus, jqXHR) {
                    if(data.code !== 0){
                        swal("哎呦,出错了...", data.message, "error");
                        return ;
                    }

                    window.location.reload();
                })
            });
    }

    /**
     * 通用显示弹窗
     * @param title 弹窗标题
     * @param bodyEleId 内容组件id
     * @param okInvokeFunc 单击确认调用的方法
     */
    function commonModal(title, bodyEleId, okInvokeFunc){
        var modal = $("#commonModal");

        $("#commonModalLabel").text(title);
        var bodyEle = $("#"+bodyEleId);
        modal.find("div.modal-body").append(bodyEle);
        bodyEle.show();
        modal.show();
        $("#confirmBtn").click(okInvokeFunc);
    }

    function errMsg(message){
        swal("哎哟出错了", message, "error");
    }

    /**
     * 校验电子邮件
     * @param email
     * @returns {boolean}
     */
    function checkEmail(email) {
        if(email === null || email === ''){
            return false;
        }
        var myReg=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
        return myReg.test(email);
    }

    function checkPhone(phone) {
        if(phone === null || phone === ''){
            return false;
        }
        var myReg=/^1[0-9]{10}$/;
        return myReg.test(phone);
    }

    // 获取错误信息span
    function getWrongSpanEle(text){
        return $("<span style='color:red'>"+text+"</span>")
    }

    // 将所有的datepicker格式成选择日期
    $(function () {
        //日期插件
        $(".datepicker").datetimepicker({
            format: 'YYYY-MM-DD HH:mm'//显示格式
            //locale: 'zh-cn'
        });

    });

    /**
     * 将带有指定样式的地方处理成分页显示
     * @param divEle
     * @param url
     * @param currPage
     * @param totalPage
     * @param pageSize
     * @param location
     */
    function fillPageEle(divEle, url, currPage, totalPage, pageSize, location){
        if(['left', 'center', 'right'].indexOf(location) < 0){
            location = 'right';
        }

        if(currPage === undefined || totalPage === undefined){
            return ;
        }
        if(pageSize === undefined){
            pageSize = 10;
        }

        var homeAEle = $("#pageRow_homeAEle");
        var preAEle = $("#pageRow_preAEle");
        var nextAEle = $("#pageRow_nextAEle");
        var endAEle = $("#pageRow_endAEle");
        homeAEle.prop("href",url+"?currPage=1&pageSize="+pageSize);
        preAEle.prop("href", url+"?currPage="+(currPage-1)+"&pageSize="+pageSize);
        nextAEle.prop("href",url+"?currPage="+(currPage+1)+"&pageSize="+pageSize);
        endAEle.prop("href", url+"?currPage="+totalPage+"&pageSize="+pageSize);

        // if is the first page
        if(currPage === 1){
            homeAEle.parent("li").addClass("disabled");
            preAEle.parent("li").addClass("disabled");
            homeAEle.prop("href","#");
            preAEle.prop("href","#");
        }else if(currPage === totalPage){
            // if is the last page
            nextAEle.parent("li").addClass("disabled");
            endAEle.parent("li").addClass("disabled");
            nextAEle.prop("href","#");
            endAEle.prop("href","#");
        }

        var nowSeeCount = 0;
        var seeChoiceCount = 5;
        var isNeedHelpPageBtn = 10;
        var insertEle = preAEle.parent("li");
        var helpEle;

        if(currPage > isNeedHelpPageBtn){
            // 按钮协助向上翻10页
            helpEle = $("<li><a href='"+url+"?currPage="+(currPage - isNeedHelpPageBtn)
                +"&pageSize="+pageSize+"'>...</a></li>");
            insertEle.after(helpEle);
            insertEle = helpEle;
        }

        if((totalPage - currPage) > isNeedHelpPageBtn){
            // 按钮协助向下翻10页
            helpEle = $("<li><a href='"+url+"?currPage="+(currPage + isNeedHelpPageBtn)
                +"&pageSize="+pageSize+"'>...</a></li>");
            insertEle.after(helpEle);
            }

        for(var i = 1; i <= totalPage; i++){

            // 跳过
            if((i - currPage) > seeChoiceCount || (currPage - i) > seeChoiceCount){
                continue;
            }

            var newEle = $("<li><a href='"+url+"?currPage="+i+"&pageSize="+pageSize+"'>"+i+"</a></li>");
            if(i === currPage){
                newEle.addClass("active");
            }

            insertEle.after(newEle);
            insertEle = newEle; /*切换句柄*/
        }

        var pageRow = $("#pageRow");
        divEle.append(pageRow);
        divEle.find("ul").addClass("pagination");
        $("#pageRow_noticeSpanEle").text(currPage+"/"+totalPage);

        // 给分页配置位置
        switch (location) {
            case 'right':
                console.log('right');
                divEle.addClass("pull-right");
                break;
            case 'center':
                console.log('center');
                divEle.addClass("text-center");
                break;
            case 'left':
                console.log('left');
                divEle.addClass("pull-left");
                break;
        }

        pageRow.show();
    }

    function getRequest() {
        var url = location.search; //获取url中"?"符后的字串
        var theRequest = new Object();
        if (url.indexOf("?") != -1) {
            var str = url.substr(1);
            strs = str.split("&");
            for(var i = 0; i < strs.length; i ++) {
                theRequest[strs[i].split("=")[0]] = decodeURI(strs[i].split("=")[1]);
            }
        }
        return theRequest;
    }
</script>