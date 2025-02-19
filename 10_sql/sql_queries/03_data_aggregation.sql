-- Count total orders
SELECT COUNT(order_id) AS total_orders FROM orders;

-- Count orders grouped by status
SELECT order_status, COUNT(order_id) AS order_count FROM orders GROUP BY order_status;

-- Count orders per month and year
SELECT 
    YEAR(order_purchase_timestamp) AS year, 
    MONTH(order_purchase_timestamp) AS month, 
    COUNT(order_id) AS total_orders
FROM orders 
GROUP BY year, month 
ORDER BY year DESC, month DESC;

-- Count unique products
SELECT COUNT(DISTINCT product_id) AS unique_products FROM products;

-- Count products per category
SELECT 
    product_category_name, 
    COUNT(DISTINCT product_id) AS product_count 
FROM products 
GROUP BY product_category_name 
ORDER BY product_count DESC;
