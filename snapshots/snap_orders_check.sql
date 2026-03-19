{% snapshot snap_orders_check %}

{{
    config(
        strategy ='check',
         unique_key ='id',
        check_cols =['user_id','order_date','status'],
       invalidate_hard_deletes=true
    )
}}
select * from {{source('datafeed_shared_schema','raw_orders_data')}}

{%endsnapshot%}