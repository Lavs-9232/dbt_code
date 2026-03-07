{{ config(materialized ='incremental',
            incremental_strategy='append')}}
with tb1 as(
select * from {{ source('datafeed_shared_schema','raw_orders_data') }} 
limit 15
)
select * from tb1