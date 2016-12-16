--Get all customers and their addresses.
SELECT customers.id, customers.first_name, addresses.street, addresses.city, addresses.zip, addresses.state, addresses.address_type
FROM customers
JOIN addresses
ON customers.id = addresses.customer_id;

--Get all orders and their line items.
SELECT * FROM orders
JOIN line_items
ON orders.id = line_items.order_id;

--Which warehouses have cheetos?
SELECT warehouse.id, warehouse.warehouse, warehouse_product.product_id, warehouse_product.warehouse_id, products.id, products.description   FROM warehouse
JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
JOIN products
ON warehouse_product.product_id = products.id
	AND products.id = 5;


--Which warehouses have diet pepsi?
SELECT warehouse.id, warehouse.warehouse, warehouse_product.product_id, warehouse_product.warehouse_id, products.id, products.description   FROM warehouse
JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
JOIN products
ON warehouse_product.product_id = products.id
	AND products.id = 6;

--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


--How many customers do we have?


--How many products do we carry?


--What is the total available on-hand quantity of diet pepsi?
