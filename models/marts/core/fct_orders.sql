with orders AS (
    SELECT * FROM {{ ref('stg_orders')}}
),

payments AS (
    SELECT * FROM {{ ref('stg_payments')}}
),

order_payments as (
    select
        order_id,
        sum(case when status = 'success' then amount end) as amount
    from payments
    group by 1
),

final AS (
    SELECT
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        order_payments.amount
    FROM orders
    LEFT JOIN order_payments
        ON order_payments.order_id = orders.order_id
)

SELECT * FROM final
