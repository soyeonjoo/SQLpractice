--join

SELECT e.FIRST_NAME, d.DEPARTMENT_NAME
FROM  DEPARTMENTS d, EMPLOYEES e
WHERE e.department_id = d.DEPARTMENT_ID --조인조건(table 수 -1)
and e.salary > 5000; --row 선택조건