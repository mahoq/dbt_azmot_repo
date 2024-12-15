with 
    test_sql_query as (
        select name, platform, year_
        from prod.product
)
select * from test_sql_query


--with
--    product_sales_hoq_roselands as (
--        select city, state
--        from prod.product
--        group by 1, 2
--    )
--select *
--    from product_sales_hoq_roselands