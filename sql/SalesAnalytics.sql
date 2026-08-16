SELECT * FROM [dbo].[SalesPerformanceDB];

--Nunber of records--
SELECT COUNT(*) AS Total_Rows
FROM [dbo].[SalesPerformanceDB];

--Which Prouctline generated the highest sales?--
SELECT PRODUCTLINE,
Sum(SALES) AS Total_Sales
FROM SalesPerformanceDB
GROUP BY PRODUCTLINE
ORDER BY Total_Sales DESC;

--Which country generated the most revenue?--
SELECT COUNTRY,
SUM(SALES) AS Total_Revenue
FROM SalesPerformanceDB
GROUP BY COUNTRY
ORDER BY Total_Revenue DESC;

--Which customer purchased the most--
SELECT CUSTOMERNAME,
SUM(SALES) Total_Sales
FROM SalesPerformanceDB
GROUP BY CUSTOMERNAME
ORDER BY Total_Sales DESC;

--Which year has the highest sales--
SELECT YEAR_ID,
SUM(SALES) AS Sales_Year
FROM SalesPerformanceDB
GROUP BY YEAR_ID
ORDER BY Sales_Year DESC;

--How much revenue was generated in each month--
SELECT MONTH_ID,
SUM(SALES) AS Montly_Sales_Trend
FROM SalesPerformanceDB
GROUP BY MONTH_ID
ORDER BY Montly_Sales_Trend DESC;

SELECT DATENAME(MONTH, ORDERDATE) AS Sales_Month,
SUM(SALES) AS Monthly_Sales_Trend
FROM SalesPerformanceDB
GROUP BY MONTH(ORDERDATE),
DATENAME(MONTH, ORDERDATE)
ORDER BY MONTH(ORDERDATE),
         Monthly_Sales_Trend DESC;

SELECT YEAR(ORDERDATE) AS Sales_Year,
MONTH(ORDERDATE) AS Sales_Month,
SUM(SALES) AS Montly_Sales_Trend
FROM SalesPerformanceDB
GROUP BY YEAR(ORDERDATE), MONTH(ORDERDATE)
ORDER BY Sales_Year,Sales_Month;

SELECT YEAR(ORDERDATE) AS Sales_Year,
       DATENAME(MONTH, ORDERDATE) AS Sales_Month,
       SUM(SALES) AS Montly_Sales_Trend
FROM [SalesPerformanceDB]
GROUP BY YEAR(ORDERDATE),
         MONTH(ORDERDATE),
         DATENAME(MONTH, ORDERDATE)
ORDER BY Sales_Year,
         MONTH(ORDERDATE);

--Sales by PRODUCTLINE--
SELECT PRODUCTLINE,
SUM(SALES) AS Total_Sales
FROM SalesPerformanceDB
GROUP BY PRODUCTLINE
ORDER BY Total_Sales DESC;

--Which country has the highest sales__
SELECT COUNTRY,
SUM(SALES) AS Total_Sales
FROM SalesPerformanceDB
GROUP BY COUNTRY
ORDER BY Total_Sales DESC;

--Sales by deal size--
SELECT DEALSIZE,
SUM(SALES) AS Total_Sales
FROM SalesPerformanceDB
GROUP BY DEALSIZE
ORDER BY Total_Sales DESC;

--Average sales by productline--
SELECT PRODUCTLINE,
AVG(SALES) AS Avg_Sales
FROM SalesPerformanceDB
GROUP BY PRODUCTLINE
ORDER BY Avg_Sales DESC;

--Sales by status--
SELECT STATUS,
SUM(SALES) AS Status_Sales
FROM SalesPerformanceDB
GROUP BY STATUS
ORDER BY Status_Sales DESC;

--Top 10 customers--
SELECT TOP 10 CUSTOMERNAME,
SUM(SALES) AS Highest_Sales
FROM SalesPerformanceDB
GROUP BY CUSTOMERNAME
ORDER BY Highest_Sales DESC;

--Number of orders placed each year--
SELECT YEAR_ID,
COUNT(DISTINCT ORDERNUMBER) AS Total_Order
FROM SalesPerformanceDB
GROUP BY YEAR_ID
ORDER BY Total_Order DESC;

SELECT YEAR(ORDERDATE) AS Order_Year,
COUNT (DISTINCT ORDERNUMBER) AS Total_Order
FROM SalesPerformanceDB
GROUP BY YEAR(ORDERDATE)
ORDER BY Total_Order DESC;

--Average order value in each yeah--
SELECT YEAR(ORDERDATE) AS Order_Year,
SUM(SALES) AS Total_Sales,
COUNT(DISTINCT ORDERNUMBER) Number_of_Orders,
SUM(SALES) / COUNT(DISTINCT ORDERNUMBER) AS Average_Order_Value
FROM SalesPerformanceDB
GROUP BY YEAR(ORDERDATE)
ORDER BY Order_Year;

--Sales by Country--
SELECT COUNTRY,
SUM(SALES) AS Total_Sales
FROM SalesPerformanceDB
GROUP BY COUNTRY
ORDER BY Total_Sales DESC;

