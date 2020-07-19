 /*toggle*/
 $(function () {
    $("li#catagory1").click(function () {
        $("#down1").slideToggle();
        return false;
    });

    $("li#catagory2").click(function () {
        $("#down2").slideToggle();
        return false;
    });

    $("li#catagory3").click(function () {
        $("#down3").slideToggle();
        return false;
    });

});
/*hover1 2 3*/
$(document).ready(function () {


    $('#all1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#outer1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#top1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#bottom1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#dress1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#skirt1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#shoes1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#bag1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#jewelry1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#etc1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#life1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#big1').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
});

$(document).ready(function () {


    $('#all2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#outer2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#top2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#bottom2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#dress2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#skirt2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#shoes2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#bag2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#jewelry2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#etc2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#life2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#big2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#sports2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
});

$(document).ready(function () {
    $('#all3').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#skin3').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#makeup3').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#body3').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#hair3').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#perfume3').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#acc3').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
});

$(document).ready(function () {
    $("#all1").click(function () {
        $("#three").text("전체");
        $("#one").text("쇼핑몰 · 마켓");
    });
    $("#outer1").click(function () {
        $("#three").text("아우터");
         $("#one").text("쇼핑몰 · 마켓");
    });
    $("#top1").click(function () {
        $("#three").text("상의");
         $("#one").text("쇼핑몰 · 마켓");
    });
    $("#bottom1").click(function () {
        $("#three").text("바지");
         $("#one").text("쇼핑몰 · 마켓");
    });
    $("#dress1").click(function () {
        $("#three").text("원피스");
         $("#one").text("쇼핑몰 · 마켓");
    });
    $("#skirt1").click(function () {
        $("#three").text("스커트");
         $("#one").text("쇼핑몰 · 마켓");
    });
    $("#shoes1").click(function () {
        $("#three").text("신발");
         $("#one").text("쇼핑몰 · 마켓");
    });
    $("#bag1").click(function () {
        $("#three").text("가방");
         $("#one").text("쇼핑몰 · 마켓");
    });
    $("#jewelry1").click(function () {
        $("#three").text("주얼리");
         $("#one").text("쇼핑몰 · 마켓");
    });
    $("#etc1").click(function () {
        $("#three").text("잡화");
         $("#one").text("쇼핑몰 · 마켓");
    });
    $("#life1").click(function () {
        $("#three").text("라이프웨어");
         $("#one").text("쇼핑몰 · 마켓");
    });
    $("#big1").click(function () {
        $("#three").text("빅사이즈");
         $("#one").text("쇼핑몰 · 마켓");
    });
});

$(document).ready(function () {
    $("#all2").click(function () {
        $("#three").text("전체");
        $("#one").text("브랜드");
    });
    $("#outer2").click(function () {
        $("#three").text("아우터");
        $("#one").text("브랜드");
    });
    $("#top2").click(function () {
        $("#three").text("상의");
        $("#one").text("브랜드");
    });
    $("#bottom2").click(function () {
        $("#three").text("바지");
        $("#one").text("브랜드");
    });
    $("#dress2").click(function () {
        $("#three").text("원피스");
        $("#one").text("브랜드");
    });
    $("#skirt2").click(function () {
        $("#three").text("스커트");
        $("#one").text("브랜드");
    });
    $("#shoes2").click(function () {
        $("#three").text("신발");
        $("#one").text("브랜드");
    });
    $("#bag2").click(function () {
        $("#three").text("가방");
        $("#one").text("브랜드");
    });
    $("#jewelry2").click(function () {
        $("#three").text("주얼리");
        $("#one").text("브랜드");
    });
    $("#etc2").click(function () {
        $("#three").text("잡화");
        $("#one").text("브랜드");
    });
    $("#life2").click(function () {
        $("#three").text("라이프웨어");
        $("#one").text("브랜드");
    });
    $("#big2").click(function () {
        $("#three").text("빅사이즈");
        $("#one").text("브랜드");
    });
    $("#sports2").click(function () {
        $("#three").text("스포츠웨어");
        $("#one").text("브랜드");
    });
});

$(document).ready(function () {
    $("#all3").click(function () {
        $("#three").text("전체");
        $("#one").text("뷰티");
    });
    $("#skin3").click(function () {
        $("#three").text("스킨케어");
        $("#one").text("뷰티");
    });
    $("#makeup3").click(function () {
        $("#three").text("메이크업");
        $("#one").text("뷰티");
    });
    $("#body3").click(function () {
        $("#three").text("바디케어");
        $("#one").text("뷰티");
    });
    $("#hair3").click(function () {
        $("#three").text("헤어케어");
        $("#one").text("뷰티");
    });
    $("#perfume3").click(function () {
        $("#three").text("향수");
        $("#one").text("뷰티");
    });
    $("#acc3").click(function () {
        $("#three").text("미용소품");
        $("#one").text("뷰티");
    });
});
