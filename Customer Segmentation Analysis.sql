show databases;
use project_customer_segmentation;
show tables;
select * from customer;

# 1. How is the shopping distribution according to gender?
select gender, count(*) as shopping from customer
group by gender 
order by gender;

# 2. Which gender did we sell more products to?
select gender, sum(quantity) as total_sale from customer 
group by gender 
order by total_sale;

# 3. which gender did we sell more revenue?
select gender, sum(quantity*price) as total_revenue from customer
group by gender
order by total_revenue;

# 4. Distribution of purchase categories relative to other columns?
select category, gender, age, payment_method, shopping_mall, count(*) as number_of_purchase, sum(price) as total_spent
from customer
group by category, gender, age, payment_method, shopping_mall
order by category, gender, age, payment_method, shopping_mall;

# 5. How is the shopping distribution according to age?
select age, count(*) as shopping_distribution from customer 
group by age
order by shopping_distribution desc;

# 6. Which age category did we sell more products to?
select age, sum(quantity) as total_product_sold from customer
group by age 
order by total_product_sold desc
limit 1;

# 7. Which age cat generated more revenue?
select age, sum(quantity*price) as total_revenue from customer
group by age
order by total_revenue desc;

# 8. Distribution of purchase categories relative to other columns?
select category, gender, age, payment_method, shopping_mall, count(*) as number_of_purchase, sum(price) as total_spent
from customer
group by category, gender, age, payment_method, shopping_mall
order by category, gender, age, payment_method, shopping_mall;

# 9. Does the payment method have a relation with other columns?
select payment_method, Category, quantity, price, price*quantity as revenue
from customer 
group by payment_method, Category, quantity, price
order by payment_method, Category, quantity, price;

# 10. How is the distribution of the payment method?
select payment_method, count(*) as payment_distribution from customer
group by payment_method
order by payment_distribution desc;