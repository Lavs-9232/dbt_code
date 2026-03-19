{% snapshot snap_customers_timestamp %}

{{ 
    config(
    strategy = 'timestamp',
    unique_key ='id',
    updated_at ='insert_at',
    invalidate_hard_deletes=true
    )
    }}
select * from {{source('datafeed_shared_schema','customers')}}

{% endsnapshot %}
