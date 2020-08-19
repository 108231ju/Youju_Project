<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
 <nav id="catagory">

            <ul>
                <li id="option">상품옵션</li>
                <li id="sale"><input type="checkbox" name="salechk" value="salechk" id="salechk">세일</li>
                <li id="best">CATEGORIES</li>
                <li id="catagory1"  onclick="location.href='/user/today?today=1'">전체</li>
				<li id="catagory2">아우터&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down2">
					<ul>
						<li id="all2" onclick="location.href='/user/today3?cateCodeRef=100&today=1'">전체</li>
						<li id="jacket2" onclick="location.href='/user/today2?cateCode=101&today=1'">자켓</li>
						<li id="cardigan2" onclick="location.href='/user/today2?cateCode=102&today=1'">가디건</li>
						<li id="coat2" onclick="location.href='/user/today2?cateCode=103&today=1'">코트</li>
						<li id="jumper2" onclick="location.href='/user/today2?cateCode=104&today=1'">점퍼</li>
						<li id="padding2" onclick="location.href='/user/today2?cateCode=105&today=1'">패딩</li>
						<li id="per2" onclick="location.href='/user/today2?cateCode=106&today=1'">무스탕/퍼</li>
						<li id="etc2" onclick="location.href='/user/today2?cateCode=107&today=1'">기타</li>
					</ul>
				</nav>
				<li id="catagory3" >상의&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down3">
					<ul>
						<li id="all3" onclick="location.href='/user/today3?cateCodeRef=200&today=1'">전체</li>
						<li id="t_shrit3" onclick="location.href='/user/today2?cateCode=201&today=1'">티셔츠</li>
						<li id="blouse3" onclick="location.href='/user/today2?cateCode=202&today=1'">셔츠/블라우스</li>
						<li id="knit3" onclick="location.href='/user/today2?cateCode=203&today=1'">니트</li>
						<li id="mtm3" onclick="location.href='/user/today2?cateCode=204&today=1'">후드/맨투맨</li>
						<li id="best3" onclick="location.href='/user/today2?cateCode=205&today=1'">베스트</li>
					</ul>
				</nav>
				<li id="catagory4">바지&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down4">
					<ul>
						<li id="all4" onclick="location.href='/user/today3?cateCodeRef=300&today=1'">전체</li>
						<li id="jean4" onclick="location.href='/user/today2?cateCode=301&today=1'">청바지</li>
						<li id="slacks4" onclick="location.href='/user/today2?cateCode=302&today=1'">슬랙스</li>
						<li id="cotton4" onclick="location.href='/user/today2?cateCode=303&today=1'">면바지</li>
						<li id="shorts4" onclick="location.href='/user/today2?cateCode=304&today=1'">반바지</li>
						<li id="joger4" onclick="location.href='/user/today2?cateCode=305&today=1'">트레이닝/조거</li>
						<li id="leggings4" onclick="location.href='/user/today2?cateCode=306&today=1'">레깅스</li>
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
						<li id="all6" onclick="location.href='/user/today3?cateCodeRef=400&today=1'">전체</li>
						<li id="mini6" onclick="location.href='/user/today2?cateCode=401&today=1'">미니</li>
						<li id="midi6" onclick="location.href='/user/today2?cateCode=402&today=1'">미디</li>
						<li id="long6" onclick="location.href='/user/today2?cateCode=403&today=1'">롱</li>
					</ul>
				</nav>
				<li id="catagory7">신발&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down7">
					<ul>
						<li id="all7" onclick="location.href='/user/today3?cateCodeRef=500&today=1'">전체</li>
						<li id="lopper7" onclick="location.href='/user/today2?cateCode=501&today=1'">플랫/로퍼</li>
						<li id="slipper7" onclick="location.href='/user/today2?cateCode=502&today=1'">샌들/슬리퍼</li>
						<li id="hill7" onclick="location.href='/user/today2?cateCode=503&today=1'">힐</li>
						<li id="sneakers7" onclick="location.href='/user/today2?cateCode=504&today=1'">스니커즈</li>
						<li id="boots7" onclick="location.href='/user/today2?cateCode=505&today=1'">부츠/워커</li>
					</ul>
				</nav>
				<li id="catagory8">가방&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down8">
					<ul>
						<li id="all8" onclick="location.href='/user/today3?cateCodeRef=600&today=1'">전체</li>
						<li id="cross8" onclick="location.href='/user/today2?cateCode=601&today=1'">크로스백</li>
						<li id="dote8" onclick="location.href='/user/today2?cateCode=602&today=1'">토트백</li>
						<li id="shoulder8" onclick="location.href='/user/today2?cateCode=603&today=1'">숄더백</li>
						<li id="eco8" onclick="location.href='/user/today2?cateCode=604&today=1'">에코백</li>
						<li id="clutch8" onclick="location.href='/user/today2?cateCode=605&today=1'">클러치</li>
						<li id="back8" onclick="location.href='/user/today2?cateCode=606&today=1'">백팩</li>
					</ul>
				</nav>
				<li id="catagory9">주얼리&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down9">
					<ul>
						<li id="all9" onclick="location.href='/user/today3?cateCodeRef=700&today=1'">전체</li>
						<li id="ear9" onclick="location.href='/user/today2?cateCode=701&today=1'">귀걸이</li>
						<li id="nack9" onclick="location.href='/user/today2?cateCode=702&today=1'">목걸이</li>
						<li id="arm9" onclick="location.href='/user/today2?cateCode=703&today=1'">팔찌/발찌</li>
						<li id="ring9" onclick="location.href='/user/today2?cateCode=704&today=1'">반지</li>
					</ul>
				</nav>
				<li id="catagory10">잡화&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down10">
					<ul>
						<li id="all10" onclick="location.href='/user/today3?cateCodeRef=800&today=1'">전체</li>
						<li id="phone10" onclick="location.href='/user/today2?cateCode=801&today=1'">휴대폰 acc</li>
						<li id="hair10" onclick="location.href='/user/today2?cateCode=802&today=1'">헤어 acc</li>
						<li id="socks10" onclick="location.href='/user/today2?cateCode=803&today=1'">양말/스타킹</li>
						<li id="pouch10" onclick="location.href='/user/today2?cateCode=804&today=1'">지갑/파우치</li>
						<li id="hat10" onclick="location.href='/user/today2?cateCode=804&today=1'">모자</li>
						<li id="balt10" onclick="location.href='/user/today2?cateCode=805&today=1'">벨트</li>
						<li id="clock10" onclick="location.href='/user/today2?cateCode=806&today=1'">시계</li>
						<li id="scarf10" onclick="location.href='/user/today2?cateCode=807&today=1'">스카프/머플러</li>
						<li id="eye10" onclick="location.href='/user/today2?cateCode=808&today=1'">아이웨어</li>
						<li id="etc10" onclick="location.href='/user/today2?cateCode=809&today=1'">기타</li>
					</ul>
				</nav>
				<li id="catagory11">라이프웨어&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down11">
					<ul>
						<li id="all11" onclick="location.href='/user/today3?cateCodeRef=900'">전체</li>
						<li id="under11" onclick="location.href='/user/today2?cateCode=901'">언더웨어</li>
						<li id="home11" onclick="location.href='/user/today2?cateCode=902'">홈웨어</li>
						<li id="swim11" onclick="location.href='/user/today2?cateCode=903'">스윔웨어</li>
						<li id="beach11" onclick="location.href='/user/today2?cateCode=904'">비치웨어</li>
						<li id="etc11" onclick="location.href='/user/today2?cateCode=905'">기타</li>
					</ul>
				</nav>
				<li id="catagory12">빅사이즈&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;></li>
				<nav id="down12">
					<ul>
						<li id="all12" onclick="location.href='/user/today3?cateCodeRef=1000'">전체</li>
						<li id="outer12" onclick="location.href='/user/today2?cateCode=1001'">아우터</li>
						<li id="top12" onclick="location.href='/user/today2?cateCode=1002'">상의</li>
						<li id="bottom12" onclick="location.href='/user/today2?cateCode=1003'">바지</li>
						<li id="dress12" onclick="location.href='/user/today2?cateCode=1004'">원피스</li>
						<li id="skirt12" onclick="location.href='/user/today2?cateCode=1005'">스커트</li>
					</ul>
				</nav>
            </ul>
        </nav>