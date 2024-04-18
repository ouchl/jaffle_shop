with orders as (

    select * from {{ ref('orders') }}

)
select
    order_date,
    sum(total_amount) as total_amount
from orders
group by order_date
