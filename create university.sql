show databases;
use university;

create table instructor (
	ID int primary key,
    name varchar(20) not null,
    dept_name varchar(20) not null,
    salary int not null
);

insert into instructor values (10101, 'Srinivasan', 'Comp. Sci.', 65000);
insert into instructor values (12121, 'Wu', 'Finance', 90000);
insert into instructor values (15151, 'Mozart', 'Music', 40000);
insert into instructor values (22222, 'Einstein', 'Physics', 95000);
insert into instructor values (32343, 'El said', 'History', 60000);
insert into instructor values (33456, 'Gold', 'Physics', 87000);
insert into instructor values (45565, 'Katz', 'Comp. Sci.', 75000);
insert into instructor values (58583, 'Califieri', 'History', 62000);
insert into instructor values (76543, 'Singh', 'Finance', 80000);
insert into instructor values (76766, 'Crick', 'Biology', 72000);
insert into instructor values (83821, 'Brandt', 'Comp. Sci.', 92000);
insert into instructor values (98345, 'Kim', 'Elc.Eng', 80000);

create table course (
	couse_id varchar(8) primary key,
    title varchar(50) not null,
    dept_name varchar(20) not null,
    credits int not null
);

show tables;
desc course;
select * from course;

insert into course values ('BIO-101', 'Intro. to Biology', 'Biology', 4);
insert into course values ('BIO-301', 'Genetics', 'Biology', 4);
insert into course values ('BIO-399', 'Computational Biology', 'Biology', 3);
insert into course values ('CS-101', 'Intro. to Computer Science', 'Comp. Sci', 4);
insert into course values ('CS-190', 'Game Design', 'Comp. Sci', 4);
insert into course values ('CS-315', 'Robotics', 'Comp. Sci', 3);
insert into course values ('CS-319', 'Image Processing', 'Comp. Sci', 3);
insert into course values ('CS-347', 'Database System Concepts', 'Comp. Sci', 3);
insert into course values ('EE-181', 'Intro. to Digital Systems', 'Elec. Eng', 3);
insert into course values ('FIN-201', 'Investment Banking', 'Finance', 3);
insert into course values ('HIS-351', 'World History', 'History', 3);
insert into course values ('MU-199', 'Music Video Procduction', 'Music', 3);
insert into course values ('PHY-101', 'Physical Principles', 'Physics', 4);

select * from course;

create table department (
	dept_name varchar(20) primary key,
    building varchar(20) not null,
    budget int not null
);

insert into department values ('Biology', 'Watson', 90000);
insert into department values ('Comp. Sci', 'Taylor', 100000);
insert into department values ('Elec. Eng', 'Taylor', 85000);
insert into department values ('Finance', 'Painter', 120000);
insert into department values ('History', 'Painter', 50000);
insert into department values ('Music', 'Packard', 80000);
insert into department values ('Physical', 'Watson', 70000);

select * from department;




