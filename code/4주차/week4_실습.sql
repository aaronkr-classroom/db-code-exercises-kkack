create database ut;

create table animals(
	id bigserial, 
	name varchar(20),
	age integer,
	kind varchar(20),
	dob date, 
	location varchar(50)
);


table animals;  -- sle


/*
Professor table 작성 (개체)
[Entities / 개체]
- Professor

[Properties / 속성]
- id			(BIGSERIAL)  -- 숫자 자동 증가
- name 			(VARCHAR(30))
- dept 			(VARCHAR(50))
- salary 		(NUMERIC)
- salary_level 	(NUMERIC)
- hire_date 	(DATE)   'YYYY-MM-DD'
*/

CREATE TABLE prof (
	id bigserial,
	name varchar(30),
	dept varchar(50),
	salary numeric,
	salary_level numeric,
	hire_date date
);

drop table prof;



-- 데이터 삽입
insert into prof(name, dept, salary, salary_level, hire_date)
values
	('김정운', '컴퓨터공학', 100000, 2, '1998-12-31'),
	('박지선', 'AI공학', 70000, 1, '2001-3-1'),
	('이재삭', '정보통신공학', 80000, 1, '2003-4-1'),
	('류현지', '간호학', 90000, 1, '2004-4-14'),
	('양정호', '소프트웨어학', 1000000, 9, '1998-12-31');

-- 데이터 검색
select * from prof;

select name, salary from prof order by salary desc;
select name, salary from prof where salary > 90000 order by salary desc;
select name, salary from prof where name like '김%';  -- ilike 는 대/소문자 구별안함
select name, dept from prof where dept like '%공%' order by dept asc;

select name, salary from prof where salary between 70001 and 89999;


create table students(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	email VARCHAR(50)
);

CREATE TABLE clubs (
    club_id SERIAL PRIMARY KEY,
    club_name VARCHAR(50),
    created_at DATE
);

CREATE TABLE memberships (
    student_id INT,
    club_id INT,
    join_date DATE,
    PRIMARY KEY (student_id, club_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (club_id) REFERENCES clubs(club_id)
);

INSERT INTO students (name, email) VALUES
('김철수', 'chulsoo@test.com'),
('이영희', 'younghee@test.com');

INSERT INTO clubs (club_name, created_at) VALUES
('축구 동아리', '2024-03-01'),
('독서 동아리', '2024-03-05');

INSERT INTO memberships (student_id, club_id, join_date) VALUES
(1, 1, '2024-03-10'),
(1, 2, '2024-03-11'),
(2, 2, '2024-03-12');

select * from memberships;