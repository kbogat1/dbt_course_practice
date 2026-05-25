{{config(
    materialized='table',
    indexes=[
        {'columns': ['ticket_no', 'flight_id']}
    ]
)}}

select
    ticket_no,
    flight_id,
    fare_conditions,
    amount
from
    {{ ref('stg_flights__ticket_flights') }}