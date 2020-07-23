/* Drop Tables */

DROP TABLE porder CASCADE CONSTRAINTS;
DROP TABLE orderlist CASCADE CONSTRAINTS;
DROP TABLE pqa CASCADE CONSTRAINTS;
DROP TABLE preview CASCADE CONSTRAINTS;
DROP TABLE ulike CASCADE CONSTRAINTS;
DROP TABLE mem CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE store_mem CASCADE CONSTRAINTS;

<<<<<<< HEAD
=======
CREATE SEQUENCE seq_mem;
CREATE SEQUENCE seq_store_mem;
CREATE SEQUENCE seq_product;
DROP SEQUENCE seq_mem;
DROP SEQUENCE seq_store_mem;
DROP SEQUENCE seq_product;


>>>>>>> branch 'master' of https://github.com/108231ju/Youju_Project.git


select * from mem 
		where mid = 'juju' and mpw = '1111';
/* Create Tables */
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> refs/heads/master
SELECT * FROM mem;


>>>>>>> branch 'master' of https://github.com/108231ju/Youju_Project.git

CREATE TABLE mem
(
	mcode number NOT NULL,
	mname varchar2(10) NOT NULL,
	mid varchar2(20) NOT NULL,
	mpw varchar2(20) NOT NULL,
	maddress varchar2(100) DEFAULT 'N',
	mphone varchar2(20) NOT NULL,
	memail varchar2(30) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (mcode)
);
SELECT * FROM MEM;
INSERT INTO mem(mcode,mname,mid,mpw,mphone,memail) VALUES (1,'노유림','yl','1111','01034502766','yyj2766@naver.com');




CREATE TABLE orderlist
(
	ocode number NOT NULL,
	mcode number NOT NULL,
	ototal number NOT NULL,
	ostate varchar2(10) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (ocode)
);


CREATE TABLE porder
(
	ocode number NOT NULL,
	pcode number NOT NULL,
	amount number NOT NULL,
	PRIMARY KEY (ocode, pcode)
);


CREATE TABLE pqa
(
	pqcode number NOT NULL,
	mcode number NOT NULL,
	pcode number NOT NULL,
	answer varchar2(300) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (pqcode)
);


CREATE TABLE preview
(
	prcode number NOT NULL,
	pcode number NOT NULL,
	mcode number NOT NULL,
	review varchar2(300) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (prcode)
);


CREATE TABLE product
(
	pcode number NOT NULL,
	scode number NOT NULL,
	pname varchar2(20) NOT NULL,
	psize varchar2(5) NOT NULL,
	pcolor varchar2(20) NOT NULL,
	pprice number NOT NULL,
	pimg varchar2(200) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (pcode)
);


CREATE TABLE store_mem
(
	scode number NOT NULL,
	sname varchar2(100) NOT NULL,
	sid varchar2(20) NOT NULL,
	spw varchar2(20) NOT NULL,
	stel number NOT NULL,
	semail varchar2(40) NOT NULL,
	sowner varchar2(10) NOT NULL,
	regdate DATE DEFAULT sysdate,
	updatedate DATE DEFAULT sysdate,
	PRIMARY KEY (scode)
);
<<<<<<< HEAD

=======
SELECT * FROM store_mem;
INSERT INTO store_mem(scode,sname,sid,spw,sphone,semail,sowner) VALUES (1,'아디다스','adidas','1111','01011111111','adidas@naver.com','아디다스만든사람');
DELETE FROM store_mem WHERE scode =2;
>>>>>>> branch 'master' of https://github.com/108231ju/Youju_Project.git

CREATE TABLE ulike
(
	mcode number NOT NULL,
	pcode number NOT NULL,
	regdate DATE DEFAULT sysdate,
	PRIMARY KEY (mcode, pcode)
);



/* Create Foreign Keys */

ALTER TABLE orderlist
	ADD FOREIGN KEY (mcode)
	REFERENCES mem (mcode)
;


ALTER TABLE pqa
	ADD FOREIGN KEY (mcode)
	REFERENCES mem (mcode)
;


ALTER TABLE preview
	ADD FOREIGN KEY (mcode)
	REFERENCES mem (mcode)
;


ALTER TABLE ulike
	ADD FOREIGN KEY (mcode)
	REFERENCES mem (mcode)
;


ALTER TABLE porder
	ADD FOREIGN KEY (ocode)
	REFERENCES orderlist (ocode)
;


ALTER TABLE porder
	ADD FOREIGN KEY (pcode)
	REFERENCES product (pcode)
;


ALTER TABLE pqa
	ADD FOREIGN KEY (pcode)
	REFERENCES product (pcode)
;


ALTER TABLE preview
	ADD FOREIGN KEY (pcode)
	REFERENCES product (pcode)
;


ALTER TABLE ulike
	ADD FOREIGN KEY (pcode)
	REFERENCES product (pcode)
;


ALTER TABLE product
	ADD FOREIGN KEY (scode)
	REFERENCES store_mem (scode)
;

SELECT * FROM MEM;