/* Drop Tables */

DROP TABLE order_detail CASCADE CONSTRAINTS;
DROP TABLE orderlist CASCADE CONSTRAINTS;
DROP TABLE product_qna CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE likeitem CASCADE CONSTRAINTS;
DROP TABLE mem CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE store_mem CASCADE CONSTRAINTS;
DROP TABLE p_basket CASCADE CONSTRAINTS;
DROP TABLE product_detail CASCADE CONSTRAINTS;
DROP TABLE product_img CASCADE CONSTRAINTS;
DROP TABLE category CASCADE CONSTRAINTS;


SELECT * FROM product;
SELECT * FROM product_detail;
SELECT * FROM product_img;
SELECT * FROM category;
SELECT * FROM store_mem;


CREATE SEQUENCE seq_mem NOCACHE; /*회원 번호 자동 업데이트*/
CREATE SEQUENCE seq_store_mem; /*스토어회원 번호 자동 업데이트 */
<<<<<<< HEAD
CREATE SEQUENCE seq_product NOCACHE; /*상품번호 자동 업데이트 */
CREATE SEQUENCE seq_orderlist NOCACHE; /*주문목록 번호 자동 업데이트*/
CREATE SEQUENCE seq_order_detail NOCACHE; /*주문목록 번호 자동 업데이트*/
CREATE SEQUENCE seq_productqna; /* 상품 Q&A 번호 자동 업데이트 */
CREATE SEQUENCE seq_review; /* 상품 리뷰 자동 번호 업데이트 */
CREATE SEQUENCE seq_onum; /*주문 일련 번호 자동 업데이트*/
CREATE SEQUENCE seq_p_basket; /*주문 일련 번호 자동 업데이트*/
=======
select * from USER_SEQUENCES;
CREATE SEQUENCE seq_product NOCACHE; /*상품번호 자동 업데이트 */
CREATE SEQUENCE seq_orderlist; /*주문목록 번호 자동 업데이트*/
>>>>>>> refs/heads/master

<<<<<<< HEAD

DROP SEQUENCE seq_mem; /*회원 번호 자동 업데이트*/
DROP SEQUENCE seq_store_mem; /*스토어회원 번호 자동 업데이트 */
DROP SEQUENCE seq_product; /*상품번호 자동 업데이트 */
DROP SEQUENCE seq_orderlist; /*주문목록 번호 자동 업데이트*/
DROP SEQUENCE seq_order_detail; /*주문목록 번호 자동 업데이트*/
DROP SEQUENCE seq_productqna; /* 상품 Q&A 번호 자동 업데이트 */
DROP SEQUENCE seq_review; /* 상품 리뷰 자동 번호 업데이트 */
DROP SEQUENCE seq_onum; /*주문 일련 번호 자동 업데이트*/
DROP SEQUENCE seq_p_basket; /*주문 일련 번호 자동 업데이트*/

SELECT seq_orderlist.currval FROM dual;
=======
CREATE SEQUENCE seq_order_detail; /*주문목록 번호 자동 업데이트*/
CREATE SEQUENCE seq_productqna; /* 상품 Q&A 번호 자동 업데이트 */
CREATE SEQUENCE seq_review NOCACHE; /* 상품 리뷰 자동 번호 업데이트 */
CREATE SEQUENCE seq_onum; /*주문 일련 번호 자동 업데이트*/
CREATE SEQUENCE seq_p_basket; /*주문 일련 번호 자동 업데이트*/


SELECT * FROM USER_SEQUENCES;


SELECT * FROM REVIEW;


DROP SEQUENCE seq_mem; /*회원 번호 자동 업데이트*/
DROP SEQUENCE seq_store_mem; /*스토어회원 번호 자동 업데이트 */
DROP SEQUENCE seq_product; /*상품번호 자동 업데이트 */
DROP SEQUENCE seq_orderlist; /*주문목록 번호 자동 업데이트*/
DROP SEQUENCE seq_order_detail; /*주문목록 번호 자동 업데이트*/
DROP SEQUENCE seq_productqna; /* 상품 Q&A 번호 자동 업데이트 */
DROP SEQUENCE seq_review; /* 상품 리뷰 자동 번호 업데이트 */
DROP SEQUENCE seq_onum; /*주문 일련 번호 자동 업데이트*/
DROP SEQUENCE seq_p_basket; /*주문 일련 번호 자동 업데이트*/

