<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mypage</title>
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
    <script language="javascript" src="/resources/user/JS/mypage5.js" type="text/javascript"></script>



</head>

<body>
    <header>
        <div>
            <img href="#" id="Adver" src="https://image.brandi.me/home/banner/bannerImage_148115_1590975673.jpg">
        </div>
        <div id="top">
            <div id="logo" onclick="location.href='/user/index'">
                <img src="https://www.brandi.co.kr/static/3.47.2/images/logo@3x.png">
            </div>
            <div>
                <form method="GET" action="#" id="search">
                    <button id="btn">검색</button>
                    <input id="input" type="text" name="q">
                </form>
            </div>
            <div id="login">
                <a onclick="location.href='/user/login'">로그인</a>ㅣ<a onclick="location.href='/user/join1'">회원가입</a>ㅣ<a
                    onclick="location.href='/user/mypage1'">마이페이지</a>ㅣ<a onclick="location.href='/user/like'">찜&장바구니</a>
            </div>

        </div>
    </header>
    <hr>
    <nav id="menu">
        <ul>
        <li onclick="location.href='/user/index'">HOME</li>
            <li onclick="location.href='/user/best'">BEST</li>
            <li onclick="location.href='/user/today'">하루배송</li>
            <li onclick="location.href='/user/market'">쇼핑몰·마켓</li>
            <li onclick="location.href='/user/brand'">브랜드</li>
            <li onclick="location.href='/user/beauty'">뷰티</li>
            <li onclick="location.href='/user/event'">EVENT</li>
        </ul>
    </nav>
    <hr>

    <div id="phone">
        <h1>마이페이지</h1>
        <nav id="pagemenu">
            <ul>
                <li id="order5" onclick="acyncMovePage2();"><img
                        src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-orderlist-s@3x.png"><br><a>주문 /
                        배송조회</a></li>
                <li id="info5" onclick="acyncMovePage1();"><img
                        src="https://www.brandi.co.kr/static/3.47.4/images/ic-my-point-s@3x.png"><br><a>내
                        정보</a></li>
                <li id="coupon5" onclick="acyncMovePage3();"><img
                        src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-coupon-s@3x.png"><br><a>리뷰</a></li>
                <li id="QandA5" onclick="acyncMovePage4();"><img
                        src="https://www.brandi.co.kr/static/3.47.4/images/ic-mypage-qna-s@3x.png"><br><a>Q
                        & A</a></li>
                <li id="FandQ5" onclick="acyncMovePage5();"><img
                        src="https://www.brandi.co.kr/static/3.47.4/images/ic-myshopping-faq-s@3x.png"><br><a>FAQ</a>
                </li>
            </ul>
        </nav>

    </div>
    <div id="FAQlist">
        <h5>취소/환불/교환 관련</h5>
        <a id="toggle">▶ 주문을 취소하고 싶어요.</a>
        <hr>
        <div id="contact">
            주문은 MY 페이지 메뉴에서 직접 취소 가능 합니다.<br>

            <br>- 결제대기/결제완료/상품준비중 : 주문/배송조회에서 고객님께서 직접 주문취소 가능
            <br>
            <br>- 배송준비중 : 판매자 배송 준비 기간으로 3영업일(주말 제외) 간 주문취소가 되지 않으며, 만약 3영업일 이내 주문 취소를 원하실 경우
            <br>판매자에게 Q&A/카톡/전화로 직접 주문취소 요청 하시어 가능 여부를 확인해 주셔야 합니다.
        </div>
        <br><a id="toggle2">▶ 환불은 언제 되나요?</a>
        <hr>
        <div id="contact2">
            1) 1) 주문취소 하신 경우
            <br>- 주문 취소 접수일로부터 하기와 같이 소요됩니다.
            <br>
            <br>2) 환불 하신 경우
            <br>- 판매처에서 반품 상품 입고/검수 후 브랜디 측으로 [환불승인]이 접수되는 날로부터 하기와 같이 소요됩니다.
            <br>
            <br>※ 결제수단 별 환불 소요기간
            <br>계좌를 통한 환급 : 환불 승인 또는 주문 취소 처리 완료 후 영업일 기준 1~2일
            <br>카드 취소를 통한 환급 : 환불 승인 또는 주문 취소 처리 완료 후 영업일 기준 2~4일 (카드사별 상이)
            <br>핸드폰 결제 취소를 통한 환급 : 핸드폰 결제 취소(전월 결제 시 계좌 환급 진행되며 환급 기간은 계좌를 통한 환급과 동일)
        </div>
        <br><a id="toggle3">▶ 환불/교환 하고 싶어요.</a>
        <hr>
        <div id="contact3">
            교환/반품 모두 브랜디 APP 내의 [환불요청] 버튼을 클릭 후 진행 가능하십니다.
            <br>
            <br> - 교환의 경우 환불요청 버튼을 눌러 주신 뒤 교환 처리가 완료된 후 환불요청 취소 해 주시면 됩니다.
            <br>환불/교환 요청 접수 시 택배 회수 시스템을 제공되지 않으며 각 스토어마다 환불 및 교환의 규정에 차이가 있을 수 있으므로
            <br>구매하셨던 판매자 고객센터로 직접 관련 문의 해 주셔야 확인 가능한 점 참고 부탁드립니다.
            <br>혹, 판매자 고객센터와 연결이 어려우신 경우
            <br> 주문/배송조회 ▶ 상품사진클릭 ▶ 상세페이지 ▶ Q&A 게시글 작성 해 주시면
            <br>영업일 기준 24시간 이내 답변 받아 보실 수 있습니다.
        </div>
        <br><a id="toggle4">▶ 반품을 보낼 때 배송비를 동봉하지 않았어요. 환불 받을 금액에서 차감이 가능한가요?</a>
        <hr>
        <div id="contact4">
            안타깝지만 배송비 차감 환불은 어렵습니다.
            <br>번거로우시더라도 판매자분께 택배비 입금 또는 상품 발송시 동봉 등의 방법을 협의 부탁 드립니다
        </div>
        <br><a id="toggle5">▶ 무료배송으로 받았는데 왜 반품배송비를 내야 하나요?</a>
        <hr>
        <div id="contact5">
            무료배송은 해당 상품을 구매 확정하셔야 받을 수 있는 혜택으로
            <br>상품 반품 시 판매자가 부담한 초기 배송비와 반품 배송비까지 왕복 배송비가 발생될 수 있습니다.
            <br>
            <br>반품 사유에 따라 배송비 지불 여부의 차이가 있습니다.
            또한 배송비 금액 확인 및 반품 사유에 대한 문의는 해당 스토어를 통해 자세히 안내 받으실 수 있습니다.
        </div>
        <br><a id="toggle6">▶ 환불을 포인트로 받을 수 있나요?</a>
        <hr>
        <div id="contact6">
            안타깝지만 주문취소 또는 환불 시 원결제하셨던 수단으로 환급이 진행되고 있으며 포인트 환불은 불가능 합니다
        </div>
        <br><a id="toggle7">▶ 주문 취소, 환불 시 사용한 포인트와 쿠폰은 복원 되나요?</a>
        <hr>
        <div id="contact7">
            포인트의 경우 주문 취소 완료 또는 환불 완료 시 1영업일 이내로 복원 됩니다.
            <br>쿠폰의 경우 주문 취소 완료와 환불 완료 시점에 쿠폰의 유효 기간이 남아 있다면 자동 복원되나
            <br>유효 기간이 경과되었을 경우에는 복원되지 않기에 참고 부탁 드립니다.
        </div>
        <h5>주문/결제/배송 관련</h5>
        <a id="toggle8">▶ 주문 내역을 확인하고 싶어요.</a>
        <hr>
        <div id="contact8">
            브랜디 회원일 경우 로그인 후 MY페이지 ▷ 주문/배송조회에서 확인 가능합니다.
            <br>
            <br>비회원 구매일 경우 MY페이지 > 비회원 구매 조회 > 주문번호 및 구매자 정보 입력 후 확인 가능합니다.
        </div>
        <br><a id="toggle9">▶ 주문 후 결제 수단을 변경할 수 있나요?</a>
        <hr>
        <div id="contact9">
            주문 완료 후에는 결제 수단을 변결할 수 없습니다.
            <br>상품 및 배송관리는 구매하신 스토어에서 진행 됩니다. 구매하신 스토어 고객센터 및 Q&A로 문의하시면 안내 받으실 수 있습니다.
        </div>
        <br><a id="toggle10">▶ 주문 후 옵션, 배송지 변경은 어떻게 하나요?</a>
        <hr>
        <div id="contact10">
            상품 및 배송관리는 구매하신 스토어에서 진행 됩니다. 구매하신 스토어 고객센터 및 Q&A로 문의하시면 안내 받으실 수 있습니다.
        </div>
        <br><a id="toggle11">▶ 주문 상태(진행 현황)에 대해 알고 싶어요.</a>
        <hr>
        <div id="contact11">
            로그인 후, MY페이지 ▶ 주문/배송조회에서 확인하실 수 있습니다.
            <br>- 결제대기: 주문이 완료되어 결제를 기다리는 상태(가상계좌 입금전)
            <br>- 결제완료: 주문 요청이 완료된 상태
            <br>- 상품준비: 판매자가 상품준비중인 상태
            <br>- 배송준비: 판매자가 상품을 검수 후 배송을 보내기 위해 준비 상태
            <br> - 배송중: 상품이 택배사에 접수되어 송장 번호가 등록되며 배송 추적이 가능
            <br>- 배송완료: 택배기사님께서 고객님께 상품이 배송된 상태
            <br>- 구매확정: 상품이 고객님께 전달되었고, 구매 확정 버튼을 누른 상태이며 사진,텍스트 리뷰 작성이 가능하며 리뷰를 남기실 경우 적립금 지급
        </div>
        <br><a id="toggle12">▶ 무통장입금(가상계좌)가 무엇인가요?</a>
        <hr>
        <div id="contact12">
            주문 건 마다 생성되는 입금 전용 계좌를 통한 결제 방식 입니다.
            <br>
            <br>- 주문 후 발급된 가상계좌에 정확한 결제금액을 입금 해주시면 10~15분 후 결제완료 됩니다.
            <br>- 결제완료 전 주문취소 시 정상적으로 환불되지 않으니, 이 경우 브랜디 고객센터(☎1566-6575, 카카오톡 플러스 친구 '브랜디')로 문의 부탁드립니다.
            <br>- ATM 기기에서 무통장 입금할 경우 100원 단위 입금이 불가능하므로 계좌이체, 인터넷 뱅킹, 폰뱅킹을 이용 해 주세요.
        </div>
        <br><a id="toggle13">▶ 무통장입금(가상계좌) 하려는데 주문자와 입금자가 달라도 되나요?</a>
        <hr>
        <div id="contact13">
            네, 가상계좌로 입금이 진행 되기 때문에 주문자명과 입금자가 달라도 결제금액과 계좌번호를 정확히 입력하시면 입금이 가능합니다.
        </div>
        <br><a id="toggle14">▶ 무통장입금(가상계좌)은 주문 후 언제까지 입금해야 하나요?</a>
        <hr>
        <div id="contact14">
            가상계좌는 1회성이며, 계좌 생성 후 5일동안 유효하며 유효기간이 경과하면 계좌만료 됩니다.
            <br>(ex. 1월 1일 주문 > 1월 5일 마감 (1월 4일 23시 59분까지 입금 진행)
            <br>주문시 발송 된 SMS 확인 부탁드립니다.
        </div>
        <br><a id="toggle15">▶ 가상계좌로 입금 시 없는 계좌라고 나와요.</a>
        <hr>
        <div id="contact15">
            거래 불가 사유를 아래 항목에서 확인해 주세요.
            <br> - 가상계좌 거래 기간 확인 / 결제금액과 입금액이 일치한지 확인 / 송금 어플이나 ATM 오류일 경우 은행 방문하셔서 직접 입금진행 부탁드립니다
        </div>
        <br><a id="toggle16">▶ 현금영수증 발급은 어떻게 하나요?</a>
        <hr>
        <div id="contact16">
            고객님께서 주문시 직접 하실 수 있는 경우와 주문 완료 후 카카오톡 플러스친구 [브랜디]로 신청시 가능합니다.
            <br>- 주문 시 신청 : 결제 창에서 현금영수증 발행에 체크한 후
            <br>용도(사업자,개인)와 발행 수단을 선택하여 결제를 진행하면 됩니다. (개인/소득공제용 , 사업자/지출증빙용)
            <br>- 주문 후 신청: 구매자 성함 / 연락처 / 상품명 / 상품금액 / 이메일 을 작성하여 카카오톡 플러스친구 [브랜디]로 접수
        </div>
        <br><a id="toggle17">▶ 배송조회는 어디에서 확인할 수 있나요?</a>
        <hr>
        <div id="contact17">
            MY페이지 ▷ 주문/배송조회 ▷ 배송조회 클릭
            <br>
            <br>- 상품 출고 당일에는 늦은 오후부터 배송조회가 가능 합니다.
            <br>- 계속해서 배송 움직임이 보여지지 않을 시, 브랜디 고객센터(☎1566-6575, 카카오톡 플러스친구 '브랜디')로 문의 부탁드립니다.
        </div>
        <br><a id="toggle18">▶ 여러 상품을 한번에 주문했는데, 왜 배송이 따로따로 오는 건가요?</a>
        <hr>
        <div id="contact18">
            브랜디는 다양한 스토어가 입점되어 있는 플랫폼 서비스로, 구매하신 스토어에서 각각 배송 진행됩니다.
            <br>정확한 배송일정은 구매하신 스토어 고객센터 및 Q&A에 문의하시면 안내 받으실 수 있습니다.
        </div>
        <br><a id="toggle19">▶ 주문한 상품과 다른 상품이 배송되었어요. (오배송)</a>
        <hr>
        <div id="contact19">
            물품이 오배송 된 경우, 자동 구매확정 방지를 위해 APP에서 [환불요청] 버튼 클릭 후 ,
            <br>고객님께서 구매하셨던 해당 스토어 판매자에게(Q&A 또는 전화, 카톡) 문의하시면 됩니다.
        </div>
        <br><a id="toggle20">▶ 주문한 상품을 수령하지 못했는데, '배송완료'처리 되었어요.</a>
        <hr>
        <div id="contact20">
            브랜디 고객센터(☎1566-6575, 카카오톡 '브랜디') ▷ '구매확정 보류처리' 접수시 자동 구매확정 처리되지 않습니다.
            <br> - 배송조회 시 조회가 이루어지지 않을 경우, 구매하신 스토어 고객센터 및 Q&A로 문의하시면 안내받으실 수 있습니다.
            <br> - 배송완료 장소를 확인하시었으나 수령하지 못하셨다면 배송조회를 통해 택배사에 문의 부탁드립니다.
        </div>
        <br><a id="toggle21">▶ 포인트는 어떻게 사용하나요?</a>
        <hr>
        <div id="contact21">
            마지막 결제 단계에서 포인트를 적용하여 사용하실 수 있으며, 총 결제금액의 50%까지 포인트 적용이 가능합니다.
        </div>
        <br><a id="toggle22">▶ 쿠폰은 어떻게 사용하나요?</a>
        <hr>
        <div id="contact22">
            쿠폰은 브랜디 앱 또는 웹에서 결제 시 사용하실 수 있으며 쿠폰 이용 조건을 꼭 확인해 주시기 바랍니다.
            <br>또한 쿠폰은 전체 금액이 아닌 각 상품마다 적용되기에 금액 제한이 있는 쿠폰의 경우
            <br>단품의 금액을 확인하신 뒤 사용 부탁 드립니다.
        </div>
    </div>
    <footer>
        <div id="tel">
            <h2>고객센터 1234-1234</h2>
            <a>영업시간 : AM 10:00 ~ PM 17:00 (주말 및 공유일 휴무)
                <br>점심시간 : PM 12:30 ~ PM 13:30</a>
        </div>
        <hr>
        <div id="address">
            <a>
                회사명 : ㈜브랜디 | 대표이사 : 서정민 | 사업자등록번호 : 220-88-93187 | 통신판매업신고 : 2016-서울강남-00359 | 호스팅사업자 : (주)브랜디
                <br>주소 : (06223) 서울특별시 강남구 테헤란로 32길 26 청송빌딩
                <br>개인정보관리책임자 : 윤석호(privacy@brandi.co.kr)
                <br>브랜디는 통신판매중개자로서 통신판매 당사자가 아니며, 판매자가 등록한 상품정보 및 거래에 브랜디는 책임을 지지 않습니다.
            </a>
        </div>
        <div id="agree">
            <a>이용약관</a>ㅣ<a>개인정보처리방침</a>ㅣ<a>사업자정보확인</a>
        </div>
    </footer>
</body>
<script>
  
</script>


</html>