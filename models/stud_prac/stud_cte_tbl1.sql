{{ config(materialized='table')}}
with stud_cte_tbl1 as(
    select * from dbt_azmot.stud_tbl1
)
select * from stud_cte_tbl1