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
            //format: 'yyyy-mm-dd hh:ii:ss',//显示格式
            locale: 'zh-cn'
        });
    })
</script>