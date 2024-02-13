select A.department_name,A.SALARY,dense_rank()Over(order by salary desc) as rank_ from (

{{ deptsalary }}

) As A
Qualify rank_<3