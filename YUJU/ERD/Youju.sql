/* Drop Tables */

DROP TABLE order_detail CASCADE CONSTRAINTS;
DROP TABLE orderlist CASCADE CONSTRAINTS;
DROP TABLE product_qna CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE product_detail CASCADE CONSTRAINTS;
DROP TABLE mem CASCADE CONSTRAINTS;
DROP TABLE store_mem CASCADE CONSTRAINTS;
DROP TABLE likeitem CASCADE CONSTRAINTS;
DROP TABLE p_basket CASCADE CONSTRAINTS;
DROP TABLE category CASCADE CONSTRAINTS;

SELECT * FROM review
SELECT * FROM product;
SELECT * FROM product_detail;
SELECT * FROM product_img;
SELECT * FROM category;
SELECT * FROM store_mem;


CREATE SEQUENCE seq_mem NOCACHE; /*회원 번호 자동 업데이트*/
CREATE SEQUENCE seq_store_mem; /*스토어회원 번호 자동 업데이트 */
CREATE SEQUENCE seq_product NOCACHE; /*상품번호 자동 업데이트 */
CREATE SEQUENCE seq_orderlist NOCACHE; /*주문목록 번호 자동 업데이트*/
CREATE SEQUENCE seq_order_detail NOCACHE; /*주문목록 번호 자동 업데이트*/
CREATE SEQUENCE seq_productqna NOCACHE; /* 상품 Q&A 번호 자동 업데이트 */
CREATE SEQUENCE seq_review NOCACHE; /* 상품 리뷰 자동 번호 업데이트 */
CREATE SEQUENCE seq_onum; /*주문 일련 번호 자동 업데이트*/
CREATE SEQUENCE seq_p_basket; /*주문 일련 번호 자동 업데이트*/


DROP SEQUENCE seq_mem; /*회원 번호 자동 업데이트*/
DROP SEQUENCE seq_store_mem; /*스토어회원 번호 자동 업데이트 */
DROP SEQUENCE seq_product; /*상품번호 자동 업데이트 */
DROP SEQUENCE seq_orderlist; /*주문목록 번호 자동 업데이트*/
DROP SEQUENCE seq_order_detail; /*주문목록 번호 자동 업데이트*/
DROP SEQUENCE seq_productqna; /* 상품 Q&A 번호 자동 업데이트 */
DROP SEQUENCE seq_review ; /* 상품 리뷰 자동 번호 업데이트 */
DROP SEQUENCE seq_onum; /*주문 일련 번호 자동 업데이트*/
DROP SEQUENCE seq_p_basket; /*주문 일련 번호 자동 업데이트*/

SELECT seq_orderlist.currval FROM dual;
SELECT o.OCODE ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE
FROM ORDER_DETAIL o,PRODUCT p,REVIEW
    r,MEM m WHERE m.MCODE = 44;

/* Create Tables */
SELECT sm.SNAME ,p.PNAME, p.PPRICE
FROM PRODUCT p ,STORE_MEM sm
WHERE
        p.SCODE = sm.SCODE;
SELECT sm.SNAME ,p.PNAME, p.PPRICE,p.PCODE
FROM PRODUCT p ,STORE_MEM sm
WHERE
        p.SCODE = sm.SCODE
  AND p.PCODE = 1;
