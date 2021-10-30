with provinces_info as (
    select * from {{ ref('provinces_info') }}
),

cases_info as (
    select * from {{ ref('provinces_covid_cases') }}
),

final as (
    select * from cases_info
    left join provinces_info using (LOCATION_ISO_CODE)
)

select * from final