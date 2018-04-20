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
</script>