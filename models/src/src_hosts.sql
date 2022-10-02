with raw_host as (
{# select * from AIRBNB.RAW.RAW_HOSTS  #}
select * from {{source('airbnb','hosts')}}
)
select 
    ID as host_id,
    NAME as host_name, 
    IS_SUPERHOST, 
    CREATED_AT, 
    UPDATED_AT
from raw_host
