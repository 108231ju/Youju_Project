function checkAll() {
    if ($("#check-all").is(':checked')) {
        $("input[id=ex_chk]").prop("checked", true);
    } else {
        $("input[id=ex_chk]").prop("checked", false);
    }
}


function acyncMovePage(url) {
    if ($("input:checkbox[name=all]").is(":checked") == true &&
        $("input:checkbox[name=all2]").is(":checked") == true) {
        //작업
        var ajaxOption = {
            url: "../HTML/join3.html",
            async: true,
            type: "GET",
            dataType: "html",
            cache: false
        };

        $.ajax(ajaxOption).done(function (data) {
            // Contents 영역 삭제
            $('#phone1').children().remove();
            // Contents 영역 교체
            $('#phone1').html(data);
        });

    } else {
        alert("(필수) 항목을 모두 동의하셔야 합니다");
        return false;
    }

}