with final as (
    select 
        LOCATION_ISO_CODE,
        min(LOCATION) as LOCATION,
        min(PROVINCE) as PROVINCE,
        min(ISLAND) as ISLAND,
        min(TIME_ZONE) as TIME_ZONE,
        min(SPECIAL_STATUS) as SPECIAL_STATUS,
        min(TOTAL_REGENCIES) as TOTAL_REGENCIES,
        min(TOTAL_CITIES) as TOTAL_CITIES,
        min(TOTAL_DISTRICTS) as TOTAL_DISTRICTS,
        min(TOTAL_URBAN_VILLAGES) as TOTAL_URBAN_VILLAGES,
        min(TOTAL_RURAL_VILLAGES) as TOTAL_RURAL_VILLAGES,
        min(AREA_KM_2_) as AREA_KM_2_,
        min(POPULATION) as POPULATION,
        min(POPULATION_DENSITY) as POPULATION_DENSITY,
        min(LATITUDE) as LATITUDE,
        min(LONGITUDE) as LONGITUDE
    from {{ source('GOOGLE_SHEETS', 'COVID_19_INDONESIA_MOHIT_DUNGRANI') }}
    where LOCATION_ISO_CODE <> 'IDN'
    group by LOCATION_ISO_CODE
)

select * from final