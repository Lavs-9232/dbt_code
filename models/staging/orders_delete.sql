{{ config(materialized='incremental',
           unique_key ='id',
           incremental_strategy='delete+insert')}}

with tb1 as(
select * from {{ source('datafeed_shared_schema','raw_orders_data') }} 
limit 20
)
select * from tb1