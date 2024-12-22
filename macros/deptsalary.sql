{% macro deptsalary() %}

select d.department_name, sum(e.salary) as SALARY from employee e inner join department d
on e.department_id=d.department_id
group by 1

{% endmacro %}