SELECT * FROM product where catecode= 101;
SELECT sm.SNAME ,p.PNAME, p.PPRICE,p.PCODE,p.scode 
		FROM PRODUCT p ,STORE_MEM sm
		WHERE 
		p.SCODE = sm.SCODE
		AND p.PCODE = 8;
>>>>>>> refs/heads/master
SELECT o.OCODE ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE
FROM ORDER_DETAIL o,PRODUCT p,REVIEW
    r,MEM m WHERE m.MCODE = 44;

/* Create Tables */
SELECT sm.SNAME ,p.PNAME, p.PPRICE
FROM PRODUCT p ,STORE_MEM sm
WHERE
        p.SCODE = sm.SCODE;
<<<<<<< HEAD
=======
       
       
       
       
       SELECT sm.SNAME ,p.PNAME, p.PPRICE, p.PCODE ,p.cateCode,c.CATECODEREF 
       FROM PRODUCT p ,STORE_MEM sm ,CATEGORY c 
       WHERE
       p.SCODE = sm.SCODE
       AND c.CATECODE = p.CATECODE 
     AND c.CATECODEREF = 100;
	
	SELECT sm.SNAME ,p.PNAME, p.PPRICE, p.PCODE ,c.cateCode,c.CATECODEREF ,p.BEST 
		FROM PRODUCT p ,STORE_MEM sm ,CATEGORY c 
		where
		p.SCODE = sm.SCODE
		AND p.CATECODE = c.CATECODE 
		AND c.CATECODEREF = 100;
>>>>>>> refs/heads/master
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
INSERT INTO mem(mcode,mname,mid,mpw,mphone,memail) VALUES (1,'노유림','yl','1111','01034502766','yyj2766@naver.com');
<<<<<<< HEAD
INSERT INTO mem(mcode,mname,mid,mpw,mphone,memail) VALUES (2,'최현주','yl','1111','01034502766','yyj2766@naver.com');

/*catagory test*/
CREATE TABLE category(
                         cateName varchar2(20) NOT NULL,
                         cateCode varchar2(30) NOT NULL,
                         cateCodeRef varchar2(30) NULL,
                         PRIMARY key(cateCode),
                         foreign key(cateCodeRef) REFERENCES category(cateCode)
);

SELECT * FROM product;

SELECT * FROM category WHERE catecode = '100';
=======
INSERT INTO mem(mcode,mname,mid,mpw,mphone,memail) VALUES (45,'최현주','juju','1111','01034502766','yyj2766@naver.com');

/*catagory test*/
CREATE TABLE category(
 cateName varchar2(20) NOT NULL,
 cateCode varchar2(30) NOT NULL,
 cateCodeRef varchar2(30) NULL,
 PRIMARY key(cateCode),
 foreign key(cateCodeRef) REFERENCES category(cateCode)
);
	SELECT sm.SNAME ,p.PNAME, p.TODAY ,p.PPRICE, p.PCODE ,c.cateCode,c.CATECODEREF ,p.BEST 
		FROM PRODUCT p ,STORE_MEM sm ,CATEGORY c 
		where
		p.SCODE = sm.SCODE
		AND p.CATECODE = c.CATECODE 
		AND c.CATECODEREF = 100
		AND p.TODAY = 1
		AND p.BEST = 1;
SELECT p.pcode, c.CATECODE , c.CATECODEREF 
FROM CATEGORY c, PRODUCT p 
WHERE c.CATECODE = p.CATECODE ;
>>>>>>> refs/heads/master
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

SELECT * FROM CATEGORY ;
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

	SELECT sm.SNAME ,p.PNAME, p.PPRICE, p.PCODE ,p.cateCode,p.TODAY 
		FROM PRODUCT p ,STORE_MEM sm 
		where
		p.SCODE = sm.SCODE
		AND p.TODAY = 1;

