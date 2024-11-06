SELECT *
FROM {{ref(int_campaigns_day)}}
LEFT JOIN {{ref(finance_days)}}