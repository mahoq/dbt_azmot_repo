{{ config(materialized='table') }}
with Store_Sales_tbl_2023 as
(
    select ss_store_sk, ss_quantity, ss_sales_price, ss_net_profit from prod.STORE_Sales_2023
)
select * from Store_Sales_tbl_2023