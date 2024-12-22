select A.department_name, A.SALARY, dense_rank()over(order by salary desc)as rank_ from (
{{ deptsalary() }}
) as A 
qualify rank_<3
