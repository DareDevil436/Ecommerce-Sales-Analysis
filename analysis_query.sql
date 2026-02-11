#Q-1 How much total revenue has the company generated so far?
#ans.  I calculated total revenue by aggregating the total_amount column from the orders table using SUM. 

SELECT SUM(total_amount) AS revenue
FROM orders;

#Q-2 How does sales vary month by month?
#ans. I grouped orders by year and month using DATE_FORMAT to avoid mixing data across years and calculated monthly revenue 

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

#Q-3 Find the top 5 customers by total spending.
#ans. “I joined customers with orders, grouped by customer name, calculated total spending per customer, and sorted it in descending order to identify the top 5 customers. 

SELECT 
    c.customer_name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

#Q-4 Find city-wise total revenue.
#ans. “I joined customers with orders, grouped the data by city, and calculated total revenue per city to identify top-performing locations.”

SELECT 
    c.city,
    SUM(o.total_amount) AS total_revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC;

#Q-5 Find the Average Order Value (AOV).
#ans. “I calculated Average Order Value by dividing total revenue by the total number of orders using aggregate functions.”

SELECT 
    SUM(total_amount) / COUNT(order_id) AS average_order_value
FROM orders;

#Q-6 Find customers who placed more than 1 order (repeat customers).
#ans. “I identified repeat customers by grouping orders by customer_id and filtering those with more than one order using HAVING.”

select customer_id, count(order_id)
    from orders
     group by customer_id
     having count(order_id) > 1;

#Question 7: Best-Selling Product Category
#ans. Electronics is the best-selling category by volume, indicating strong demand and potential for bundling or premium offerings.”

  select p.category, sum(o.quantity) as total_quantity_sold from
     order_items o
    join product p
     on o.product_id = p.product_id
     group by p.category
     order by o.quantity desc
     limit 1;

