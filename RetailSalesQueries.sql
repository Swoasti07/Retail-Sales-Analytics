CREATE DATABASE RetailSalesDB;

USE RetailSalesDB;

SELECT * FROM [dbo].[Retail_Cleaned]


-- KPI Queries --
-- Total Sales
SELECT SUM(Sales) AS TotalSales
FROM [dbo].[Retail_Cleaned];

-- Total Orders
SELECT COUNT(DISTINCT [Order_ID]) AS TotalOrders
FROM [dbo].[Retail_Cleaned];

-- Total Customers
SELECT COUNT(DISTINCT [Customer_ID]) AS TotalCustomers
FROM [dbo].[Retail_Cleaned];

-- Average Order Value
SELECT SUM(Sales)/COUNT(DISTINCT [Order_ID])
AS AverageOrderValue
FROM [dbo].[Retail_Cleaned];

-- Product Analysis
SELECT TOP 10 [Product_Name],
SUM(Sales) AS Revenue
FROM [dbo].[Retail_Cleaned]
GROUP BY [Product_Name]
ORDER BY Revenue DESC;

-- Category Analysis
SELECT Category,
SUM(Sales) AS Revenue
FROM [dbo].[Retail_Cleaned]
GROUP BY Category
ORDER BY Revenue DESC;

-- Regional Analysis
SELECT Region,
SUM(Sales) AS Revenue
FROM [dbo].[Retail_Cleaned]
GROUP BY Region;

-- State Analysis
SELECT TOP 10 State,
SUM(Sales) AS Revenue
FROM [dbo].[Retail_Cleaned]
GROUP BY State
ORDER BY Revenue DESC;

-- Customer Analysis
SELECT TOP 10 [Customer_Name],
SUM(Sales) AS Revenue
FROM [dbo].[Retail_Cleaned]
GROUP BY [Customer_Name]
ORDER BY Revenue DESC;

-- Monthly Trend
SELECT Year, [Month_Number],
SUM(Sales) AS Revenue
FROM [dbo].[Retail_Cleaned]
GROUP BY Year,[Month_Number]
ORDER BY Year,[Month_Number];

-- Top Product in Each Category
WITH ProductRevenue AS
(
    SELECT Category, [Product_Name],
        SUM(Sales) AS Revenue,
        RANK() OVER
        (
            PARTITION BY Category
            ORDER BY SUM(Sales) DESC
        ) AS rnk
    FROM [dbo].[Retail_Cleaned]
    GROUP BY Category,[Product_Name]
)

SELECT *
FROM ProductRevenue
WHERE rnk = 1;

-- Customer Ranking
SELECT [Customer_Name],
    SUM(Sales) AS Revenue,
    RANK() OVER
    (
        ORDER BY SUM(Sales) DESC
    ) AS CustomerRank
FROM [dbo].[Retail_Cleaned]
GROUP BY [Customer_Name];

