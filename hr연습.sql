select department_name from departments;

select * from employees;

select first_name from employees;

--as없이 "이름 " 이름 으로 써도됨 
 select first_name as "이름" from employees;  

--합칠떄 사용하는 연산자? ||
select (first_name || ' '|| last_name) as "이름" from Employees;
--select employee_id, commsion pct Salary nvl(salary + ssalaty frorm employye




-- dual 가상테이블
select 2 + 3 from dual; 

select (salary+ salary*0.5) as"Salary" from employees;

select employee_id, salary + Scalary*commission ib from employees;


select employees_ID, 1000, sysdatae from employees;

select '성은' || last_name || '이요, 이름은' || first_name from employees;


select first_name, salary from employees where employee_id =200;
