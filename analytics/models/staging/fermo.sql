with taxi_log as (
    select *
    from {{ source('raw_taxis', 'manhattan_map') }}
)
select
    zone_id,
    zone as zone_name,
    borough,
    zone_name like '%Airport' as is_airport
from taxi_log