SELECT * FROM store_mem;
INSERT INTO store_mem(scode,sname,sid,spw,sphone,semail,sowner) VALUES (1,'아디다스','adidas','1111','01011111111','adidas@naver.com','아디다스');
INSERT INTO store_mem(scode,sname,sid,spw,sphone,semail,sowner) VALUES (2,'나이키','nike','2222','01022222222','nike@naver.com','나이키');
INSERT INTO store_mem(scode,sname,sid,spw,sphone,semail,sowner) VALUES (3,'쥬쥬쥬','juju','1111','01033333333','juju@naver.com','쥬쥬쥬');


SELECT * FROM product_detail;
CREATE TABLE product
(   pcode number NOT NULL,
    scode number NOT NULL,
    cateCode varchar2(30) NOT NULL,
    pname varchar2(100) NOT NULL,
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
SELECT * FROM product;

<<<<<<< HEAD
SELECT psize,num FROM product_detail WHERE pcode = 26 ORDER BY num desc ;

SELECT ROW_NUMBER() OVER()AS SEQ,A.* FROM COUNTRIES A;

CREATE TABLE product_detail
(
    pcode number NOT NULL,
    psize varchar2(10)  DEFAULT 'N',
    pcolor varchar2(50)  DEFAULT 'N',
    amount number default 0
);

SELECT ROWNum, psize FROM product_detail WHERE pcode= 24;


ALTER TABLE product_detail
    ADD FOREIGN KEY (pcode)
        REFERENCES  product (pcode)
;


SELECT sm.SNAME ,p.PNAME, p.PPRICE, p.PCODE ,p.cateCode
FROM PRODUCT p ,STORE_MEM sm
WHERE
        p.SCODE = sm.SCODE
ORDER BY p.PCODE DESC;

SELECT sm.SNAME ,p.PNAME, p.PPRICE, p.PCODE ,p.cateCode, c.cateCodeRef, c.cateName
FROM PRODUCT p ,STORE_MEM sm, CATEGORY c
WHERE
        p.SCODE = sm.SCODE
  AND p.cateCode = c.cateCode
  AND p.cateCode = 101
ORDER BY p.PCODE DESC;

SELECT sm.SNAME ,p.PNAME, p.PPRICE,p.CATE1 ,p.CATE2 ,p.CATE3
FROM PRODUCT p ,STORE_MEM sm
WHERE
        sm.SCODE = p.SCODE
  AND p.CATE1 = '쇼핑몰마켓'
  AND p.CATE2 = '신발'
  AND p.CATE3 = '샌들슬리퍼';


SELECT sm.SNAME ,p.PNAME, p.PPRICE ,pd.PCOLOR,pd.PSIZE
FROM PRODUCT p ,STORE_MEM sm ,PRODUCT_DETAIL pd
WHERE
        p.PCODE = pd.PCODE
  AND sm.SCODE = p.SCODE
  AND p.PCODE = 1;
--
-- SELECT REGION_ID,LISTAGG(COUNTRY_NAME,',') WITHIN GROUP(ORDER BY COUNTRY_NAME)
-- FROM COUNTRIES
-- GROUP BY REGION_ID
-- ORDER BY REGION_ID


SELECT DISTINCT pd.PCOLOR,p.PCODE
FROM PRODUCT p ,STORE_MEM sm ,PRODUCT_DETAIL pd
WHERE
        p.PCODE = pd.PCODE
  AND sm.SCODE = p.SCODE
  AND p.PCODE = 1;

SELECT DISTINCT pd.PSIZE,p.PCODE
FROM PRODUCT p ,STORE_MEM sm ,PRODUCT_DETAIL pd
WHERE
        p.PCODE = pd.PCODE
  AND sm.SCODE = p.SCODE
  AND p.PCODE = 1;


SELECT * FROM PRODUCT_detail;
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'101','삼선스레빠',5000,0,0);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'102','삼선 티셔츠',10000,1,0);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,2,'103','나이키 반바지',20000,1,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,2,'104','나이키 백팩',30000,0,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'201','나이키 반팔',40000,1,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'202','나이키 모자',50000,0,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,2,'203','나이키 샌들',60000,1,0);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,2,'204','나이키 스커트',70000,0,0);

INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'225','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'225','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'225','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'230','black');
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
SELECT * FROM product;

