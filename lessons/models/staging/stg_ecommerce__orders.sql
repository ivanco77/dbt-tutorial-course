WITH source AS (
        SELECT *

        FROM {{ source('thelook_ecommerce', 'orders') }}
)

SELECT
        order_id,
        user_id,
		created_at,
        returned_at,
        shipped_at,
        delivered_at,
        status,
        num_of_item as num_items_ordered

FROM source