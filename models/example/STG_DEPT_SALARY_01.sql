{% set dept=["IT","Marketing","DE"] %}

{% set count= dept | length %}


select department_name,sum(salary) as SALARY from dbt_azmot.employee e inner join dbt_azmot.DEPARTMENT d
on e.department_id=d.department_id
group by 1
having department_name in (

{% for dept in dept   %}

    {% if loop.index==count %}
        '{{dept}}'

    {% else %}
      
      '{{dept}}',

    {% endif %}
{% endfor %}

)