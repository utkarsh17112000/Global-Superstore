-- Selects all records and columns from the global_superstore table
SELECT * FROM global_superstore.global_superstore;

-- Calculates total sales for each category and returns top 5 categories by total sales
SELECT Category, round(sum(sales),2) as "Total Sales"
FROM global_superstore.global_superstore 
group by Category 
order by "Total Sales" desc 
limit 5;


-- Counts the number of orders for each state and returns top 5 states with the most orders
SELECT State, count("Order ID") as "Total Orders"
FROM global_superstore.global_superstore 
group by State 
order by "Total Orders" desc 
limit 5;

-- Calculates total sales for each customer and returns top 10 customers with highest sales
SELECT `Customer Name`, round(sum(Sales),2) as "Total Sales"
FROM global_superstore.global_superstore 
group by `Customer Name`
order by "Total Sales" desc 
limit 10;


-- Calculates total sales for each sub-category and returns top 10 sub-categories by sales
select `Sub-Category`, round(sum(sales),2) as "Total Sales"
FROM global_superstore.global_superstore 
group by `Sub-Category`
order by "Total Sales"  DESC
limit 10;



-- Calculates average profit for each discount level and sorts by discount
SELECT Discount, round(avg(Profit),2) as "Avg Profits"
FROM global_superstore.global_superstore 
group by Discount 
order by Discount;


-- Calculates profit margin (Profit / Sales) for each product and returns top 10 products by profit margin
select `Product Name`, round((SUM(Profit) / SUM(Sales)),3)AS Profit_Margin
FROM global_superstore.global_superstore 
group by `Product Name`
order by Profit_Margin  DESC
limit 10;



-- Calculates total sales for each region and sorts by highest sales
select Region, round(sum(sales),2) as "Total Sales"
FROM global_superstore.global_superstore 
group by Region
order by "Total Sales" desc;


-- Calculates total profit for each product and returns top 5 most profitable products
select `Product Name` , sum(profit) as "Total Profit"
FROM global_superstore.global_superstore  
group by `Product Name`
order by "Total Profit" desc
limit 5;


-- Counts total orders for each order priority and sorts by the highest order count
select `Order Priority` , count(`Order ID`) as "Total Order"
FROM global_superstore.global_superstore  
group by `Order Priority`
order by "Total Order" desc;


-- Calculates total profit, total sales, and profit margin for each country and ranks by profit margin
select country , round(sum(profit),2) as "Total Profit", round(sum(sales),2) as "Total Sales", round(sum(profit)/sum(sales),3) as "Profit Margin"
from global_superstore.global_superstore 
group by country
order by  "Profit Margin" desc;


-- Calculates total sales for each customer and returns top 10 customers with highest sales
select `Customer Name` , round(sum(sales),2) as "Total Sales"
from global_superstore.global_superstore 
group by `Customer Name`
order by "Total Sales" desc
limit 10;


-- Summarizes monthly sales by formatting order dates into Year-Month and summing sales
select month(str_to_date(`Order Date`,"%d-%m-%Y")) as Month, round(Sum(sales),2) as Sales
from global_superstore.global_superstore 
group by Month
Order by Month;


-- Calculates average profit and average discount for each product category
select category, round(avg(profit),2) as "Avg Profit", round(avg(discount),2) as "Avg Discount"
from global_superstore.global_superstore 
group by category;

-- Calculates average shipping time (in days) per region based on order and ship dates
select region, 
round(
Avg(datediff(str_to_date(`ship date`,"%d-%m-%Y"), str_to_date(`order date`,"%d-%m-%Y")))
,0) As Average_Time
from global_superstore.global_superstore 
group by region
order by Average_Time;


-- Lists transactions where the profit is negative, showing order ID, product, sales, and profit
select `Order ID`,`Product Name`,Sales, Profit
from global_superstore.global_superstore 
where Profit<0
order by Profit desc;


-- Calculates total sales for each sub-category and ranks them from highest to lowest
select `Sub-Category`, round(sum(sales),2) as "Total Sales"
from global_superstore.global_superstore 
group by `Sub-Category`
order by "Total Sales" desc;


-- Calculates total sales and total profit for each region
select Region, round(Sum(sales),2) as "Total Sales",
round(sum(Profit),2) as "Total Profit"
from global_superstore.global_superstore 
group by Region;


-- Calculates total sales for each product and returns top 10 based on (incorrectly labeled) profit 
select `Product Name` , round(sum(Sales),2) as "Total Sales"
FROM global_superstore.global_superstore  
group by `Product Name`
order by "Total Profit" desc
limit 10;


-- Counts the total number of orders for each customer segment and returns top 10 segments by order volume
select Segment , count(`Order ID`) as "Total Orders"
FROM global_superstore.global_superstore  
group by Segment
order by "Total Orders" desc
limit 10;































