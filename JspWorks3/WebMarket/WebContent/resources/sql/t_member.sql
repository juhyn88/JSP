-- t_member 테이블 생성 --
CREATE table t_member (
	id 				varchar(10) not null,
	password 	varchar(10) not null,
	name			varchar(10) not null,
	gender			varchar(4),
	birth			varchar(10),
	mail				varchar(30),
	phone			varchar(20),
	address		varchar(90),
	regist_day	varchar(50),
	primary key(id)
) default CHARSET=utf8;