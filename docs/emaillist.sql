-- emaillist sql
desc emaillist;

-- insert
insert
  into emaillist
values (null, '둘', '리', 'dooly@gmail.com');

-- select
  select no, first_name, last_name, email
    from emaillist
order by no desc;

select * from guestbook;

alter table user add column role enum('USER', 'ADMIN') not null default 'USER';

insert into user values(null, '관리자', 'admin@mysite.com', '1234', 'male', now(), 'ADMIN');
select * from user;


 select no, name, date_format(reg_date, '%Y/%m/%d %H:%i:%s') as regDate, message
		    from guestbook
		order by reg_date desc;

desc site;

select * from site;


insert into site values(null, 'MySite', '안녕하세요. 안대혁의 mysite에 오신 것을 환영합니다.', '/gallery/images/luffy.png', '이 사이트는 웹 프로그램밍 실습과제 예제 사이트입니다.\n메뉴는 사이트 소개, 방명록, 게시판이 있구요.\nJava수업 + 데이터베이스 수업 + 웹프로그래밍 수업 배운 거 있는거 없는 거 다 합쳐서 만들어 놓은 사이트 입니다.');