SELECT
inventoryitem.id, product_distribution_center_id, product_id,
created_at, sold_at, cost, product_category, product_name, product_brand,
product_retail_price, product_department, distributioncenters.name, latitude, longitude
FROM inventoryitem
FULL OUTER JOIN distributioncenters 
ON inventoryitem.product_distribution_center_id = distributioncenters.id
ORDER BY inventoryitem.id ;