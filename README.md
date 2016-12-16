#Description
In this challenge, we’re going to practice performing SQL queries with multiple tables. This should help better solidify some concepts that were covered during lecture.

##Assumptions
* You are using Postico
* Postgres is currently running on your computer

##Setup
Follow the instructions below before continuing with this challenge.

##Create your database, table, and data
We are creating a database with a multiple tables and records. Please follow the instructions below to create a new database with this table and data.

Postico instructions

* [x] Open Postico and connect.
* [x] Click the elephant in the upper left.
* [x] Create a new database using the button near the bottom.
* [x] Double click on your newly created database.
* [x] Select SQL query
* [x] Paste in the contents of this file (https://drive.google.com/file/d/0B10Wu-zrSBwMYTJUMkM3MWxnM1E/view?usp=sharing)
* [x] Press cmd + option + enter or select Connection -> Execute All Queries.
* [x] Press cmr + R or select Connection -> Reload.

##Entity Relationship Diagram (ERD)
See a diagram of the available entities and their relationships. https://docs.google.com/drawings/d/1AyIEFz6pvTtVZJ8M9GCJD38WNZ3ylJT0Pc1YB9P5sX8/edit?usp=sharing

NOTE: Remember that a many-to-many relationship requires a join table, so the entities in the diagram may be missing some actual tables. Explore the tables in your database.

##GitHub repo
* [x] Create a GitHub repo named “prime-solo-joins”.
* [x] Create a file called “joins-solution.sql”. You will store your responses to the exercise questions here. NOTE: This is merely a text file with a .sql extension.

##Exercise
For each of the following questions:

* Write a comment that specifies which question you are answering. (SQL comments are two dashes, followed by text.)
* Write the SQL query that answers the question, below that comment.
Example question and answer:

```
-- 0. Get all the users
SELECT * FROM customers;
```

###Tasks
* [x] Get all customers and their addresses.
* [x] Get all orders and their line items.
* [x] Which warehouses have cheetos?
* [x] Which warehouses have diet pepsi?
* [] Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
* [x] How many customers do we have?
* [x] How many products do we carry?
* [] What is the total available on-hand quantity of diet pepsi?
