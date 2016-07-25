--natural join

select a.first_name, b.department_name
from EMPLOYEES a 
natural join DEPARTMENTS b ; 


--두개의 조인 조건이 의도하지 않았는데 걸림
-- department_id, manager_id
select a.first_name, b.department_name
from EMPLOYEES a
natural join departments b;

--join ~ using 위의 자연조건을 피하기위해 using씀
select a.first_name, b.department_name 
from EMPLOYEES a
join DEPARTMENTS b
using(department_id);

--join ~ on 
select a.first_name, b.department_name
from EMPLOYEES a
join DEPARTMENTS b
on a.department_id = b.DEPARTMENT_ID;
--위와 같은것 ★★★★★★★★ 이걸로 계속사용 
select a.FIRST_NAME, b.DEPARTMENT_NAME
from EMPLOYEES a, DEPARTMENTS b
where  b.DEPARTMENT_ID =a.DEPARTMENT_ID ;



--outer-join
--left outer join 표준코드  = 왼쪽에 빠진값 가져오는것 
select a.first_name, b.department_name
from EMPLOYEES a
left outer join DEPARTMENTS b
on a.DEPARTMENT_ID = b.DEPARTMENT_ID;

--right outer join 표준코드 테이블 자리만 바꿔주면됨
select a.first_name, b.department_name
from DEPARTMENTS b
right outer join EMPLOYEES a
on a.DEPARTMENT_ID = b.DEPARTMENT_ID;

--다른값이 나옴 
select a.first_name, b.department_name
from DEPARTMENTS b
right outer join EMPLOYEES a
on a.DEPARTMENT_ID = b.DEPARTMENT_ID;

