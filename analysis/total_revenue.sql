WITH payments AS (
    select * FROM {{ ref('stg_payments') }}
),

SELECT
    SUM(amount) as total_revenue
FROM payments
WHERE status = 'success'
