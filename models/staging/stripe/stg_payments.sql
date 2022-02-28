select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount / 100 AS amount,
    created AS created_at
from stripe.payments
