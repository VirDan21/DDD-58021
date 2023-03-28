create database exercise_1;
create table exercise_1.emp_1 (
EMP_NUM CHAR (3), EMP_Lname VARCHAR(15), EMP_FNAME VARCHAR(15), EMP_INITIAL CHAR(1), EMP_HIREDATE DATE, JOB_CODE CHAR(3) );
insert into exercise_1.emp_1 (EMP_NUM, EMP_Lname, EMP_FNAME, EMP_INITIAL, EMP_HIREDATE, JOB_CODE)
VALUES ('333', 'Buan', 'Richard', 'N', '2003-12-21', 502);
insert into exercise_1.emp_1 (EMP_NUM, EMP_Lname, EMP_FNAME, EMP_INITIAL, EMP_HIREDATE, JOB_CODE)
VALUES ('323', 'Vilalon', 'Ryanne', 'M', '2003-10-21', 503);
select * from exercise_1.emp_1 where JOB_CODE = '502';