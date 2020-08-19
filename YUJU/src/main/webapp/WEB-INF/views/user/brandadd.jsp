<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <script language="javascript" src="/resources/user/JS/jquery-1.9.1.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/resources/user/CSS/brandadd.css" />
    <script language="javascript" src="/resources/user/JS/brandadd.js" type="text/javascript"></script>
</head>

<body>
     <%@include file="../user/includes/header.jsp" %>
    <hr>
   <nav id="menu">
        <ul>
           <li onclick="location.href='/user/index'">HOME</li>
            <li onclick="location.href='/user/best?best=1'">BEST</li>
            <li onclick="location.href='/user/today?today=1'">하루배송</li>
            <li onclick="location.href='/user/market'">쇼핑몰·마켓</li>
            <li onclick="location.href='/user/brand'">브랜드</li>
            <li onclick="location.href='/user/beauty'">뷰티</li>
            <li onclick="location.href='/user/event'">EVENT</li>
        </ul>
    </nav>
    <hr>
    <div id="contant">
        <div id="tag">
            <a id="one">브랜드 </a><a id="two"></a>><a id="three"> 전체</a>
        </div>
        <nav id="catagory">

            <ul>
                <li id="option">상품옵션</li>
                <li id="sale"><input type="checkbox" name="salechk" value="salechk" id="salechk">세일</li>
                <li id="best">CATEGORIES</li>
                <li id="catagory1">전체</li>
                <li id="catagory2">아우터&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down2">
                    <ul>
                        <li id="all2">전체</li>
                        <li id="jacket2">자켓</li>
                        <li id="cardigan2">가디건</li>
                        <li id="coat2">코트</li>
                        <li id="jumper2">점퍼</li>
                        <li id="padding2">패딩</li>
                        <li id="per2">무스탕/퍼</li>
                        <li id="etc2">기타</li>
                    </ul>
                </nav>
                <li id="catagory3">상의&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down3">
                    <ul>
                        <li id="all3">전체</li>
                        <li id="t_shrit3">티셔츠</li>
                        <li id="blouse3">셔츠/블라우스</li>
                        <li id="knit3">니트</li>
                        <li id="mtm3">후드/맨투맨</li>
                        <li id="best3">베스트</li>
                    </ul>
                </nav>
                <li id="catagory4">바지&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down4">
                    <ul>
                        <li id="all4">전체</li>
                        <li id="jean4">청바지</li>
                        <li id="slacks4">슬랙스</li>
                        <li id="cotton4">면바지</li>
                        <li id="shorts4">반바지</li>
                        <li id="joger4">트레이닝/조거</li>
                        <li id="leggings4">레깅스</li>
                    </ul>
                </nav>
                <li id="catagory5">원피스&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down5">
                    <ul>
                        <li id="all5">전체</li>
                        <li id="mini5">미니</li>
                        <li id="midi5">미디</li>
                        <li id="long5">롱</li>
                        <li id="twopice5">투피스</li>
                        <li id="jumpsuite5">점프수트</li>
                    </ul>
                </nav>
                <li id="catagory6">스커트&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down6">
                    <ul>
                        <li id="all6">전체</li>
                        <li id="mini6">미니</li>
                        <li id="midi6">미디</li>
                        <li id="long6">롱</li>
                    </ul>
                </nav>
                <li id="catagory7">신발&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down7">
                    <ul>
                        <li id="all7">전체</li>
                        <li id="lopper7">플랫/로퍼</li>
                        <li id="slipper7">샌들/슬리퍼</li>
                        <li id="hill7">힐</li>
                        <li id="sneakers7">스니커즈</li>
                        <li id="boots7">부츠/워커</li>
                    </ul>
                </nav>
                <li id="catagory8">가방&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down8">
                    <ul>
                        <li id="all8">전체</li>
                        <li id="cross8">크로스백</li>
                        <li id="dote8">토트백</li>
                        <li id="shoulder8">숄더백</li>
                        <li id="eco8">에코백</li>
                        <li id="clutch8">클러치</li>
                        <li id="back8">백팩</li>
                    </ul>
                </nav>
                <li id="catagory9">주얼리&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down9">
                    <ul>
                        <li id="all9">전체</li>
                        <li id="ear9">귀걸이</li>
                        <li id="nack9">목걸이</li>
                        <li id="arm9">팔찌/발찌</li>
                        <li id="ring9">반지</li>
                    </ul>
                </nav>
                <li id="catagory10">잡화&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down10">
                    <ul>
                        <li id="all10">전체</li>
                        <li id="phone10">휴대폰 acc</li>
                        <li id="hair10">헤어 acc</li>
                        <li id="socks10">양말/스타킹</li>
                        <li id="pouch10">지갑/파우치</li>
                        <li id="hat10">모자</li>
                        <li id="balt10">벨트</li>
                        <li id="clock10">시계</li>
                        <li id="scarf10">스카프/머플러</li>
                        <li id="eye10">아이웨어</li>
                        <li id="etc10">기타</li>
                    </ul>
                </nav>
                <li id="catagory11">라이프웨어&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down11">
                    <ul>
                        <li id="all11">전체</li>
                        <li id="under11">언더웨어</li>
                        <li id="home11">홈웨어</li>
                        <li id="swim11">스윔웨어</li>
                        <li id="beach11">비치웨어</li>
                        <li id="etc11">기타</li>
                    </ul>
                </nav>
                <li id="catagory12">빅사이즈&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
                <nav id="down12">
                    <ul>
                        <li id="all12">전체</li>
                        <li id="outer12">아우터</li>
                        <li id="top12">상의</li>
                        <li id="bottom12">바지</li>
                        <li id="dress12">원피스</li>
                        <li id="skirt12">스커트</li>
                    </ul>
                </nav>
            </ul>
        </nav>
        <div id="item">
 <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
                <div id="product"><img src="https://image.brandi.me/cproduct/2020/06/14/17368502_1592064990_image1_M.jpg">
                    <br><a id="sname">[321g]</a>
                    <br><a id="pname">류즈 핀덕 어쩌고 이름</a>
                    <br><a id="price">22800</a>
                </div>
        </div>
    </div>
  <%@include file="../user/includes/footer.jsp"%>
</body>

</html>