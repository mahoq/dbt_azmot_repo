with stud_cte_final_1 as
(
    select * from {{ ref('stud_cte_tbl1') }}
),
stud_cte_final_2 as
(
    select * from {{ ref('stud_cte_tbl2') }}
)

stud_cte_final as
(
    select sid, f_name, fee, class from stud_cte_final_1, stud_cte_final_2
    where sid=sid
    group by 1
)
select * from stud_cte_final