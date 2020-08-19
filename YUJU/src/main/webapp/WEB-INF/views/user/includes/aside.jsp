<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div id="contant">
		<div id="tag">
			<a id="one">쇼핑몰·마켓 </a><a id="two"></a>><a id="three"> 전체</a>
		</div>
		<nav id="catagory">

			<ul>
				<li id="option">상품옵션</li>
				<li id="sale"><input type="checkbox" name="salechk"
					value="salechk" id="salechk">세일</li>
				<li id="best">CATEGORIES</li>
				<li id="catagory1">전체</li>
				<li id="catagory2">아우터&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down2">
					<ul>
						<li id="all2" onclick="location.href='/user/marketadd3?cateCodeRef=100'">전체</li>
						<li id="jacket2" onclick="location.href='/user/marketadd2?catecode=101'">자켓</li>
						<li id="cardigan2" onclick="location.href='/user/marketadd2?catecode=102'">가디건</li>
						<li id="coat2" onclick="location.href='/user/marketadd2?catecode=103'">코트</li>
						<li id="jumper2" onclick="location.href='/user/marketadd2?catecode=104'">점퍼</li>
						<li id="padding2" onclick="location.href='/user/marketadd2?catecode=105'">패딩</li>
						<li id="per2" onclick="location.href='/user/marketadd2?catecode=106'">무스탕/퍼</li>
						<li id="etc2" onclick="location.href='/user/marketadd2?catecode=107'">기타</li>
					</ul>
				</nav>
				<li id="catagory3" >상의&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down3">
					<ul>
						<li id="all3" onclick="location.href='/user/marketadd3?cateCodeRef=200'">전체</li>
						<li id="t_shrit3" onclick="location.href='/user/marketadd2?catecode=201'">티셔츠</li>
						<li id="blouse3" onclick="location.href='/user/marketadd2?catecode=202'">셔츠/블라우스</li>
						<li id="knit3" onclick="location.href='/user/marketadd2?catecode=203'">니트</li>
						<li id="mtm3" onclick="location.href='/user/marketadd2?catecode=204'">후드/맨투맨</li>
						<li id="best3" onclick="location.href='/user/marketadd2?catecode=205'">베스트</li>
					</ul>
				</nav>
				<li id="catagory4">바지&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down4">
					<ul>
						<li id="all4" onclick="location.href='/user/marketadd3?cateCodeRef=300'">전체</li>
						<li id="jean4" onclick="location.href='/user/marketadd2?catecode=301'">청바지</li>
						<li id="slacks4" onclick="location.href='/user/marketadd2?catecode=302'">슬랙스</li>
						<li id="cotton4" onclick="location.href='/user/marketadd2?catecode=303'">면바지</li>
						<li id="shorts4" onclick="location.href='/user/marketadd2?catecode=304'">반바지</li>
						<li id="joger4" onclick="location.href='/user/marketadd2?catecode=305'">트레이닝/조거</li>
						<li id="leggings4" onclick="location.href='/user/marketadd2?catecode=306'">레깅스</li>
					</ul>
				</nav>
				<li id="catagory5">원피스&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down5">
					<ul>
						<li id="all5" >전체</li>
						<li id="mini5" >미니</li>
						<li id="midi5">미디</li>
						<li id="long5" >롱</li>
						<li id="twopice5" >투피스</li>
						<li id="jumpsuite5">점프수트</li>
					</ul>
				</nav>
				<li id="catagory6">스커트&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down6">
					<ul>
						<li id="all6" onclick="location.href='/user/marketadd3?cateCodeRef=400'">전체</li>
						<li id="mini6" onclick="location.href='/user/marketadd2?catecode=401'">미니</li>
						<li id="midi6" onclick="location.href='/user/marketadd2?catecode=402'">미디</li>
						<li id="long6" onclick="location.href='/user/marketadd2?catecode=403'">롱</li>
					</ul>
				</nav>
				<li id="catagory7">신발&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down7">
					<ul>
						<li id="all7" onclick="location.href='/user/marketadd3?cateCodeRef=500'">전체</li>
						<li id="lopper7" onclick="location.href='/user/marketadd2?catecode=501'">플랫/로퍼</li>
						<li id="slipper7" onclick="location.href='/user/marketadd2?catecode=502'">샌들/슬리퍼</li>
						<li id="hill7" onclick="location.href='/user/marketadd2?catecode=503'">힐</li>
						<li id="sneakers7" onclick="location.href='/user/marketadd2?catecode=504'">스니커즈</li>
						<li id="boots7" onclick="location.href='/user/marketadd2?catecode=505'">부츠/워커</li>
					</ul>
				</nav>
				<li id="catagory8">가방&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down8">
					<ul>
						<li id="all8" onclick="location.href='/user/marketadd3?cateCodeRef=600'">전체</li>
						<li id="cross8" onclick="location.href='/user/marketadd2?catecode=601'">크로스백</li>
						<li id="dote8" onclick="location.href='/user/marketadd2?catecode=602'">토트백</li>
						<li id="shoulder8" onclick="location.href='/user/marketadd2?catecode=603'">숄더백</li>
						<li id="eco8" onclick="location.href='/user/marketadd2?catecode=604'">에코백</li>
						<li id="clutch8" onclick="location.href='/user/marketadd2?catecode=605'">클러치</li>
						<li id="back8" onclick="location.href='/user/marketadd2?catecode=606'">백팩</li>
					</ul>
				</nav>
				<li id="catagory9">주얼리&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down9">
					<ul>
						<li id="all9" onclick="location.href='/user/marketadd3?cateCodeRef=700'">전체</li>
						<li id="ear9" onclick="location.href='/user/marketadd2?catecode=701'">귀걸이</li>
						<li id="nack9" onclick="location.href='/user/marketadd2?catecode=702'">목걸이</li>
						<li id="arm9" onclick="location.href='/user/marketadd2?catecode=703'">팔찌/발찌</li>
						<li id="ring9" onclick="location.href='/user/marketadd2?catecode=704'">반지</li>
					</ul>
				</nav>
				<li id="catagory10">잡화&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down10">
					<ul>
						<li id="all10" onclick="location.href='/user/marketadd3?cateCodeRef=800'">전체</li>
						<li id="phone10" onclick="location.href='/user/marketadd2?catecode=801'">휴대폰 acc</li>
						<li id="hair10" onclick="location.href='/user/marketadd2?catecode=802'">헤어 acc</li>
						<li id="socks10" onclick="location.href='/user/marketadd2?catecode=803'">양말/스타킹</li>
						<li id="pouch10" onclick="location.href='/user/marketadd2?catecode=804'">지갑/파우치</li>
						<li id="hat10" onclick="location.href='/user/marketadd2?catecode=804'">모자</li>
						<li id="balt10" onclick="location.href='/user/marketadd2?catecode=805'">벨트</li>
						<li id="clock10" onclick="location.href='/user/marketadd2?catecode=806'">시계</li>
						<li id="scarf10" onclick="location.href='/user/marketadd2?catecode=807'">스카프/머플러</li>
						<li id="eye10" onclick="location.href='/user/marketadd2?catecode=808'">아이웨어</li>
						<li id="etc10" onclick="location.href='/user/marketadd2?catecode=809'">기타</li>
					</ul>
				</nav>
				<li id="catagory11">라이프웨어&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down11">
					<ul>
						<li id="all11" onclick="location.href='/user/marketadd3?cateCodeRef=900'">전체</li>
						<li id="under11" onclick="location.href='/user/marketadd2?catecode=901'">언더웨어</li>
						<li id="home11" onclick="location.href='/user/marketadd2?catecode=902'">홈웨어</li>
						<li id="swim11" onclick="location.href='/user/marketadd2?catecode=903'">스윔웨어</li>
						<li id="beach11" onclick="location.href='/user/marketadd2?catecode=904'">비치웨어</li>
						<li id="etc11" onclick="location.href='/user/marketadd2?catecode=905'">기타</li>
					</ul>
				</nav>
				<li id="catagory12">빅사이즈&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down12">
					<ul>
						<li id="all12" onclick="location.href='/user/marketadd3?cateCodeRef=1000'">전체</li>
						<li id="outer12" onclick="location.href='/user/marketadd2?catecode=1001'">아우터</li>
						<li id="top12" onclick="location.href='/user/marketadd2?catecode=1002'">상의</li>
						<li id="bottom12" onclick="location.href='/user/marketadd2?catecode=1003'">바지</li>
						<li id="dress12" onclick="location.href='/user/marketadd2?catecode=1004'">원피스</li>
						<li id="skirt12" onclick="location.href='/user/marketadd22?catecode=1005'">스커트</li>
					</ul>
				</nav>
			</ul>
		</nav>