select * from product_img;
SELECT * FROM PRODUCT_DETAIL ;
create table product_img(
    uuid varchar2(100) not null,
    uploadPath varchar(200) not null,
    filename varchar2(100) not null,
=======

ALTER TABLE product_detail
    ADD FOREIGN KEY (pcode)
        REFERENCES  product (pcode)
;
SELECT * FROM PRODUCT_DETAIL pd ;
CREATE TABLE product_detail
(
    pcode number NOT NULL,
    psize varchar2(5) NOT NULL,
    pcolor varchar2(50) NOT NULL,
    amount number default 0
);
SELECT sm.SNAME ,p.PNAME, p.PPRICE, p.PCODE ,p.cateCode
FROM PRODUCT p ,STORE_MEM sm
WHERE
        p.SCODE = sm.SCODE
ORDER BY p.PCODE DESC;

SELECT sm.SNAME ,p.PNAME, p.PPRICE, p.PCODE ,p.cateCode, c.cateCodeRef, c.cateName
FROM PRODUCT p ,STORE_MEM sm, CATEGORY c
WHERE
        p.SCODE = sm.SCODE
  AND p.cateCode = c.cateCode
  AND p.cateCode = 101
ORDER BY p.PCODE DESC;

SELECT sm.SNAME ,p.PNAME, p.PPRICE,p.CATE1 ,p.CATE2 ,p.CATE3
FROM PRODUCT p ,STORE_MEM sm
WHERE
        sm.SCODE = p.SCODE
  AND p.CATE1 = '쇼핑몰마켓'
  AND p.CATE2 = '신발'
  AND p.CATE3 = '샌들슬리퍼';


SELECT sm.SNAME ,p.PNAME, p.PPRICE ,pd.PCOLOR,pd.PSIZE
FROM PRODUCT p ,STORE_MEM sm ,PRODUCT_DETAIL pd
WHERE
        p.PCODE = pd.PCODE
  AND sm.SCODE = p.SCODE
  AND p.PCODE = 1;
--
-- SELECT REGION_ID,LISTAGG(COUNTRY_NAME,',') WITHIN GROUP(ORDER BY COUNTRY_NAME)
-- FROM COUNTRIES
-- GROUP BY REGION_ID
-- ORDER BY REGION_ID


SELECT DISTINCT pd.PCOLOR,p.PCODE
FROM PRODUCT p ,STORE_MEM sm ,PRODUCT_DETAIL pd
WHERE
        p.PCODE = pd.PCODE
  AND sm.SCODE = p.SCODE
  AND p.PCODE = 1;

SELECT DISTINCT pd.PSIZE,p.PCODE
FROM PRODUCT p ,STORE_MEM sm ,PRODUCT_DETAIL pd
WHERE
        p.PCODE = pd.PCODE
  AND sm.SCODE = p.SCODE
  AND p.PCODE = 1;


SELECT * FROM PRODUCT; 
SELECT seq_product.nextval FROM dual;


SELECT * FROM USER_SEQUENCES ;
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'101','삼선스레빠',5000,0,0);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'102','삼선 티셔츠',10000,1,0);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,2,'103','나이키 반바지',20000,1,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,2,'104','나이키 백팩',30000,0,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'201','나이키 반팔',40000,1,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,1,'202','나이키 모자',50000,0,1);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,2,'203','나이키 샌들',60000,1,0);
INSERT INTO product(pcode,scode,cateCode,pname,pprice,today,best) VALUES (seq_product.nextval,2,'204','나이키 스커트',70000,0,0);

INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'225','black');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'225','blue');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'225','red');
INSERT INTO product_detail(pcode,psize,pcolor) VALUES (1,'230','black');
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
SELECT * FROM product;

select * from product_img;
SELECT * FROM PRODUCT_DETAIL ;
create table product_img(
    uuid varchar2(200) not null,
    uploadPath varchar(200) not null,
    filename varchar2(200) not null,
>>>>>>> refs/heads/master
    filetype varchar2(10) default 'I',
    pcode number not null,
    primary key (uuid)
);
ALTER TABLE product_img
    ADD FOREIGN KEY (pcode)
        REFERENCES  product (pcode);


