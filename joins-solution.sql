--Get all customers and their addresses.
SELECT customers.first_name, customers.last_name, addresses.street, addresses.city,  addresses.state, addresses.zip, addresses.address_type
FROM customers
JOIN addresses
ON customers.id = addresses.customer_id;

--Get all orders and their line items.
SELECT orders.id AS order_id, orders.order_date,  orders.total, line_items.id AS line_id, line_items.unit_price, line_items.quantity
FROM orders
LEFT JOIN line_items
ON orders.id = line_items.order_id;

--Which warehouses have cheetos?
SELECT warehouse.warehouse FROM warehouse
JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
JOIN products
ON warehouse_product.product_id = products.id
	AND products.description LIKE '%cheetos%';

--Which warehouses have diet pepsi?
SELECT warehouse.warehouse FROM warehouse
JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
JOIN products
ON warehouse_product.product_id = products.id
	AND products.description LIKE '%diet pepsi%';

--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT customers.id AS customer_id, SUM(orders.total)
FROM customers
JOIN addresses
ON customers.id = addresses.customer_id
LEFT JOIN orders 
ON orders.address_id = addresses.id
GROUP BY customers.id;

--How many customers do we have?
SELECT COUNT(*) FROM customers;

--How many products do we carry?
SELECT COUNT(*) FROM products;

--What is the total available on-hand quantity of diet pepsi?
SELECT SUM(warehouse_product.on_hand)
FROM products
JOIN warehouse_product
ON products.id = warehouse_product.product_id
WHERE products.description LIKE '%pepsi%'
GROUP BY  products.id;
