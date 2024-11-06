SELECT *
FROM {{ref('stg_RAW__adwords')}}
UNION ALL
SELECT *
FROM {{ref('stg_RAW__bing')}}
UNION ALL
SELECT *
FROM {{ref('stg_RAW__criteo')}}
UNION ALL
SELECT *
FROM {{ref('stg_RAW__facebook')}}
ORDER BY date_date DESC