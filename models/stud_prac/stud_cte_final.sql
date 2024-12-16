with stud_cte_final_1 as
(
    select * from {{ ref('stud_cte_tbl1') }}
),
stud_cte_final_2 as
(
    select * from {{ ref('stud_cte_tbl2') }}
)

Stud_cte_final as
(
    --select sid, f_name from stud_cte_final_1
    select l_name, fee_amount, class_in from stud_cte_final_1, stud_cte_final_2
    where stud_cte_final_1.sid = stud_cte_final_2.sid
    group by 1
)
select * from Stud_cte_final