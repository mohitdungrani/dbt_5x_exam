with contry_info as (
    select * from {{ ref('country_info') }}
),

cases_info as (
    select * from {{ ref('country_covid_cases') }}
),

final as (
    select * from cases_info
    left join country_info using (LOCATION_ISO_CODE)
)

select * from final