CREATE TABLE orderlist
(
    ocode number NOT NULL,
    mcode number NOT NULL,
    totalprice number NOT NULL,
<<<<<<< HEAD
    state varchar2(20) DEFAULT '결제준비중',
=======
    state varchar2(20) DEFAULT '배송전',
>>>>>>> refs/heads/master
    regdate DATE DEFAULT sysdate,
    updatedate DATE DEFAULT sysdate,
    PRIMARY KEY (ocode)
);

<<<<<<< HEAD
INSERT INTO orderlist(ocode,mcode,totalprice,state) VALUES (seq_orderlist.nextval,1,45000,'상품준비중');
INSERT INTO orderlist(ocode,mcode,totalprice) VALUES (seq_orderlist.nextval,2,35000);
=======
SELECT SM .SCODE , od.OCODE ,p.PCODE ,m.MCODE 
FROM STORE_MEM sm ,PRODUCT p ,MEM m ,ORDER_DETAIL od 
WHERE
m.MCODE = 45
AND sm.SCODE = p.SCODE 
AND od.PCODE = p.PCODE 
AND od.OCODE =11;
	SELECT SM .SCODE , o.OCODE ,p.PCODE ,m.MCODE,sm.SNAME ,p.PNAME ,o.P_DETAIL ,o.AMOUNT ,o.TOTAL,o2.TOTALPRICE 
		FROM ORDER_DETAIL o,PRODUCT p,MEM m,STORE_MEM sm,ORDERLIST o2 
		WHERE 
		o.OCODE =o2.OCODE 
		AND m.MCODE = o2.MCODE 
		AND p.SCODE = sm.SCODE 
		AND o.PCODE = p.PCODE 
	AND o.OCODE = 9;
SELECT sm.SCODE ,o.OCODE ,p.PCODE ,m.MCODE 
FROM STORE_MEM sm ,ORDER_DETAIL o,PRODUCT p ,MEM m 
WHERE
p.SCODE = sm.SCODE 
AND o.PCODE = p.PCODE 
AND p.PCODE = 2
AND m.MCODE = 45
;
select * from orderlist;
select * from ORDER_DETAIL where OCODE = 9;
SELECT * FROM ORDERLIST;
INSERT INTO orderlist(ocode,mcode,totalprice,state) VALUES (seq_orderlist.nextval,45,5000,'완료');
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (1,seq_order_detail.nextval,1,'삼선슬리퍼',1,5000);
INSERT INTO orderlist(ocode,mcode,totalprice,state) VALUES (2,44,35000,'대기');
>>>>>>> refs/heads/master
SELECT * FROM orderlist;
	SELECT o.OCODE,sm.SNAME ,p.PNAME ,o.P_DETAIL ,o.AMOUNT ,o.TOTAL,o2.TOTALPRICE 
		FROM ORDER_DETAIL o,PRODUCT p,MEM m,STORE_MEM sm,ORDERLIST o2 
		WHERE 
		o.OCODE =o2.OCODE 
		AND m.MCODE = o2.MCODE 
		AND p.SCODE = sm.SCODE 
		AND o.PCODE = p.PCODE 
	AND o.OCODE = 9;
/*장바구니 insert*/
INSERT ALL
    INTO orderlist VALUES (3,44,5000,'완료',sysdate,sysdate)
INTO order_detail VALUES (3,4,1,'black','225',1,5000,sysdate,sysdate)
SELECT *
FROM dual;

<<<<<<< HEAD
/*장바구니 insert*/
INSERT ALL
    INTO orderlist VALUES (3,44,5000,'완료',sysdate,sysdate)
INTO order_detail VALUES (3,4,1,'black','225',1,5000,sysdate,sysdate)
SELECT *
FROM dual;
=======
ALTER TABLE order_detail
    ADD FOREIGN KEY (ocode)
        REFERENCES  orderlist (ocode)
;
>>>>>>> refs/heads/master

<<<<<<< HEAD
ALTER TABLE order_detail
    ADD FOREIGN KEY (ocode)
        REFERENCES  orderlist (ocode)
;

=======
>>>>>>> refs/heads/master
ALTER TABLE orderlist
    ADD FOREIGN KEY (mcode)
        REFERENCES mem (mcode);

