/* Drop Tables */

DROP TABLE order_detail CASCADE CONSTRAINTS;
DROP TABLE orderlist CASCADE CONSTRAINTS;
DROP TABLE product_qna CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE like CASCADE CONSTRAINTS;
DROP TABLE mem CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE store_mem CASCADE CONSTRAINTS;

CREATE SEQUENCE seq_mem; /*회원 번호 자동 업데이트*/
CREATE SEQUENCE seq_store_mem; /*스토어회원 번호 자동 업데이트 */
CREATE SEQUENCE seq_product; /*상품번호 자동 업데이트 */
CREATE SEQUENCE seq_orderlist; /*주문목록 번호 자동 업데이트*/
CREATE SEQUENCE seq_productqna; /* 상품 Q&A 번호 자동 업데이트 */
CREATE SEQUENCE seq_review; /* 상품 리뷰 자동 번호 업데이트 */
CREATE SEQUENCE seq_onum; /*주문 일련 번호 자동 업데이트*/

SELECT o.OCODE ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE FROM ORDER_DETAIL o,PRODUCT p,REVIEW 
r,MEM m WHERE m.MCODE = 44; 

/* Create Tables */

CREATE TABLE mem
(
	mcode number NOT NULL,
	mname varchar2(15) NOT NULL,
	mid varchar2(50) NOT NULL,
	mpw varchar2(50) NOT NULL,
	maddress1 varchar2(150) DEFAULT 'N',
	maddress2 varchar2(150) DEFAULT 'N',
	maddress3 varchar2(150) DEFAULT 'N',
	maddress4 varchar2(150) DEFAULT 'N',
	maddress5 varchar2(150) DEFAULT 'N',
	mphone varchar2(20) NOT NULL,
	memail varchar2(50) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (mcode)
);
SELECT * FROM MEM;
INSERT INTO mem(mcode,mname,mid,mpw,mphone,memail) VALUES (1,'노유림','yl','1111','01034502766','yyj2766@naver.com');




CREATE TABLE store_mem
(
	scode number NOT NULL,
	sname varchar2(100) NOT NULL,
	sid varchar2(50) NOT NULL,
	spw varchar2(50) NOT NULL,
	sphone varchar2(20) NOT NULL,
	semail varchar2(50) NOT NULL,
	sowner varchar2(15) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (scode)
);



SELECT * FROM store_mem;
INSERT INTO store_mem(scode,sname,sid,spw,sphone,semail,sowner) VALUES (1,'아디다스','adidas','1111','01011111111','adidas@naver.com','아디다스');
INSERT INTO store_mem(scode,sname,sid,spw,sphone,semail,sowner) VALUES (2,'나이키','nike','2222','01022222222','nike@naver.com','나이키');


CREATE TABLE product
(
	pcode number NOT NULL,
	scode number NOT NULL,
	pname varchar2(100) NOT NULL,
	psize varchar2(5) NOT NULL,
	pcolor varchar2(50) NOT NULL,
	pprice number NOT NULL,
	pimg varchar2(200) NOT NULL,
	cate1 varchar2(50) NOT NULL,
	cate2 varchar2(50) NOT NULL,
	cate3 varchar2(50) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (pcode)
);
INSERT INTO product(pcode,scode,pname,psize,pcolor,pprice,pimg,cate1,cate2,cate3) VALUES (1,1,'삼선스레빠','225','black',5000,'이미지없음','베스트','신발','슬리퍼');
INSERT INTO product(pcode,scode,pname,psize,pcolor,pprice,pimg,cate1,cate2,cate3) VALUES (2,1,'삼선 티셔츠','L','PINK',10000,'이미지없음','베스트','상의','티셔츠');
INSERT INTO product(pcode,scode,pname,psize,pcolor,pprice,pimg,cate1,cate2,cate3) VALUES (3,2,'나이키 반바지','L','BLUE',20000,'이미지없음','베스트','하의','반바지');
SELECT * FROM product;

CREATE TABLE orderlist
(
	ocode number NOT NULL,
	mcode number NOT NULL,
	totalprice number NOT NULL,
	state varchar2(10) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (ocode)
);
INSERT INTO orderlist(ocode,mcode,totalprice,state) VALUES (1,44,5000,'완료');
INSERT INTO orderlist(ocode,mcode,totalprice,state) VALUES (2,44,35000,'대기');
SELECT * FROM orderlist;

ALTER TABLE order_detail
	ADD FOREIGN KEY (ocode)
	REFERENCES  orderlist (ocode)
;


ALTER TABLE orderlist
	ADD FOREIGN KEY (mcode)
	REFERENCES mem (mcode)
