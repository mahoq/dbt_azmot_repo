{% maco employee(salary, dept_id) %}
    where salary<{{salary}}
    and department_id={{dept_id}};

{% endmacro %}