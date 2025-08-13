
WITH source AS (
    SELECT 
        order_id,
        customer_id,
        CAST(order_date AS DATE) AS order_date,
        product_id,
        quantity,
        CAST(price AS DECIMAL(10,2)) AS price,
        UPPER(status) AS status
    FROM 
        DBT_CLOUD.RAW_SCHEMA.ORDERS
    
)

SELECT * FROM source
