with store_final as
(
    select * from {{ ref('store_tbl_2023') }}
),
store_sales_final as
(
    select * from {{ ref('store_sales_tbl_2023') }}
)

Final_Sales_profit as
(
    select s_store_name, s_county, sum(ss_sales_price), sum(ss_net_profit) from store_final, store_sales_final
    where s_store_sk = ss_store_sk
    group by 1, 2
)
select * from Final_Sales_profit

