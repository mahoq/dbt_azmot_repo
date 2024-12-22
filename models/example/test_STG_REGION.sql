select sum(case when REGION='West' then amount end) as West_Amount,
sum(case when REGION='East' then amount end) as East_Amount,
sum(case when REGION='Central' then amount end) as Central_Amount,
sum(amount) as Total_amount
from dim_product A inner join FACT_PRODUCT_SALES B
on A.product_id=B.product_id;