{{config(materialized='table')}}

select
    *
from
    {{ source('demo_src', 'aircrafts_data') }}