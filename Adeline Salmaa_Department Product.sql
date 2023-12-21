--import tabel inventoryitem
CREATE TABLE public.inventoryitem
(    
    id integer,   
    product_id integer,
    created_at date,
    sold_at date,
	cost integer,
	product_category text,
	product_name text,
	product_brand text,
	product_retail_price text,
	product_department text,
	product_sku text,
	product_distribution_center_id integer
);

--import tabel distributioncenters
CREATE TABLE public.distributioncenters
(    
    id integer,   
    name text,
   	latitude double precision,
    longitude double precision
);

--Join data inventoryitem dan distributincenters
SELECT
inventoryitem.id, product_distribution_center_id, product_id,
created_at, sold_at, cost, product_category, product_name, product_brand,
product_retail_price, product_department, distributioncenters.name, latitude, longitude
FROM inventoryitem
FULL OUTER JOIN distributioncenters 
ON inventoryitem.product_distribution_center_id = distributioncenters.id
ORDER BY inventoryitem.id ;

--Data Forecasting
select daily_date, count(daily_date)
from (SELECT inventoryitem.sold_at as daily_date
FROM inventoryitem
FULL OUTER JOIN distributioncenters 
ON inventoryitem.product_distribution_center_id = distributioncenters.id
WHERE inventoryitem.sold_at IS NOT NULL
ORDER BY inventoryitem.sold_at) x
group by 1
order by 1;