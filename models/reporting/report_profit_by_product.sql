SELECT PRODUCTID, PRODUCTNAME,category,subcategory, sum(orderprofit) as profit
FROM {{ ref('stg_order') }}
GROUP BY productid, productname,category,subcategory