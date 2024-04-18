with orders as (

    select * from {{ ref('orders') }}

),
select
    date(order_date) as order_date,
    sum(total_amount) as total_amount
from orders
group by date(order_date)
