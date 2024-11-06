SELECT
date_date
,ads_cost
,ROUND(SUM(impression*ads_cost),2) AS ads_impression
,ROUND(SUM(click*ads_cost),2) AS ads_clicks
FROM {{ref('int_campaigns')}}
GROUP BY date_date, ads_cost
ORDER BY date_date DESC