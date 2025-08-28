--KPI 1 — Total Orders & Customers

SELECT COUNT(DISTINCT order_id) AS total_orders,
       COUNT(DISTINCT user_id) AS total_customers
FROM `genai-experiments-072025.instacart_ds.orders`;

--KPI 2 — Most Popular Products

SELECT p.product_name, COUNT(op.product_id) AS order_count
FROM `genai-experiments-072025.instacart_ds.orders_products_prior` op
JOIN `genai-experiments-072025.instacart_ds.products` p
ON op.product_id = p.product_id
GROUP BY p.product_name
ORDER BY order_count DESC
LIMIT 10;

--KPI 3 — Top Departments by Orders

SELECT d.department, COUNT(op.product_id) AS total_orders
FROM `genai-experiments-072025.instacart_ds.orders_products_prior` op
JOIN `genai-experiments-072025.instacart_ds.products` p
ON op.product_id = p.product_id
JOIN `genai-experiments-072025.instacart_ds.departments` d
ON p.department_id = d.department_id
GROUP BY d.department
ORDER BY total_orders DESC;

--KPI 4 — Reorder Ratio

SELECT ROUND(SUM(reordered)/COUNT(*), 2) AS reorder_ratio
FROM `genai-experiments-072025.instacart_ds.orders_products_prior`;

--KPI 5 — Average Basket Size

SELECT ROUND(AVG(products_per_order),2) AS avg_basket_size
FROM (
  SELECT order_id, COUNT(product_id) AS products_per_order
  FROM `genai-experiments-072025.instacart_ds.orders_products_prior`
  GROUP BY order_id
);

--KPI 6 — Customer Retention (Days Since Last Order)

SELECT AVG(days_since_prior_order) AS avg_days_between_orders
FROM `genai-experiments-072025.instacart_ds.orders`
WHERE days_since_prior_order IS NOT NULL;

--KPI 7 — Orders by Day & Hour

SELECT 
  order_dow AS day_of_week,
  order_hour_of_day AS hour_of_day,
  COUNT(*) AS total_orders
FROM `genai-experiments-072025.instacart_ds.orders`
GROUP BY day_of_week, hour_of_day
ORDER BY day_of_week, hour_of_day;

--KPI 8 Product Orders & Reorder %

SELECT 
  p.product_name,
  COUNT(*) AS total_orders,
  ROUND(100 * SUM(CAST(op.reordered AS INT64)) / COUNT(*), 2) AS reorder_percentage
FROM `genai-experiments-072025.instacart_ds.orders_products_prior` op
JOIN `genai-experiments-072025.instacart_ds.products` p
  ON op.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_orders DESC
LIMIT 20;









