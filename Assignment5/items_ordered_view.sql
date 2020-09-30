CREATE OR REPLACE VIEW items_ordered AS
SELECT order_items.item_id, products.product_name, order_items.item_price, order_items.quantity 
FROM order_items JOIN products ON order_items.product_id = products.product_id
ORDER BY item_id;