SELECT o.OCODE ,o.ONUM ,p.PIMG ,sm.SNAME ,p.PNAME ,o.P_DETAIL ,o.AMOUNT ,o.TOTAL ,o.UPDATEDATE,o2.STATE
FROM ORDER_DETAIL o,PRODUCT p,MEM m,STORE_MEM sm,ORDERLIST o2
WHERE
        o.OCODE = o2.OCODE
  AND p.PCODE = o.PCODE
  AND p.SCODE = sm.SCODE
  AND m.MCODE = 44
ORDER BY o.OCODE, o.ONUM ASC;

SELECT last_number FROM USER_sequences WHERE SEQUENCE_NAME = UPPER('seq_orderlist');

select state, count(*) FROM order_detail,product WHERE order_detail.pcode = product.pcode AND product.scode = 1 GROUP BY state;
SELECT max(ocode) FROM orderlist;
CREATE TABLE order_detail
(
    ocode number NOT NULL,
    onum number NOT NULL ,
    pcode number NOT NULL,
    amount number NOT NULL,
    p_detail varchar2(20) NOT NULL,
<<<<<<< HEAD
    state varchar2(20) DEFAULT '결제준비중',
=======
>>>>>>> refs/heads/master
    total NUMBER NOT NULL,
    regdate DATE DEFAULT sysdate,
    updatedate DATE DEFAULT sysdate,
    PRIMARY KEY (onum,ocode)
);
<<<<<<< HEAD

