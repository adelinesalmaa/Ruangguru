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

SELECT * FROM inventoryitem;