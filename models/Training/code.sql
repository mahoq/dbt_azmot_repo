{{config(materialized = 'table')}}
with code as 
(
    select * from {{ ref("Countrydialcode") }}

) select * from code
