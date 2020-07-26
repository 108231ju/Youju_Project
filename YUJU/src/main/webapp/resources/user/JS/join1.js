
    function acyncMovePage(url){
        // ajax option
        var ajaxOption = {
                url : "/user/join2",
                async : true,
                type : "GET",
                dataType : "html",
                cache : false
        };
        
        $.ajax(ajaxOption).done(function(data){
            // Contents 영역 삭제
            $('#phone').children().remove();
            // Contents 영역 교체
            $('#phone').html(data);
        });
    }
