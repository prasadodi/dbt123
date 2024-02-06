{{ config (materialized='table') }}
with store_tbl_2024 as
(
    select S_STORE_SK,S_STORE_ID,S_STORE_NAME,S_COUNTY FROM {{ source('test_prod', 'Store_2023')}}
)
select * from store_tbl_2024