{% macro deptsalary %}



select d.department_name,sum(e.salary) As SALARY from Prod.employee e inner join Prod.DEPARTMENT d
on e.department_id=d.department_id
group by 1

{% endmacro %}