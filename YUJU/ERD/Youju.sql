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

ALTER TABLE orderlist
   ADD FOREIGN KEY (ocode)
   REFERENCES order_detail (ocode)
;


ALTER TABLE orderlist
   ADD FOREIGN KEY (mcode)
   REFERENCES mem (mcode)
;


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
   PRIMARY KEY (ocode)
);

ALTER TABLE orderlist
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





