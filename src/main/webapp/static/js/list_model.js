function deployment(modelId){
    $.post("/ac/model/deployment.do",
        {
            modelId:modelId
        },
        function(data,status){
            if('success' === status){
                swal(
                    '流程部署',
                    '流程部署成功',
                    'success'
                )
            }else{
                swal(
                    '流程部署',
                    '流程部署失败',
                    'error'
                )
            }
            console.log("数据：" + data + "\n状态：" + status);
        });
}

function viewXmlDialog(modelId, modelName){
    $.get("/ac/model/viewXml.do?modelId="+modelId, function (data,status) {
        if('success' === status){
            $("#viewXmlModalBody").text(data);
            $("#viewXmlModal").modal('show')
        }
    });
}

function viewPicDialog(modelId, modelName){
    var body = $("#viewPicModalBody");
    body.attr('src', '/ac/model/viewPic.do?modelId='+modelId);
    body.nextAll('h3').remove();
    body.parent("div.modal-body").append($('<h3 align="center">').text('流程模型名称：'+modelName));
    $("#viewPicModal").modal('show');
    /*swal({
        imageUrl: '/ac/model/viewPic.do?modelId='+modelId,
        imageHeight: 500,
        imageWidth:1024,
        imageAlt: '预览流程定义图'
    })*/
}
function delModelConfirm(modelId){
    swal({
        title: '是否确定删除模型?',
        text: "此操作不能撤销!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: '是的,我要删除!',
        cancelButtonText: '再考虑考虑'
    }).then(function (result) {
        if(result.value){
            delModel(modelId);
        }
    })
}

function delModel(modelId){
    $.post("/ac/model/del.do",
        {
            modelId:modelId
        },
        function(data,status){
            var title = '删除流程模型';
            if('success' === status){
                swal(
                    title,
                    title+'成功',
                    'success'
                ).then(function () {
                    window.location.reload();
                });
            }else{
                swal(
                    title,
                    title+'失败',
                    'error'
                )
            }
            console.log("数据：" + data + "\n状态：" + status);
        });
}
/*新增流程模型*/
function addNewModel() {
    var title = '';
    if($("#new_process_author").val() === ''){
        title = '流程作者';
        swal(
            title,
            title+'不能为空',
            'warning'
        );
        return false;
    }
    if($("#new_process_id").val() === ''){
        title = '流程编码';
        swal(
            title,
            title+'不能为空',
            'warning'
        );
        return false;
    }
    if($("#new_model_name").val() === ''){
        title = '模型名称';
        swal(
            title,
            title+'不能为空',
            'warning'
        );
        return false;
    }
    if($("#new_process_name").val() === ''){
        title = '流程名称';
        swal(
            title,
            title+'不能为空',
            'warning'
        );
        return false;
    }
    $("#addNewModelForm").submit();
}