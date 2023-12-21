select daily_date, count(daily_date)
from (SELECT inventoryitem.sold_at as daily_date
FROM inventoryitem
FULL OUTER JOIN distributioncenters 
ON inventoryitem.product_distribution_center_id = distributioncenters.id
WHERE inventoryitem.sold_at IS NOT NULL
ORDER BY inventoryitem.sold_at) x
group by 1
order by 1;