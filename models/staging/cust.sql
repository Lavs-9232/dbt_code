{{config(materialized = "table",
 pre_hook="truncate table {{ this }}",
 post_hook ="delete from {{ this }} where id is null ")}}

select * from {{source('datafeed_shared_schema','customers')}}