ALTER TABLE order_detail
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;
SELECT * FROM product;
SELECT * FROM order_detail;
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (1,1,1,'L/BLUE',1,5000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total,state) VALUES (1,3,1,'L/gray',1,5000,'배송준비중');
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total,state) VALUES (1,4,1,'L/gray',1,5000,'상품준비중');
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total,state) VALUES (1,5,1,'L/gray',1,5000,'배송중');
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total,state) VALUES (1,6,1,'L/gray',1,5000,'배송준비중');
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (1,2,3,'L/BLUE',2,40000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (2,1,1,'삼선슬리퍼',2,10000);
=======
SELECT * FROM ORDER_DETAIL od ;
/*orderlist 의 마지막 seq 가져와서 select*/
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES ((SELECT MAX(ocode) FROM ORDERLIST),seq_order_detail.nextval,2,'S/BLUE',1,5000);


INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (9,seq_order_detail.nextval,2,'S/BLUE',1,5000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (9,seq_order_detail.nextval,3,'M/BLUE',1,5000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (9,seq_order_detail.nextval,4,'L/BLUE',1,5000);

INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (10,seq_order_detail.nextval,3,'L/BLUE',2,40000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (11,seq_order_detail.nextval,3,'M/BLUE',2,10000);

>>>>>>> refs/heads/master
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (2,2,2,'L/PINK',2,20000);
INSERT INTO order_detail(ocode,onum,pcode,p_detail,amount,total) VALUES (2,3,3,'L/BLUE',2,40000);

<<<<<<< HEAD

SELECT order_detail.*, orderlist.mcode, mem.mname, mem.mid FROM order_detail, orderlist,product,mem WHERE orderlist.ocode = order_detail.ocode AND product.pcode = order_detail.pcode and mem.mcode = orderlist.mcode and product.scode=1;
	
=======
SELECT * FROM order_detail w;

ALTER TABLE order_detail
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;

>>>>>>> refs/heads/master
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
<<<<<<< HEAD
=======
DELETE FROM PRODUCT_QNA pq WHERE MCODE = 45;
>>>>>>> refs/heads/master
UPDATE product_qna SET state = '답변완료' WHERE QNACODE = 4;
UPDATE product_qna SET ANSWER = '안녕하세요 아디다스입니다 문의 답변드립니다 새탁시 물빠짐이 있을 수 있으니 미온수에 손빨래 부탁드립니다' WHERE QNACODE = 4;
INSERT INTO product_qna(qnacode,scode,mcode,pcode,question) VALUES (1,1,44,1,'제가 사이즈가 정확하지 않아서 문의드립니다 혹시 신발 정사이즈 인가요?');
INSERT INTO product_qna(qnacode,scode,mcode,pcode,question) VALUES (4,1,44,1,'제가 사이즈가 정확하지 않아서 문의드립니다 혹시 신발 정사이즈 인가요?');
INSERT INTO product_qna(qnacode,scode,mcode,pcode,question) VALUES (2,1,44,2,'안녕하세요 문의드립니다 세탁시 물빠짐이 있나요?');
INSERT INTO product_qna(qnacode,scode,mcode,pcode,question) VALUES (3,2,44,3,'배송문의 인데 저번주에 주문했는데 아직도 출고가 안됐네여 출고날짜가 언제인가요?');
SELECT * FROM MEM WHERE MCODE = 44;

SELECT sm.SNAME ,p.PNAME ,pq.STATE ,pq.QUESTION ,pq.UPDATEDATE ,pq.ANSWER
FROM PRODUCT p ,PRODUCT_QNA pq ,STORE_MEM sm,MEM m
WHERE
        sm.SCODE = pq.SCODE
  AND p.PCODE = pq.PCODE
  AND m.MCODE = pq.MCODE
<<<<<<< HEAD
  AND m.MCODE = 44;
=======
  AND m.MCODE = 45;
>>>>>>> refs/heads/master

SELECT sm.SNAME ,p.PNAME ,pq.STATE ,pq.QUESTION ,pq.UPDATEDATE ,pq.ANSWER,m.MID
FROM PRODUCT p ,PRODUCT_QNA pq ,STORE_MEM sm,MEM m
WHERE
        sm.SCODE = pq.SCODE
  AND p.PCODE = pq.PCODE
  AND m.MCODE = pq.MCODE
  AND p.pCODE = 1;
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

SELECT sm.SCODE ,o.OCODE ,p.PCODE ,m.MCODE ,sm.SNAME ,p.PNAME ,o.P_DETAIL 
		FROM STORE_MEM sm ,ORDER_DETAIL o,PRODUCT p ,MEM m 
		WHERE
		p.SCODE = sm.SCODE 
		AND o.PCODE = p.PCODE 
		AND o.OCODE =10
		AND p.PCODE = 3
		AND m.MCODE = 45;	
	
SELECT m.MCODE,r.RCODE,o2.OCODE ,sm.SNAME ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE
		FROM ORDER_DETAIL o,PRODUCT p,REVIEW r,MEM m,STORE_MEM sm,ORDERLIST o2
		WHERE
  			m.MCODE = 45
		;
	DELETE FROM REVIEW r2 ;
SELECT * FROM REVIEW r2 ORDER BY RCODE ASC ;
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (seq_review.nextval,9,1,2,45,'발에 딱 맞아요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (seq_review.nextval,10,1,3,45,'색이 너무 예뻐요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (seq_review.nextval,11,1,3,45,'사이즈가 잘 맞아요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (seq_review.nextval,2,2,3,44,'비침이 너무 심해요');
INSERT INTO review(rcode,ocode,scode,pcode,mcode,review) VALUES (seq_review.nextval,1,2,3,44,'하나 더사려구요');
SELECT * FROM REVIEW WHERE MCODE = 45;
/*주문번호 상품명 사이즈/컬러 내용 작성일자*/
<<<<<<< HEAD
SELECT r.RCODE ,sm.SNAME ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE
FROM ORDER_DETAIL o,PRODUCT p,REVIEW r,MEM m,STORE_MEM sm
WHERE m.MCODE = 44;
=======
SELECT r.MCODE ,r.RCODE, r.OCODE,sm.SNAME ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE
FROM ORDER_DETAIL o,PRODUCT p,REVIEW r,MEM m,STORE_MEM sm
WHERE 
r.SCODE = p.SCODE 
AND sm.SCODE = p.SCODE 
AND r.OCODE = o.OCODE 

AND r.MCODE = 45;

SELECT o.OCODE,r.UPDATEDATE ,sm.SNAME ,p.PNAME,od.P_DETAIL ,r.REVIEW 
FROM ORDERLIST o ,ORDER_DETAIL od ,STORE_MEM sm, PRODUCT p,REVIEW r
WHERE r.MCODE = 45;

SELECT r.RCODE ,sm.SNAME ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE,m.MID
FROM ORDER_DETAIL o,PRODUCT p,REVIEW r,MEM m,STORE_MEM sm
WHERE
        p.PCODE = o.PCODE
  AND r.PCODE = p.PCODE
  AND r.SCODE = sm.SCODE
  AND r.OCODE = o.OCODE
  AND r.MCODE = m.MCODE
  AND p.PCODE = 1;
>>>>>>> refs/heads/master

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
<<<<<<< HEAD
SELECT r.RCODE,o2.OCODE ,sm.SNAME ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE
=======
SELECT m.MCODE,r.RCODE,r.OCODE ,sm.SNAME ,p.PNAME ,o.P_DETAIL ,r.REVIEW ,r.UPDATEDATE
>>>>>>> refs/heads/master
FROM ORDER_DETAIL o,PRODUCT p,REVIEW r,MEM m,STORE_MEM sm,ORDERLIST o2
WHERE o.OCODE = r.ocode
  AND o.OCODE =o2.OCODE
  AND p.PCODE = r.PCODE
  AND SM .scode = r.SCODE
  AND p.PCODE = o.PCODE
<<<<<<< HEAD
  AND m.MCODE = 44
=======
  AND r.MCODE = m.MCODE 
  AND r.MCODE = 45
>>>>>>> refs/heads/master
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
<<<<<<< HEAD
=======
DELETE FROM LIKEITEM WHERE MCODE = 45;
>>>>>>> refs/heads/master

SELECT sm.SNAME ,p.PNAME, p.PIMG, p.PPRICE
FROM LIKEITEM l,PRODUCT p,MEM m ,STORE_MEM sm
WHERE
        l.MCODE = m.MCODE
  AND l.PCODE = p.PCODE
  AND p.SCODE = sm.SCODE
  AND m.MCODE = 44;

ALTER TABLE likeitem
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;
ALTER TABLE likeitem
    ADD FOREIGN KEY (mcode)
        REFERENCES mem (mcode)
;

CREATE TABLE p_basket
(
    mcode number NOT NULL,
    pcode number NOT NULL,
    bamount NUMBER NOT NULL,
    bsize varchar2(20) NOT NULL,
    bcolor varchar2(20) NOT NULL,
<<<<<<< HEAD
    regdate DATE DEFAULT sysdate,
    updateupdate DATE DEFAULT sysdate,
    PRIMARY KEY (mcode, pcode)
);
=======
    btotal NUMBER NOT NULL,
    regdate DATE DEFAULT sysdate,
    updateupdate DATE DEFAULT sysdate,
    PRIMARY KEY (mcode, pcode)
);
 update p_basket set BAMOUNT =7 ,updateupdate = sysdate where mcode=45;
>>>>>>> refs/heads/master
INSERT INTO p_basket(mcode,pcode,bamount,bsize,bcolor) VALUES (44,1,2,'L','blue');
INSERT INTO p_basket(mcode,pcode,bamount,bsize,bcolor) VALUES (44,2,1,'S','black');
INSERT INTO p_basket(mcode,pcode,bamount,bsize,bcolor) VALUES (44,3,3,'M','red');
INSERT INTO p_basket(mcode,pcode,bamount,bsize,bcolor) VALUES (44,4,3,'225','gray');

SELECT * FROM p_basket;
<<<<<<< HEAD
=======
DELETE FROM P_BASKET pb WHERE MCODE = 45;
>>>>>>> refs/heads/master

SELECT sm.SNAME ,p.PNAME ,b.bamount,b.bamount*p.PPRICE,b.bcolor,b.bsize
FROM STORE_MEM sm ,MEM m ,p_BASKET b,PRODUCT p
WHERE
        b.mcode = m.MCODE
  AND b.PCODE = p.PCODE
  AND p.SCODE = sm.SCODE
  AND m.MCODE = 44;

INSERT INTO
    P_BASKET(mcode,pcode,bamount,bsize,bcolor) VALUES(44,1,2,'red','')

<<<<<<< HEAD
ALTER TABLE basket
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;
ALTER TABLE basket
=======
ALTER TABLE p_basket
    ADD FOREIGN KEY (pcode)
        REFERENCES product (pcode)
;
ALTER TABLE p_basket
>>>>>>> refs/heads/master
    ADD FOREIGN KEY (mcode)
        REFERENCES mem (mcode)
;