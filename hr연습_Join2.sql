select first_name, department_id
from EMPLOYEES;


--Inner-join   kimber빠짐 부서가 null이기때문에 
select a.first_name, d.DEPARTMENT_NAME
from EMPLOYEES a, DEPARTMENTS d 
where a.department_id = d.DEPARTMENT_ID;

--equi-join
select * from jons;

--theta join
select * from employees a, jobs b
where a.salary between b.MIN_SALARY and b.MAX_SALARY;

--self join 
select a.first_name, b.first_name
from EMPLOYEES a, employees b
where a.MANAGER_ID = b.EMPLOYEE_ID;

--outer-join 
select a.first_name, b.first_name
from EMPLOYEES a, employees b
where b.EMPLOYEE_ID(+) = a.MANAGER_ID ;

--outer-join 
select a.first_name as"사원" , NVL( b.first_name, '없음') as "매니저이름"
from EMPLOYEES a, employees b
where b.EMPLOYEE_ID (+) = a.MANAGER_ID ;




select a.FIRST_NAME, b.DEPARTMENT_NAME
from EMPLOYEES a, DEPARTMENTS b
where  b.DEPARTMENT_ID(+) =a.DEPARTMENT_ID ;

