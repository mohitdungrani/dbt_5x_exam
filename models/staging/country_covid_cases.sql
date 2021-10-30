with final as (
    select 
        CAST(date as date) as date,
        NEW_CASES,
        NEW_DEATHS,
        NEW_RECOVERED,
        NEW_ACTIVE_CASES,
        TOTAL_CASES,
        TOTAL_DEATHS,
        TOTAL_RECOVERED,
        TOTAL_ACTIVE_CASES,
        NEW_CASES_PER_MILLION,
        TOTAL_CASES_PER_MILLION,
        NEW_DEATHS_PER_MILLION,
        TOTAL_DEATHS_PER_MILLION,
        CASE_FATALITY_RATE,
        CASE_RECOVERED_RATE,
        GROWTH_FACTOR_OF_NEW_CASES,
        GROWTH_FACTOR_OF_NEW_DEATHS,
        LOCATION_ISO_CODE
    from {{ source('GOOGLE_SHEETS', 'COVID_19_INDONESIA_MOHIT_DUNGRANI') }}
    where LOCATION_ISO_CODE = 'IDN'
)
 
select * from final