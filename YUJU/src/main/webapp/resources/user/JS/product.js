function acyncMovePage1(url) {
    // ajax option
    var ajaxOption = {
        url: "/user/product1",
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
        url: "/user/product2",
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
        url: "/user/product3",
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


