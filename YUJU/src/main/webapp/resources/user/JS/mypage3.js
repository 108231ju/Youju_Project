function acyncMovePage2(url) {
    // ajax option
    var ajaxOption = {
        url: "../HTML/mypage1.html",
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
function acyncMovePage1(url) {
    // ajax option
    var ajaxOption = {
        url: "../HTML/mypage2.html",
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
function acyncMovePage3(url) {
    // ajax option
    var ajaxOption = {
        url: "../HTML/mypage3.html",
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
function acyncMovePage4(url) {
    // ajax option
    var ajaxOption = {
        url: "../HTML/mypage4.html",
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
function acyncMovePage5(url) {
    // ajax option
    var ajaxOption = {
        url: "../HTML/mypage5.html",
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