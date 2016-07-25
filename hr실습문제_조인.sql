--join 연습문제 

--문제 1. 
--각 사원(employee)에 대해서 사번(employee_id), 이름(first_name), 부서명(department_name), 매니저(manager)의 이름(first_name)을 조회하세요.
select a.employee_id, a.first_name, b.department_name, b.manager_id
from EMPLOYEES a, DEPARTMENTS b
where a.DEPARTMENT_ID = b.DEPARTMENT_ID;

--문제2.
--지역(regions)에 속한 나라들을 지역이름(region_name), 나라이름(country_name)으로 출력하되 지역이름, 나라이름 순서대로 내림차순으로 정렬하세요.
select a.region_name, b.country_name 
from REGIONS a, COUNTRIES b
where a.region_id = b.REGION_ID
order by a.REGION_NAME desc, b.COUNTRY_NAME desc;


--문제3.
--각 부서(department)에 대해서 부서번호(department_id), 이름(department_name), 매니저(manager)의 이름(first_name), 위치(locations)한 도시(city),
--나라(countries)의 이름(countries_name) 그리고 지역구분(regions)의 이름(resion_name)까지 전부 출력해 보세요.
select  a.DEPARTMENT_ID, a.DEPARTMENT_NAME, a.MANAGER_ID, b.CITY, c.COUNTRY_NAME, d.REGION_NAME 
from departments a, locations b, countries c, regions d
where a.location_id = b.location_id 
and b.country_id = c.country_id
and c.region_id = d.region_id;



--문제4.
--‘Public Accountant’의 직책(job_title)으로 과거에 근무한 적이 있는 모든 사원의 사번과 이름을 출력하세요. 
--(현재 ‘Public Accountant’의 직책(job_title)으로 근무하는 사원은 고려하지 않습니다.) 이름은 first_name과 last_name을 합쳐 출력합니다.
select (b.first_name || ' ' || b.last_name) as "이름" 
from JOBS a, EMPLOYEES b, job_history c
where a.JOB_TITLE = 'Public Accountant'
and a.job_id = c.job_id
and b.employee_id = c.EMPLOYEE_ID;


--문제5.
--같은 성(last_name)을 가진 직원들의 사번(employee_id), 이름(firt_name), 성(last_name)과 부서 이름을 조회하여 성(last_name)순서로 정렬하세요
select a.EMPLOYEE_ID, (a.first_name ||' ' || a.last_name) as "name", c.DEPARTMENT_NAME 
from EMPLOYEES a, EMPLOYEES b, departments c
where a.first_name = b.FIRST_NAME
and a.department_id = c.DEPARTMENT_ID
order by a.LAST_NAME asc;


--문제6.
--자신의 매니저보다 채용일(hire_date)이 빠른 사원의 사번(employee_id), 성(last_name)과 채용일(hire_date)을 조회하세요  // 작은게 빠른것
select a.employee_id as"사원ID", a.last_name, a.hire_date as"사원 채용일", b.EMPLOYEE_ID as "매니저ID", b.hire_date as"매니저 채용일"
from employees a, employees b
where a.MANAGER_ID = b.EMPLOYEE_ID
and a.HIRE_DATE < b.hire_date;

