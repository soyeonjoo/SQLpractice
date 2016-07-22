-- where 연습

select * from jobs;

select * from departments;

select * from locations;

select * from job_history;

select first_name, last_name from employees where employee_id = 101;

select * from JOB_HISTORY where employee_id =101;

select (first_name||''||last_name) as "full name", salary from EMPLOYEES where salary >20000;

select first_name, job_id from EMPLOYEES where job_id <> 'AD pres';

select * from LOCATIONS where city = 'Roma';

select * from DEPARTMENTS where location_id =1000;

select * from departments where location_id  in(1700, 1800);
--위와 같은코드
select * from departments where location_id=1700 or LOCATION_ID = 1800;

select * from DEPARTMENTS where LOCATION_ID not in (1700, 1800);
--위와 같은코드
select * from departments where location_id<>1700 and LOCATION_ID <> 1800;

select * from EMPLOYEES where salary between 1000 and 10000;
--위와 같은코드
select * from EMPLOYEES where 1000<= salary and SALARY<=10000;



--like 검색~~~~~~
select FIRST_NAME from EMPLOYEES where first_name like 'Ja';

--와일드카드
select FIRST_NAME from EMPLOYEES where first_name like '%ll%';
select FIRST_NAME from EMPLOYEES where first_name like 'A____';

-- is null , is not null
select employee_id, commission_pct from EMPLOYEES where commission_pct is null;

select first_name, last_name from EMPLOYEES order by salary desc, first_name  asc ;