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
/*toggle*/
$(function () {
    $("a#toggle").click(function () {
        $("#contact").slideToggle();
        return false;
    });
    $("a#toggle2").click(function () {
        $("#contact2").slideToggle();
        return false;
    });
    $("a#toggle3").click(function () {
        $("#contact3").slideToggle();
        return false;
    });
    $("a#toggle4").click(function () {
        $("#contact4").slideToggle();
        return false;
    });
    $("a#toggle5").click(function () {
        $("#contact5").slideToggle();
        return false;
    });
    $("a#toggle6").click(function () {
        $("#contact6").slideToggle();
        return false;
    });
    $("a#toggle7").click(function () {
        $("#contact7").slideToggle();
        return false;
    });
    $("a#toggle8").click(function () {
        $("#contact8").slideToggle();
        return false;
    });
    $("a#toggle9").click(function () {
        $("#contact9").slideToggle();
        return false;
    });
    $("a#toggle10").click(function () {
        $("#contact10").slideToggle();
        return false;
    });
    $("a#toggle11").click(function () {
        $("#contact11").slideToggle();
        return false;
    });
    $("a#toggle12").click(function () {
        $("#contact12").slideToggle();
        return false;
    });
    $("a#toggle13").click(function () {
        $("#contact13").slideToggle();
        return false;
    });
    $("a#toggle14").click(function () {
        $("#contact14").slideToggle();
        return false;
    });
    $("a#toggle15").click(function () {
        $("#contact15").slideToggle();
        return false;
    });
    $("a#toggle16").click(function () {
        $("#contact16").slideToggle();
        return false;
    });
    $("a#toggle17").click(function () {
        $("#contact17").slideToggle();
        return false;
    });
    $("a#toggle18").click(function () {
        $("#contact18").slideToggle();
        return false;
    });
    $("a#toggle19").click(function () {
        $("#contact19").slideToggle();
        return false;
    });
    $("a#toggle20").click(function () {
        $("#contact20").slideToggle();
        return false;
    });
    $("a#toggle21").click(function () {
        $("#contact21").slideToggle();
        return false;
    });
    $("a#toggle22").click(function () {
        $("#contact22").slideToggle();
        return false;
    });
});