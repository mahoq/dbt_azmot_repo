with
    product_sales_hoq_tolarbag as (
        select city, state
        from prod.product
        group by 1, 2
    )
select *
from product_sales_hoq_tolarbag