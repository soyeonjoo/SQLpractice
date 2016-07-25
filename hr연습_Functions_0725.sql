desc employees;

select LOWER('Database System' ) From dual;

select UPPER('Database System' ) From dual;


select INITCAP('database system' ) From dual;

select CONCAT('Data ', 'base' ) From dual;

select substr('database', 2,5 ) From dual;

select length('database') From dual;

select instr('database', 'ba') From dual;

select  first_name, rpad(salary, 10, ' ') from EMPLOYEES;

select abs(-20000) from dual;

select floor (2.65) from dual;
select ceil (2.65) from dual;


select trunc (3.1415677,2) from dual;


select first_name, to_char(hire_date, 'yyyy-mm-dd hh24:mi:ss') from EMPLOYEES;


desc employees;

select SYSDATE from dual;
select to_char( SYSDATE,  'yyyy-mm-dd hh24:mi:ss') from dual;


select to_date('2007-12-10', 'yyyy-mm-dd') from dual;


select first_name, to_char(salary,'99999') from employees;
select first_name, to_char(salary,'99,999') from employees;
select first_name, to_char(salary,'0,99,999') from employees;
select first_name, to_char(salary,'$99,999') from employees;
select first_name, to_char(salary,'0,99,999') from employees;
select first_name, to_char(salary,'L99,999') from employees;
select to_char('-20000','99,999mi') from dual;
select to_char('-20000','99,999pr') from dual;
select to_char('123','RN') from dual;
select to_char('123','rn') from dual;
select to_char('100000','s99,9999') from dual;
select to_char('1024','xxxx') from dual;

select first_name, salary + salary*NVL(commission_pct, 0) from EMPLOYEES;
select first_name, salary + salary*NVL2(commission_pct, 0) from EMPLOYEES;


--if
select first_name, job_id, salary,
case job_id
when 'AD_VP' THEN salary*1.1
when 'FI_MGR' THEN salary*1.5
else salary
end as "이번달 월급"
from employees;

select first_name, job_id, salary,
case job_id
when 'AD_VP' THEN salary*1.1
when 'FI_MGR' THEN salary*1.5
else salary
end as "이번달 월급",
decode(job_id, 'AD_VP', salary*1.1,
               'FI_MGR', salary*1.5,
                        salary)
                        as "월급" 
from employees;


select 

