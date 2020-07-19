$(function () {
    $("li#catagory2").click(function () {
        $("#down2").slideToggle();
        return false;
    });

    $("li#catagory3").click(function () {
        $("#down3").slideToggle();
        return false;
    });

    $("li#catagory4").click(function () {
        $("#down4").slideToggle();
        return false;
    });
    $("li#catagory5").click(function () {
        $("#down5").slideToggle();
        return false;
    });
    $("li#catagory6").click(function () {
        $("#down6").slideToggle();
        return false;
    });
    $("li#catagory7").click(function () {
        $("#down7").slideToggle();
        return false;
    });

});

$(document).ready(function () {
    $("#catagory1").click(function () {
        $("#three").text("전체");
        $("#two").text(" ");
    });
    $("#all2").click(function () {
        $("#three").text("전체");
        $("#two").text(">스킨케어 ");
    });
    $("#skin2").click(function () {
        $("#three").text("스킨/토너");
        $("#two").text(">스킨케어 ");
    });
    $("#essence2").click(function () {
        $("#three").text("에센스/앰플");
        $("#two").text(">스킨케어 ");
    });
    $("#cream2").click(function () {
        $("#three").text("크림");
        $("#two").text(">스킨케어 ");
    });
    $("#etc2").click(function () {
        $("#three").text("기타");
        $("#two").text(">스킨케어 ");
    });

});

$(document).ready(function () {
    $("#all3").click(function () {
        $("#three").text("전체");
        $("#two").text(">메이크업 ");
    });
    $("#base3").click(function () {
        $("#three").text("베이스");
        $("#two").text(">메이크업 ");
    });
    $("#lip3").click(function () {
        $("#three").text("립");
        $("#two").text(">메이크업 ");
    });
    $("#eye3").click(function () {
        $("#three").text("아이");
        $("#two").text(">메이크업 ");
    });

});

$(document).ready(function () {
    $("#all4").click(function () {
        $("#three").text("전체");
        $("#two").text(">바디케어 ");
    });
    $("#cream4").click(function () {
        $("#three").text("로션/크림");
        $("#two").text(">바디케어 ");
    });
    $("#scrub4").click(function () {
        $("#three").text("워시/스크럽");
        $("#two").text(">바디케어 ");
    });

});

$(document).ready(function () {
    $("#all5").click(function () {
        $("#three").text("전체");
        $("#two").text(">헤어케어 ");
    });
    $("#shampoo5").click(function () {
        $("#three").text("샴푸/린스");
        $("#two").text(">헤어케어 ");
    });
    $("#treatment5").click(function () {
        $("#three").text("트리트먼트");
        $("#two").text(">헤어케어 ");
    });
    $("#essence5").click(function () {
        $("#three").text("스타일링/에센스");
        $("#two").text(">헤어케어 ");
    });
});

$(document).ready(function () {
    $("#all6").click(function () {
        $("#three").text("전체");
        $("#two").text(">향수 ");
    });
    $("#perfume6").click(function () {
        $("#three").text("향수");
        $("#two").text(">향수 ");
    });
    $("#defuser6").click(function () {
        $("#three").text("디퓨저/방향제");
        $("#two").text(">향수 ");
    });
  

});

$(document).ready(function () {
    $("#all7").click(function () {
        $("#three").text("전체");
        $("#two").text(">미용소품 ");
    });
    $("#tool7").click(function () {
        $("#three").text("뷰티툴");
        $("#two").text(">미용소품 ");
    });
    $("#nail7").click(function () {
        $("#three").text("네일");
        $("#two").text(">미용소품 ");
    });
    $("#etc7").click(function () {
        $("#three").text("기타");
        $("#two").text(">미용소품 ");
    });
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
    $('#skin2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#essence2').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#cream2').hover(
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
    $('#all3').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#base3').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#lip3').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    
});
$(document).ready(function () {


    $('#eye3').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#all4').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#cream4').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#scrub4').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#all5').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#shampoo5').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
});
$(document).ready(function () {


    $('#treatment5').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#essence5').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#all6').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#perfume6').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#defuser6').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#all7').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#tool7').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
});
$(document).ready(function () {


    $('#nail7').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
    $('#etc7').hover(
        function () {
            $(this).addClass('hovering');
        },
        function () {
            $(this).removeClass('hovering');
        }
    );
});