CREATE TABLE mem
(
    mcode number NOT NULL,
    mname varchar2(15) NOT NULL,
    mid varchar2(50) NOT NULL,
    mpw varchar2(50) NOT NULL,
    maddress varchar2(150) DEFAULT 'N',
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
INSERT INTO mem(mcode,mname,mid,mpw,mphone,memail) VALUES (seq_mem.nextval,'노유림','yl','1111','01011111111','yyj2766@naver.com');
INSERT INTO mem(mcode,mname,mid,mpw,mphone,memail) VALUES (seq_mem.nextval,'최현주','juju','2222','01022222222','juju@naver.com');
INSERT INTO mem(mcode,mname,mid,mpw,mphone,memail) VALUES (seq_mem.nextval,'김철수','chulsu','3333','01033333333','chlsu@naver.com');

/*catagory test*/
CREATE TABLE category(
                         cateName varchar2(20) NOT NULL,
                         cateCode varchar2(30) NOT NULL,
                         cateCodeRef varchar2(30) NULL,
                         PRIMARY key(cateCode),
                         foreign key(cateCodeRef) REFERENCES category(cateCode)
);

SELECT product.cateCode, category.cateCodeRef, cateName, pcode FROM product,category WHERE product.cateCode = category.cateCode AND pcode = 1;

SELECT * FROM category WHERE catecode = '100';
INSERT INTO CATEGORY (cateName, cateCode) VALUES ('아우터','100');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('자켓','101','100');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('가디건','102','100');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('코트','103','100');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('점퍼','104','100');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('패딩','105','100');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('무스탕/퍼','106','100');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('기타','107','100');

INSERT INTO CATEGORY (cateName, cateCode) VALUES ('상의','200');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('티셔츠','201','200');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('셔츠/블라우스','202','200');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('니트','203','200');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('후드/맨투맨','204','200');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('베스트','205','200');

INSERT INTO CATEGORY (cateName, cateCode) VALUES ('바지','300');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('청바지','301','300');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('슬랙스','302','300');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('면바지','303','300');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('반바지','304','300');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('트레이닝/조거','305','300');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('레깅스','306','300');

INSERT INTO CATEGORY (cateName, cateCode) VALUES ('스커트','400');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('미니','401','400');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('미디','402','400');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('롱','403','400');

INSERT INTO CATEGORY (cateName, cateCode) VALUES ('신발','500');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('플렛/로퍼','501','500');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('샌들/슬리퍼','502','500');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('힐','503','500');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('스니커즈','504','500');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('부츠/워커','505','500');

INSERT INTO CATEGORY (cateName, cateCode) VALUES ('가방','600');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('크로스백','601','600');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('도트백','602','600');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('숄더백','603','600');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('에코백','604','600');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('클러치','605','600');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('백팩','606','600');


INSERT INTO CATEGORY (cateName, cateCode) VALUES ('주얼리','700');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('귀걸이','701','700');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('목걸이','702','700');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('팔찌/발찌','703','700');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('반지','704','700');

INSERT INTO CATEGORY (cateName, cateCode) VALUES ('잡화','800');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('휴대폰acc','801','800');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('헤어acc','802','800');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('양말/스타킹','803','800');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('지갑/파우치','804','800');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('모자','805','800');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('벨트','806','800');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('시계','807','800');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('스카프/머플러','808','800');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('아이웨어','809','800');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('기타','810','800');

INSERT INTO CATEGORY (cateName, cateCode) VALUES ('라이프웨어','900');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('언더웨어','901','900');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('홈웨어','902','900');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('스윔웨어','903','900');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('비치웨어','904','900');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('기타','905','900');

INSERT INTO CATEGORY (cateName, cateCode) VALUES ('빅사이즈','1000');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('빅아우터','1001','1000');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('빅상의','1002','1000');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('빅바지','1003','1000');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('빅원피스','1004','1000');
INSERT INTO CATEGORY (cateName, cateCode, cateCodeRef) VALUES ('빅스커트','1005','1000');
SELECT cateCodeRef FROM category WHERE cateCode = '103';
SELECT cateCode FROM CATEGORY  WHERE cateCode IN (SELECT cateCodeRef FROM category WHERE cateCode = '103');
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


SELECT psize FROM product_detail;
SELECT * FROM store_mem;
INSERT INTO store_mem(scode,sname,sid,spw,sphone,semail,sowner) VALUES (seq_store_mem.nextval,'BENITO','benito','1111','01011111111','benito@naver.com','김희정');
INSERT INTO store_mem(scode,sname,sid,spw,sphone,semail,sowner) VALUES (seq_store_mem.nextval,'CHOPER','shoper','2222','01022222222','choper@naver.com','홍현희');
INSERT INTO store_mem(scode,sname,sid,spw,sphone,semail,sowner) VALUES (seq_store_mem.nextval,'GAENSO','gaenso','3333','01033333333','gaenso@naver.com','박종현');
INSERT INTO store_mem(scode,sname,sid,spw,sphone,semail,sowner) VALUES (seq_store_mem.nextval,'HOTPING','hotping','4444','01044444444','hotping@naver.com','김여진');


SELECT * FROM RECYCLEBIN;

FLASHBACK TABLE product_detail TO BEFORE DROP;
SELECT OBJECT_NAME, ORIGINAL_NAME, TYPE, CREATETIME FROM RECYCLEBIN
ORDER BY CREATETIME;

SELECT * FROM product_detail;
SELECT * FROM product;

INSERT INTO product (PCODE,SCODE,CATECODE,PNAME,PIMG,PTHUMBIMG,PPRICE,TODAY,BEST,REGDATE,UPDATEDATE) VALUES (1,1,'202','비비안 블라우스','\imgUpload\2020\08\24\6a4b93a9-c909-40fd-bcfc-45eea5fe4d75_bibian.PNG','\imgUpload\2020\08\24\s\s_6a4b93a9-c909-40fd-bcfc-45eea5fe4d75_bibian.PNG',34000,1,1,TIMESTAMP '2020-08-24 00:17:02.000000',TIMESTAMP '2020-08-24 00:17:02.000000');
INSERT INTO product (PCODE,SCODE,CATECODE,PNAME,PIMG,PTHUMBIMG,PPRICE,TODAY,BEST,REGDATE,UPDATEDATE) VALUES (2,1,'302','토미 슬랙스','\imgUpload\2020\08\24\33a91ae0-3c08-4d64-bc3e-dd3c6232f218_tomislacks.PNG','\imgUpload\2020\08\24\s\s_33a91ae0-3c08-4d64-bc3e-dd3c6232f218_tomislacks.PNG',49000,1,0,TIMESTAMP '2020-08-24 00:19:57.000000',TIMESTAMP '2020-08-24 00:19:57.000000');
INSERT INTO product (PCODE,SCODE,CATECODE,PNAME,PIMG,PTHUMBIMG,PPRICE,TODAY,BEST,REGDATE,UPDATEDATE) VALUES (3,1,'102','헬레나 골지 가디건','\imgUpload\2020\08\24\ac85f8d8-4451-4ccb-869e-fc1bfde412b3_hellenagollji.PNG','\imgUpload\2020\08\24\s\s_ac85f8d8-4451-4ccb-869e-fc1bfde412b3_hellenagollji.PNG',19000,1,0,TIMESTAMP '2020-08-24 00:21:33.000000',TIMESTAMP '2020-08-24 00:21:33.000000');
INSERT INTO product (PCODE,SCODE,CATECODE,PNAME,PIMG,PTHUMBIMG,PPRICE,TODAY,BEST,REGDATE,UPDATEDATE) VALUES (4,1,'202','실비아 퍼프 블라우스','\imgUpload\2020\08\24\f210aa65-925e-4184-b763-50fbd2dcea06_slviapubp.PNG','\imgUpload\2020\08\24\s\s_f210aa65-925e-4184-b763-50fbd2dcea06_slviapubp.PNG',42000,0,1,TIMESTAMP '2020-08-24 00:22:26.000000',TIMESTAMP '2020-08-24 00:22:26.000000');
INSERT INTO product (PCODE,SCODE,CATECODE,PNAME,PIMG,PTHUMBIMG,PPRICE,TODAY,BEST,REGDATE,UPDATEDATE) VALUES (5,2,'101','언발크롭셔츠자켓','\imgUpload\2020\08\24\9f33767b-2f88-4667-8aa1-deb99b0f150c_unbalcrop.PNG','\imgUpload\2020\08\24\s\s_9f33767b-2f88-4667-8aa1-deb99b0f150c_unbalcrop.PNG',27000,0,1,TIMESTAMP '2020-08-24 00:23:47.000000',TIMESTAMP '2020-08-24 00:23:47.000000');
INSERT INTO product (PCODE,SCODE,CATECODE,PNAME,PIMG,PTHUMBIMG,PPRICE,TODAY,BEST,REGDATE,UPDATEDATE) VALUES (6,2,'202','버닝빅후드오버셔츠','\imgUpload\2020\08\24\07e1eef4-0007-42d2-83f6-2541a0933b44_binghudshirt.PNG','\imgUpload\2020\08\24\s\s_07e1eef4-0007-42d2-83f6-2541a0933b44_binghudshirt.PNG',22000,1,0,TIMESTAMP '2020-08-24 00:24:47.000000',TIMESTAMP '2020-08-24 00:24:47.000000');
INSERT INTO product (PCODE,SCODE,CATECODE,PNAME,PIMG,PTHUMBIMG,PPRICE,TODAY,BEST,REGDATE,UPDATEDATE) VALUES (7,2,'401','모노체크멜빵스커트','\imgUpload\2020\08\24\7e456b60-4aed-41a5-a67b-84b86622169d_monocheck.PNG','\imgUpload\2020\08\24\s\s_7e456b60-4aed-41a5-a67b-84b86622169d_monocheck.PNG',42000,1,0,TIMESTAMP '2020-08-24 00:25:19.000000',TIMESTAMP '2020-08-24 00:25:19.000000');
INSERT INTO product (PCODE,SCODE,CATECODE,PNAME,PIMG,PTHUMBIMG,PPRICE,TODAY,BEST,REGDATE,UPDATEDATE) VALUES (8,2,'401','린넨언발스커트','\imgUpload\2020\08\24\1821d10b-9e3e-4404-8b68-7b8863f99f60_lenen.PNG','\imgUpload\2020\08\24\s\s_1821d10b-9e3e-4404-8b68-7b8863f99f60_lenen.PNG',23000,1,0,TIMESTAMP '2020-08-24 00:26:06.000000',TIMESTAMP '2020-08-24 00:26:06.000000');
INSERT INTO product (PCODE,SCODE,CATECODE,PNAME,PIMG,PTHUMBIMG,PPRICE,TODAY,BEST,REGDATE,UPDATEDATE) VALUES (9,2,'402','캉캉미니스커트','\imgUpload\2020\08\24\ae03afa2-524a-437a-88f3-62f2f863d170_kangkangmini.PNG','\imgUpload\2020\08\24\s\s_ae03afa2-524a-437a-88f3-62f2f863d170_kangkangmini.PNG',21000,1,0,TIMESTAMP '2020-08-24 00:27:29.000000',TIMESTAMP '2020-08-24 00:27:29.000000');
INSERT INTO product (PCODE,SCODE,CATECODE,PNAME,PIMG,PTHUMBIMG,PPRICE,TODAY,BEST,REGDATE,UPDATEDATE) VALUES (10,3,'203','롱슬리브시스루니트티','\imgUpload\2020\08\24\f5926838-4bb2-4820-b6fa-62518df98b3a_longslive.PNG','\imgUpload\2020\08\24\s\s_f5926838-4bb2-4820-b6fa-62518df98b3a_longslive.PNG',13000,1,0,TIMESTAMP '2020-08-24 00:31:34.000000',TIMESTAMP '2020-08-24 00:31:34.000000');


CREATE TABLE product
(   pcode number NOT NULL,
    scode number NOT NULL,
    cateCode varchar2(30) NOT NULL,
    pname varchar2(100) NOT NULL,
    pimg varchar2(1000) NOT NULL,
    pThumbImg varchar2(1000) NOT NULL,
    pprice number NOT NULL,
    today NUMBER DEFAULT 0,
    best NUMBER DEFAULT 0,
    regdate DATE DEFAULT sysdate,
    updatedate DATE DEFAULT sysdate,
    PRIMARY KEY (pcode)
);
ALTER TABLE PRODUCT ADD
    CONSTRAINT fk_category
        FOREIGN KEY (cateCode)
            REFERENCES category(cateCode);

CREATE TABLE product_detail
(
    pcode number NOT NULL,
    psize varchar2(10)  DEFAULT 'FREE',
    pcolor varchar2(50)  DEFAULT 'FREE',
    amount number default 0
);


ALTER TABLE product_detail
    ADD FOREIGN KEY (pcode)
        REFERENCES  product (pcode)
;



SELECT * FROM PRODUCT ORDER BY regdate desc;

INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'101','삼선스레빠',5000,0,0);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'102','삼선 티셔츠',10000,1,0);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'103','나이키 반바지',20000,1,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'104','나이키 백팩',30000,0,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'201','나이키 반팔',40000,1,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'202','나이키 모자',50000,0,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,2,'203','나이키 샌들',60000,1,0);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,2,'204','나이키 스커트',70000,0,0);

INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'S','화이트');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'M','화이트');


INSERT INTO product_detail(pcode,psize,pcolor) VALUES (2,'225','베이지');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (2,'230','베지이');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'230','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'230','red');

INSERT INTO product_detail(pcode,psize,pcolor) VALUES (2,'S','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (2,'S','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (2,'S','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (2,'M','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (2,'M','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (2,'M','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (2,'L','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (2,'L','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (2,'L','black');

INSERT INTO product_detail(pcode,psize,pcolor) VALUES (3,'S','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (3,'S','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (3,'S','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (3,'M','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (3,'M','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (3,'M','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (3,'L','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (3,'L','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (3,'L','black');

INSERT INTO product_detail(pcode,psize,pcolor) VALUES (4,'FREE','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (4,'FREE','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (4,'FREE','red');

INSERT INTO product_detail(pcode,psize,pcolor) VALUES (5,'S','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (5,'S','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (5,'S','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (5,'M','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (5,'M','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (5,'M','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (5,'L','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (5,'L','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (5,'L','black');

INSERT INTO product_detail(pcode,psize,pcolor) VALUES (6,'S','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (6,'S','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (6,'S','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (6,'M','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (6,'M','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (6,'M','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (6,'L','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (6,'L','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (6,'L','black');

INSERT INTO product_detail(pcode,psize,pcolor) VALUES (7,'225','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (7,'225','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (7,'225','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (7,'230','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (7,'230','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (7,'230','red');

INSERT INTO product_detail(pcode,psize,pcolor) VALUES (8,'S','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (8,'S','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (8,'S','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (8,'M','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (8,'M','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (8,'M','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (8,'L','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (8,'L','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (8,'L','black');


CREATE TABLE orderlist
(
    ocode number NOT NULL,
    mcode number NOT NULL,
    totalprice number NOT NULL,
    state varchar2(20) DEFAULT '결제준비중',
    regdate DATE DEFAULT sysdate,
    updatedate DATE DEFAULT sysdate,
    PRIMARY KEY (ocode)
);

INSERT INTO orderlist(ocode,mcode,totalprice,state) VALUES (seq_orderlist.nextval,1,45000,'상품준비중');
INSERT INTO orderlist(ocode,mcode,totalprice) VALUES (seq_orderlist.nextval,2,35000);
SELECT * FROM orderlist;

/*장바구니 insert*/
INSERT ALL
    INTO orderlist VALUES (3,44,5000,'완료',sysdate,sysdate)
INTO order_detail VALUES (3,4,1,'black','225',1,5000,sysdate,sysdate)
SELECT *
FROM dual;


ALTER TABLE orderlist
    ADD FOREIGN KEY (mcode)
        REFERENCES mem (mcode);


SELECT * FROM orderlist;
CREATE TABLE order_detail
(
    ocode number NOT NULL,
    onum number NOT NULL ,
    pcode number NOT NULL,
    amount number NOT NULL,
    p_detail varchar2(20) NOT NULL,
    state varchar2(20) DEFAULT '결제준비중',
    total NUMBER NOT NULL,
    regdate DATE DEFAULT sysdate,
    updatedate DATE DEFAULT sysdate,
    PRIMARY KEY (onum,ocode)
);

ALTER TABLE order_detail
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;

ALTER TABLE order_detail
    ADD FOREIGN KEY (ocode)
        REFERENCES  orderlist (ocode)
;
SELECT * FROM order_detail;
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (1,1,1,'L/BLUE',1,5000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (1,2,1,'S/GRAY',2,40000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (2,1,1,'삼선슬리퍼',2,10000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (2,2,2,'L/PINK',2,20000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (2,3,3,'L/BLUE',2,40000);


SELECT order_detail.*, orderlist.mcode, mem.mname, mem.mid FROM order_detail, orderlist,product,mem WHERE orderlist.ocode = order_detail.ocode AND product.pcode = order_detail.pcode and mem.mcode = orderlist.mcode and product.scode=1;
	
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

SELECT * FROM product_qna;
UPDATE product_qna SET state = '답변완료' WHERE QNACODE = 4;
UPDATE product_qna SET ANSWER = '안녕하세요 아디다스입니다 문의 답변드립니다 새탁시 물빠짐이 있을 수 있으니 미온수에 손빨래 부탁드립니다' WHERE QNACODE = 4;
INSERT INTO product_qna(qnacode,scode,mcode,pcode,question) VALUES (1,1,1,1,'제가 사이즈가 정확하지 않아서 문의드립니다 혹시 신발 정사이즈 인가요?');
INSERT INTO product_qna(qnacode,scode,mcode,pcode,question) VALUES (4,1,44,1,'제가 사이즈가 정확하지 않아서 문의드립니다 혹시 신발 정사이즈 인가요?');
INSERT INTO product_qna(qnacode,scode,mcode,pcode,question) VALUES (2,1,44,2,'안녕하세요 문의드립니다 세탁시 물빠짐이 있나요?');
INSERT INTO product_qna(qnacode,scode,mcode,pcode,question) VALUES (3,2,44,3,'배송문의 인데 저번주에 주문했는데 아직도 출고가 안됐네여 출고날짜가 언제인가요?');

ALTER TABLE product_qna
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;
ALTER TABLE product_qna
    ADD FOREIGN KEY (mcode)
        REFERENCES mem (mcode)
;
SELECT * FROM mem;
ALTER TABLE product_qna
    ADD FOREIGN KEY (scode)
        REFERENCES store_mem (scode)
;
SELECT order_detail.*, orderlist.mcode,mem.mname, mem.mid,product.pname FROM order_detail, orderlist,product,mem WHERE orderlist.ocode = order_detail.ocode AND product.pcode = order_detail.pcode and mem.mcode = orderlist.mcode and product.scode=1;
	
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

DROP TABLE review;
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (1,1,1,1,1,'발에 딱 맞아요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (2,2,1,1,2,'색이 너무 예뻐요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (3,2,1,2,3,'사이즈가 잘 맞아요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (4,2,2,3,4,'비침이 너무 심해요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (5,1,2,3,5,'하나 더사려구요');
SELECT * FROM REVIEW ;
/*주문번호 상품명 사이즈/컬러 내용 작성일자*/
SELECT r.RCODE ,sm.SNAME ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE
FROM ORDER_DETAIL o,PRODUCT p,REVIEW r,MEM m,STORE_MEM sm
WHERE m.MCODE = 44;

SELECT r.RCODE ,sm.SNAME ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE,m.MID
FROM ORDER_DETAIL o,PRODUCT p,REVIEW r,MEM m,STORE_MEM sm
WHERE
        p.PCODE = o.PCODE
  AND r.PCODE = p.PCODE
  AND r.SCODE = sm.SCODE
  AND r.OCODE = o.OCODE
  AND r.MCODE = m.MCODE
  AND p.PCODE = 1;

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
        REFERENCES store_mem (scode);
ALTER TABLE review
    ADD FOREIGN KEY (ocode)
        REFERENCES orderlist (ocode);



CREATE TABLE likeitem
(
    mcode number NOT NULL,
    pcode number NOT NULL,
    regdate DATE DEFAULT sysdate,
    updateupdate DATE DEFAULT sysdate,
    PRIMARY KEY (mcode, pcode)
);
INSERT INTO likeitem(mcode,pcode) VALUES (44,1);
INSERT INTO likeitem(mcode,pcode) VALUES (44,2);
INSERT INTO likeitem(mcode,pcode) VALUES (44,3);
INSERT INTO likeitem(mcode,pcode) VALUES (44,4);
SELECT * FROM LIKEITEM ;

SELECT sm.SNAME ,p.PNAME, p.PIMG, p.PPRICE
FROM LIKEITEM l,PRODUCT p,MEM m ,STORE_MEM sm
WHERE
        l.MCODE = m.MCODE
  AND l.PCODE = p.PCODE
  AND p.SCODE = sm.SCODE
  AND m.MCODE = 44;
 
SELECT * FROM product_detail WHERE pcode = 13;

ALTER TABLE likeitem
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;
ALTER TABLE likeitem
    ADD FOREIGN KEY (mcode)
        REFERENCES mem (mcode)
;
DROP TABLE p_basket;
CREATE TABLE p_basket
(
    mcode number NOT NULL,
    pcode number NOT NULL,
    bamount NUMBER NOT NULL,
    btotal NUMBER NOT NULL,
    bsize varchar2(20) NOT NULL,
    bcolor varchar2(20) NOT NULL,
    regdate DATE DEFAULT sysdate,
    updateupdate DATE DEFAULT sysdate,
    PRIMARY KEY (mcode, pcode)
);
INSERT INTO p_basket(mcode,pcode,bamount,bsize,bcolor) VALUES (44,1,2,'L','blue');
INSERT INTO p_basket(mcode,pcode,bamount,bsize,bcolor) VALUES (44,2,1,'S','black');
INSERT INTO p_basket(mcode,pcode,bamount,bsize,bcolor) VALUES (44,3,3,'M','red');
INSERT INTO p_basket(mcode,pcode,bamount,bsize,bcolor) VALUES (44,4,3,'225','gray');

SELECT * FROM p_basket;
SELECT amount FROM product_detail WHERE pcode = 1;

SELECT sm.SNAME ,p.PNAME ,b.bamount,b.bamount*p.PPRICE,b.bcolor,b.bsize
FROM STORE_MEM sm ,MEM m ,p_BASKET b,PRODUCT p
WHERE
        b.mcode = m.MCODE
  AND b.PCODE = p.PCODE
  AND p.SCODE = sm.SCODE
  AND m.MCODE = 44;

INSERT INTO
    P_BASKET(mcode,pcode,bamount,bsize,bcolor) VALUES(44,1,2,'red','')

ALTER TABLE p_basket
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;
ALTER TABLE p_basket
    ADD FOREIGN KEY (mcode)
        REFERENCES mem (mcode)
;



















CREATE TABLE orderlist
(
    ocode number NOT NULL,
    mcode number NOT NULL,
    totalprice number NOT NULL,
    state varchar2(20) DEFAULT '결제준비중',
    regdate DATE DEFAULT sysdate,
    updatedate DATE DEFAULT sysdate,
    PRIMARY KEY (ocode)
);

ALTER TABLE orderlist
    ADD FOREIGN KEY (mcode)
        REFERENCES mem (mcode);
      
/*주문상세*/
CREATE TABLE order_detail
(
    ocode number NOT NULL,
    onum number NOT NULL ,
    pcode number NOT NULL,
    amount number NOT NULL,
    p_detail varchar2(20) NOT NULL,
    state varchar2(20) DEFAULT '결제준비중',
    total NUMBER NOT NULL,
    regdate DATE DEFAULT sysdate,
    updatedate DATE DEFAULT sysdate,
    PRIMARY KEY (onum,ocode)
);

ALTER TABLE order_detail
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;

ALTER TABLE order_detail
    ADD FOREIGN KEY (ocode)
        REFERENCES  orderlist (ocode)
;

REATE TABLE product_qna
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


ALTER TABLE product_qna
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;
ALTER TABLE product_qna
    ADD FOREIGN KEY (mcode)
        REFERENCES mem (mcode)
;
SELECT * FROM mem;
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
        REFERENCES store_mem (scode);
ALTER TABLE review
    ADD FOREIGN KEY (ocode)
        REFERENCES orderlist (ocode);


CREATE TABLE likeitem
(
    mcode number NOT NULL,
    pcode number NOT NULL,
    regdate DATE DEFAULT sysdate,
    updateupdate DATE DEFAULT sysdate,
    PRIMARY KEY (mcode, pcode)
);

CREATE TABLE p_basket
(
    mcode number NOT NULL,
    pcode number NOT NULL,
    bamount NUMBER NOT NULL,
    btotal NUMBER NOT NULL,
    bsize varchar2(20) NOT NULL,
    bcolor varchar2(20) NOT NULL,
    regdate DATE DEFAULT sysdate,
    updateupdate DATE DEFAULT sysdate,
    PRIMARY KEY (mcode, pcode)
);


ALTER TABLE p_basket
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;
ALTER TABLE p_basket
    ADD FOREIGN KEY (mcode)
        REFERENCES mem (mcode)
;