;

SELECT o.OCODE ,o.ONUM ,p.PIMG ,sm.SNAME ,p.PNAME ,o.P_DETAIL ,o.AMOUNT ,o.TOTAL ,o.UPDATEDATE,o2.STATE
FROM ORDER_DETAIL o,PRODUCT p,MEM m,STORE_MEM sm,ORDERLIST o2 
WHERE 
o.OCODE = o2.OCODE 
AND p.PCODE = o.PCODE 
AND p.SCODE = sm.SCODE 
AND m.MCODE = 44
ORDER BY o.OCODE, o.ONUM ASC
;


CREATE TABLE order_detail
(
   ocode number NOT NULL,
   onum number NOT NULL ,
   pcode number NOT NULL,
   p_detail varchar2(50),
   amount number NOT NULL,
   total NUMBER NOT NULL, 
   regdate DATE DEFAULT sysdate,
   updatedate DATE DEFAULT sysdate,
   PRIMARY KEY (onum,ocode)
);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (1,1,1,'삼선슬리퍼',1,5000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (1,2,3,'L/BLUE',2,40000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (2,1,1,'삼선슬리퍼',2,10000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (2,2,2,'L/PINK',2,20000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (2,3,3,'L/BLUE',2,40000);


SELECT * FROM order_detail;

ALTER TABLE order_detail
	ADD FOREIGN KEY (pcode)
	REFERENCES product (pcode)
;

CREATE TABLE product_qna
(
	qnacode number NOT NULL,
	scode number NOT NULL, 
	mcode number NOT NULL,
	pcode number NOT NULL,
	question varchar2(1000) NOT NULL,
	answer varchar2(1000),
	state varchar2(20) DEFAULT '미답변',
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (qnacode)
);

SELECT * FROM MEM WHERE MCODE = 44;

ALTER TABLE product_qna
	ADD FOREIGN KEY (pcode)
	REFERENCES product (pcode)
;
ALTER TABLE product_qna
	ADD FOREIGN KEY (mcode)
	REFERENCES mem (mcode)
;
ALTER TABLE product_qna
	ADD FOREIGN KEY (scode)
	REFERENCES store_mem (scode)
;

CREATE TABLE review
(
	rcode number NOT NULL,
	scode NUMBER NOT NULL,
	ocode NUMBER NOT NULL,
	pcode number NOT NULL,
	mcode number NOT NULL,
	review varchar2(1000) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (rcode)
);

INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (1,1,1,1,44,'발에 딱 맞아요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (2,2,1,1,44,'색이 너무 예뻐요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (3,2,1,2,44,'사이즈가 잘 맞아요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (4,2,2,3,44,'비침이 너무 심해요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (5,1,2,3,44,'하나 더사려구요');
SELECT * FROM REVIEW ;
/*주문번호 상품명 사이즈/컬러 내용 작성일자*/
SELECT r.RCODE ,sm.SNAME ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE 
FROM ORDER_DETAIL o,PRODUCT p,REVIEW r,MEM m,STORE_MEM sm 
WHERE m.MCODE = 44;

/*review select*/
SELECT r.RCODE,o2.OCODE ,sm.SNAME ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE 
FROM ORDER_DETAIL o,PRODUCT p,REVIEW r,MEM m,STORE_MEM sm,ORDERLIST o2 
WHERE o.OCODE = r.ocode
AND o.OCODE =o2.OCODE 
AND p.PCODE = r.PCODE 
AND SM .scode = r.SCODE 
AND p.PCODE = o.PCODE 
AND m.MCODE = 44
ORDER BY o2.OCODE ASC;




ALTER TABLE review
	ADD FOREIGN KEY (pcode)
	REFERENCES product (pcode)
;
ALTER TABLE review
	ADD FOREIGN KEY (mcode)
	REFERENCES mem (mcode)
;
ALTER TABLE review
	ADD FOREIGN KEY (scode)
	REFERENCES store_mem (scode)
;
ALTER TABLE review
	ADD FOREIGN KEY (ocode)
	REFERENCES orderlist (ocode)
;



CREATE TABLE likeitem
(
	mcode number NOT NULL,
	pcode number NOT NULL,
	regdate DATE DEFAULT sysdate,
	updateupdate DATE DEFAULT sysdate,
	PRIMARY KEY (mcode, pcode)
);


ALTER TABLE likeitem
	ADD FOREIGN KEY (pcode)
	REFERENCES product (pcode)
;
ALTER TABLE likeitem
	ADD FOREIGN KEY (mcode)
	REFERENCES mem (mcode)
;






