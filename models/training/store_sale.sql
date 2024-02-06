{{ config (materialized='table') }}
with store_sales_tbl_2024 as 
(
    select ss_store_sk,ss_quantity,ss_sales_price,ss_net_profit from {{ source('test_prod', 'Store_Sales_2023')}}
)
select * from store_sales_tbl_2024