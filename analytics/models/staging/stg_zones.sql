with raw_ringcentral_user_log as (
    select *
    from {{ source('raw_taxis', 'zones') }}
)
select
    zone_id,
    zone as zone_name,
    borough,
    zone_name like '%Airport' as is_airport
from raw_zones