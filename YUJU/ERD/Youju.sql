/* Drop Tables */

DROP TABLE order_detail CASCADE CONSTRAINTS;
DROP TABLE orderlist CASCADE CONSTRAINTS;
DROP TABLE product_qna CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE likeitem CASCADE CONSTRAINTS;
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

DROP SEQUENCE seq_mem;
DROP SEQUENCE seq_store_mem;
DROP SEQUENCE seq_product;
DROP SEQUENCE seq_orderlist;
DROP SEQUENCE seq_productqna;
DROP SEQUENCE seq_review;
DROP SEQUENCE seq_onum;


/* Create Tables */

CREATE TABLE mem
(
	mcode number NOT NULL,
	mname varchar2(15) NOT NULL,
	mid varchar2(50) NOT NULL,
	mpw varchar2(50) NOT NULL,
	maddress varchar2(150) DEFAULT 'N',
	mphone varchar2(20) NOT NULL,
	memail varchar2(50) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (mcode)
);
SELECT * FROM MEM;
INSERT INTO mem(mcode,mname,mid,mpw,mphone,memail) VALUES (1,'노유림','yl','1111','01034502766','yyj2766@naver.com');



DROP TABLE store_mem;
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
INSERT INTO store_mem(scode,sname,sid,spw,sphone,semail,sowner) VALUES (1,'아디다스','adidas','1111','01011111111','adidas@naver.com','아디다스만든사람');

DROP TABLE product;
CREATE TABLE product
(
	pcode number NOT NULL,
	scode number NOT NULL,
	pname varchar2(100) NOT NULL,
	psize varchar2(5) NOT NULL,
	pcolor varchar2(50) NOT NULL,
	pprice number NOT NULL,
	cate1 varchar2(50) NOT NULL,
	cate2 varchar2(50) NOT NULL,
	cate3 varchar2(50) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (pcode)
);

SELECT * FROM product


INSERT INTO product (pcode,scode,pname,psize,pcolor,pprice,cate1,cate2,cate3) VALUES (1,1,'블링블링블라우쯔','L','흰색',15000,'best','브랜드','상의');

SELECT o.OCODE ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE 
      FROM ORDER_DETAIL o,PRODUCT p,REVIEW r,MEM m
      WHERE m.MCODE = 1;
     
ALTER TABLE product
	ADD FOREIGN KEY (scode)
	REFERENCES store_mem (scode)
;




CREATE SEQUENCE SEQ_MP_FILE_NO
START WITH 1
increment BY 1
nomaxvalue nocache;	
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

INSERT INTO orderlist(ocode,mcode,totalprice,state) values(1,1,60000,'결제진행');
ALTER TABLE orderlist
	ADD FOREIGN KEY (ocode)
	REFERENCES order_detail (ocode)
;


ALTER TABLE orderlist
	ADD FOREIGN KEY (mcode)
	REFERENCES mem (mcode)
;



DROP TABLE order_detail;
CREATE TABLE order_detail
(
	ocode number NOT NULL,
	onum number NOT NULL UNIQUE,
	pcode number NOT NULL,
	p_detail varchar2(50),
	amount number NOT NULL,
	total NUMBER NOT NULL, 
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (ocode,onum)
);
SELECT * FROM order_detail;
INSERT INTO order_detail (ocode, onum, pcode,p_detail,amount,total) values(1,1,1,'/yellow/L',2,30000);
INSERT INTO order_detail (ocode, onum, pcode,p_detail,amount,total) values(1,2,1,'/yellow/XL',2,30000);

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
	answer varchar2(1000) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (qnacode)
);

CREATE SEQUENCE SEQ_TB_FILE_IDX 
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOCACHE;

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
	pcode number NOT NULL,
	mcode number NOT NULL,
	review varchar2(1000) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (rcode)
);

SELECT rowwn, rcode, sname , pname, ocode FROM 




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






