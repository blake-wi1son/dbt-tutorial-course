WITH source AS (
    SELECT * 
    FROM {{ source('thelook_ecommerce', 'products') }}
)

SELECT
    -- IDs
    product_id,

    -- Other columns
    cost,
    retail_price,
    department
FROM source