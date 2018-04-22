<%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-4
  Time: 下午3:42
  To change this template use File | Settings | File Templates.
--%>
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
    }
</script>