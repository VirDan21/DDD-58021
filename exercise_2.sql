-- exercise 1

create database exercise_1;
create table exercise_1.emp_1 (
EMP_NUM CHAR (3), EMP_Lname VARCHAR(15), EMP_FNAME VARCHAR(15), EMP_INITIAL CHAR(1), EMP_HIREDATE DATE, JOB_CODE CHAR(3) );
insert into exercise_1.emp_1 (EMP_NUM, EMP_Lname, EMP_FNAME, EMP_INITIAL, EMP_HIREDATE, JOB_CODE)
VALUES ('333', 'Buan', 'Richard', 'N', '2003-12-21', 502),
('323', 'Vilalon', 'Ryanne', 'M', '2003-10-21', 503);
select * from exercise_1.emp_1 where JOB_CODE = '502';

-- exercise 2

insert into exercise_1.emp_1 (EMP_NUM, EMP_Lname, EMP_FNAME, EMP_INITIAL, EMP_HIREDATE, JOB_CODE)
VALUES ('101', 'Nevas', 'John', 'G', '1994-11-08', 502),
('102', 'Senior', 'David', 'H', '1987-07-12', 501),
('103', 'Arbos', 'June', 'E', '1996-12-01', 500),
('104', 'Ramoras', 'Anne', 'K', '1998-11-15', 501),
('105', 'Joson', 'Alice', 'P', '1993-02-01', 502),
('106', 'Smith', 'William', 'D', '1990-06-23', 500),
('107', 'Alonso', 'Mara', 'F', '1991-10-10', 500),
('108', 'Washington', 'Raf', 'S', '1989-08-22', 501),
('109', 'Field', 'Larry', 'W', '1999-07-18', 501);

delete from exercise_1.emp_1 where EMP_Lname = 'Smith';

update exercise_1.emp_1
set JOB_CODE = 501
where EMP_NUM = 106;