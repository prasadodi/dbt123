{{ config(materialized='view') }}

with orders_price as(
select o_orderpriority,o_orderstatus,sum(o_totalprice) from dbt_db.source_db.orders
group by 1,2)
select * from orders_price