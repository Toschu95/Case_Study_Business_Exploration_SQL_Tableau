-- Calculate median price
WITH Ordered AS (
    SELECT price, 
           ROW_NUMBER() OVER (ORDER BY price) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM order_items
)
SELECT AVG(price) AS median_price
FROM Ordered
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

-- Price categorization for orders
SELECT 
    COUNT(order_items.price) AS sales_count,
    CASE 
        WHEN price < 250 THEN 'Under 250'
        WHEN price < 500 THEN '250-499'
        WHEN price < 1000 THEN '500-999'
        WHEN price < 2000 THEN '1000-1999'
        ELSE '2000+'
    END AS price_cluster
FROM order_items
LEFT JOIN products ON order_items.product_id = products.product_id
LEFT JOIN product_category_name_translation AS translation
    ON products.product_category_name = translation.product_category_name
WHERE translation.product_category_name_english IN 
    ("computers_accessories", "telephony", "electronics", "tablets_printing_image", "computers", "audio", "pc_gamer")
GROUP BY price_cluster
ORDER BY sales_count DESC;
