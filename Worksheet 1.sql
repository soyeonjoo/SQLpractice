select * from employees;

select first_name from employees;

--as없이 "이름 " 이름 으로 써도됨 
 select first_name as "이름" from employees;  

--합칠떄 사용하는 연산자? ||
select (first_name || ' '|| last_name) as "이름" from Employees;

