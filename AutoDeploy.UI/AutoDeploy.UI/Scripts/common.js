function AjaxPost(url, data,successCallback,failureCallback) {
    var params = "";
    if (data == null)
        params = "{ }";
    else
        params = data;

    $.ajax({
        type: "post",
        data: params,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        url: url,
        success: successCallback,
        error: failureCallback
    });
}