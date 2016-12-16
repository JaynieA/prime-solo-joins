--Get all customers and their addresses.
SELECT customers.id, customers.first_name, addresses.street, addresses.city, addresses.zip, addresses.state, addresses.address_type
FROM customers
JOIN addresses
ON customers.id = addresses.customer_id;

--Get all orders and their line items.


--Which warehouses have cheetos?


--Which warehouses have diet pepsi?


--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


--How many customers do we have?


--How many products do we carry?


--What is the total available on-hand quantity of diet pepsi?
