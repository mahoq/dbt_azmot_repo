{{ config(materialized='table')}}
with stud_cte_tbl2 as
(
    select * from dbt_azmot.stud_tbl2
)
select * from stud_cte_tbl2