
// 部署流程
function deployment(modelId){
    var url = modelPre+"deploy.do?modelId="+modelId;
    $.post(url, {}, function(data,status){
            if(data.code !== 0){
                errMsg(data.message);
                return ;
            }
            window.location.reload();
    });
}

// 导出xml
function exportXml(modelId, modelName){
    var url = modelPre + "xml/export.html?modelId="+modelId;
    window.open(url);
}

// 导出流程模型图片
function exportPic(modelId, modelName){
    var url = modelPre + "pic/export.html?modelId="+modelId;
    window.open(url);
}

// 删除模型
function delModel(modelId, modelName){
    var url = modelPre + "del.html?modelId=" + modelId;
    delNotice(url, {});
}

/*新增流程模型*/
function addNewModel() {
    var title = '';
    var validateResult = true;

    var authorEle = $("#new_process_author");
    if(authorEle.val() === ''){
        authorEle.after(getWrongSpanEle('流程作者不能为空'));
        validateResult = false;
    }

    var idEle = $("#new_process_id");
    if(idEle.val() === ''){
        idEle.after(getWrongSpanEle("流程编码不能为空"));
        title = '流程编码';
        validateResult = false;
    }

    var processNameEle = $("#new_process_name");
    if(processNameEle.val() === ''){
        processNameEle.after(getWrongSpanEle("流程名称不能为空"));
    }else{
        // 模型名称默认同流程定义名称
        $("#new_model_name").val(processNameEle.val());
    }

    $("#addNewModelForm").submit();
}