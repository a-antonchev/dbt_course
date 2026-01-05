{{
  config(
    materialized = 'table',
    )
}}
select
  airport_code,
  airport_name,
  city,
  coordinates,
  current_timestamp as effective_date_from,
  null as effective_date_to
from {{ ref('stg_flights__airports') }}