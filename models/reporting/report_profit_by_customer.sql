SELECT CUSTOMERID, SEGMENT, COUNTRY, sum(orderprofit) as profit
FROM {{ ref('stg_order') }}
GROUP BY CUSTOMERID, SEGMENT, COUNTRY