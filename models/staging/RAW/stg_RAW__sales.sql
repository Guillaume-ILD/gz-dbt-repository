with 

source as (

    select * from {{ source('RAW', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id AS products_id,
        revenue,
        quantity,
        CONCAT(orders_id, "-", pdt_id) AS REFERENCE

    from source

)

select * from renamed
