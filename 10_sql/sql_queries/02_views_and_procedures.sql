-- Create a view for average price per category
CREATE OR REPLACE VIEW avg_price_per_category AS 
SELECT 
    translation.product_category_name_english, 
    AVG(order_items.price) AS avg_price
FROM order_items
LEFT JOIN products ON order_items.product_id = products.product_id
LEFT JOIN product_category_name_translation AS translation
    ON products.product_category_name = translation.product_category_name
WHERE translation.product_category_name_english IN 
    ("computers_accessories", "telephony", "electronics", "tablets_printing_image", "computers", "audio", "pc_gamer")
GROUP BY translation.product_category_name_english;
