with final as (
    select country, 
            Continent, 
            TOTAL_REGENCIES, 
            TOTAL_CITIES, 
            TOTAL_DISTRICTS,
            TOTAL_URBAN_VILLAGES,
            TOTAL_RURAL_VILLAGES,
            AREA_KM_2_,
            population,
            population_density,
            LONGITUDE,
            LATITUDE,
            LOCATION_ISO_CODE 
    from {{ source('GOOGLE_SHEETS', 'COVID_19_INDONESIA_MOHIT_DUNGRANI') }}
    where LOCATION_ISO_CODE = 'IDN'
    limit 1
)

select * from final
