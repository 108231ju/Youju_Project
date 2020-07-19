function acyncMovePage1(url) {
    // ajax option
    var ajaxOption = {
        url: "../HTML/basket.html",
        async: true,
        type: "GET",
        dataType: "html",
        cache: false
    };

    $.ajax(ajaxOption).done(function (data) {
        // Contents 영역 삭제
        $('body').children().remove();
        // Contents 영역 교체
        $('body').html(data);
    });
}
function acyncMovePage2(url) {
    // ajax option
    var ajaxOption = {
        url: "../HTML/like.html",
        async: true,
        type: "GET",
        dataType: "html",
        cache: false
    };

    $.ajax(ajaxOption).done(function (data) {
        // Contents 영역 삭제
        $('body').children().remove();
        // Contents 영역 교체
        $('body').html(data);
    });
}