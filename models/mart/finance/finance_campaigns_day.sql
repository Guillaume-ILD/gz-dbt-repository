SELECT *
FROM {{ref(int_campaigns_day)}}
INNER JOIN {{ref(finance_days)}}