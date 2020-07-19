slidetimer();
// var current=0;
var $interval;
function slidetimer(){
  var $interval=setInterval(function(){slide()},3000);               }
function slide(){
  $("#sp").animate({left:"-=100px"},500,function(){
    $(this).css({"left":0});
    $("#sp").append( $("#sp").children(".sp01").eq(0) );
  });    
 // current++;
 // if(current==5)current=0;
}
function slideprev(){
  $(document).on("click",".prev",function(){
    // $("ul").animate({left:"-=100px"});
    //$(this).css({"left":0});
    //$("li").appendTo("ul");
    //$("li").append( $("ul").children("li").eq(0) );
    $( $("ul").children("li").eq(0) ).appendTo("ul")
    //$("ul").append( $("ul").children("li").eq(0) );
    //current++;
    //if(current==5)current=0;
  });
}
slideprev();
  
$(document).on("click",".prev",function(){
  // $("ul").animate({left:"-=100px"});
  //$(this).css({"left":0});
  //$("li").appendTo("ul");
  //$("li").append( $("ul").children("li").eq(0) );
  //$( $("ul").children("li").eq(5) ).prependTo("ul")
  //$("ul").append( $("ul").children("li").eq(0) );
  //current++;
  //if(current==5)current=0;
});
