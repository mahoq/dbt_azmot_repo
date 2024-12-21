{%- set country=['USA', 'UK', 'Germany', 'Japan'] -%}
{% for country in country %}
    My country is: {{country | capitalize }}
{% endfor %}

