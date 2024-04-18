with orders as (

    select * from {{ ref('orders') }}

)
select
    order_date,
    sum(amount) as daily_sales_amount
from orders
group by order_date
