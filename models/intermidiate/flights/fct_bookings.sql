{{
    config(
        materialized='table',
        indexes=[
            {'columns': ['book_ref'], 'unique': True}
        ])
}}

select
    book_ref,
    book_date,
    total_amount
from
    {{ ref('stg_flights__bookings') }}