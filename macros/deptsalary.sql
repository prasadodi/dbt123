{% macro deptsalary() %}



select d.department_name,sum(e.salary) As SALARY from dbt_src.employee e inner join dbt_src.DEPARTMENT d
on e.department_id=d.department_id
group by 1

{% endmacro %}