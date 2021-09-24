set sql_safe_updates = 0;
show databases;
create database referential_integrity_example;
use referential_integrity_example;

create table department (
	dept_code int primary key,
    dept_name varchar(20) not null
);

insert into department values(101, 'software');
insert into department values(102, 'electronics');
insert into department values(201, 'chemistry');
insert into department values(202, 'business admin');

create table student (
	stud_id int primary key,
    dept_code int,
    name varchar(8) not null,
    foreign key(dept_code) references department(dept_code) on update cascade on delete set null
);

insert into student values(20201234, 101, '홍길동');
insert into student values(20191211, 201, '김가천');
insert into student values(20184213, 102, '최지우');
insert into student values(20171235, 101, '배용준');
insert into student values(20209822, 202, '최민수');
insert into student values(20192385, 102, '이민호');
insert into student values(20195431, 101, '송민국');

show tables;
select * from department;
select * from student;

update department set dept_code = 501 where dept_name = 'software';
select * from department;
select * from student;

delete from department where dept_code = 201;
select * from department;
select * from student;
