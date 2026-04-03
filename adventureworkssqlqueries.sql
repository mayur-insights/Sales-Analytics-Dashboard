CREATE DATABASE adventureworks;
USE adventureworks;
SELECT COUNT(*) FROM fact_sales;
SHOW TABLES;
SELECT * FROM fact_sales;
SELECT * FROM dimproduct;
SELECT * FROM dimcustomer;
SELECT * FROM dimdate;
SELECT * FROM dimsalesterritory;
#TOTAL SALES
SELECT 
    ROUND(SUM(SalesAmount) / 1000000, 2) AS Total_Sales_Millions
FROM fact_sales;
#TOTAL PRODUCT COST
SELECT 
    ROUND(SUM(ProductStandardCost * OrderQuantity) / 1000000, 2) AS Total_Product_Cost_M
FROM fact_sales;
#TOTAL PROFIT
SELECT 
    ROUND(SUM(SalesAmount - (ProductStandardCost * OrderQuantity)) / 1000000, 2) 
    AS Total_Profit_M
FROM fact_sales;
#TOTAL ORDERS
SELECT 
    COUNT(DISTINCT SalesOrderNumber) AS Total_Orders
FROM fact_sales;









