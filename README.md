📊 Sales Analytics Dashboard

An end-to-end Sales Analytics project using Microsoft Excel, SQL Server, and Power BI to clean, analyze, visualize, and communicate business insights from historical sales data.

⸻

📌 Project Overview

This project analyzes historical sales transactions to understand overall sales performance, product performance, customer contribution, geographical performance, deal sizes, and sales trends over time.

The project follows an end-to-end data analytics workflow:

Raw Data → Data Cleaning → SQL Analysis → Excel Analysis → Power BI Dashboard → Business Insights → Recommendations

The objective was not only to calculate sales metrics, but also to translate the results into meaningful business insights and recommendations.

⸻

🎯 Business Problem

The business needed a clearer understanding of its sales performance and the factors influencing revenue.

The analysis focused on questions such as:

* Which product lines generate the most sales?
* Which countries are the strongest markets?
* Which customers contribute the most revenue?
* Which years and months perform best?
* Which deal sizes generate the most sales?
* How does average order value change over time?
* Are there periods of declining performance?
* What actions could management take based on the findings?

⸻

🎯 Project Objectives

The main objectives were to:

* Clean and prepare the raw sales dataset.
* Validate data quality and data types.
* Analyze sales performance using SQL.
* Perform exploratory analysis using Excel.
* Create reusable DAX measures in Power BI.
* Build an interactive sales dashboard.
* Identify key business trends and performance drivers.
* Develop actionable business recommendations.

⸻

📂 Dataset

The dataset contains historical sales transaction records with information including:

* Order number
* Order date
* Product code
* Product line
* Quantity ordered
* Price
* Sales
* Customer name
* City
* State
* Country
* Territory
* Deal size
* Order status

Dataset size: 2,823 records and 25 columns.

⸻

🛠️ Tools & Technologies

Microsoft Excel

Used for:

* Data cleaning
* Data validation
* PivotTables
* Exploratory Data Analysis (EDA)
* KPI calculations
* Charts
* Dashboard development

SQL Server

Used for:

* Data exploration
* Aggregation
* Filtering and sorting
* SUM() and AVG() calculations
* COUNT(DISTINCT) analysis
* Date-based analysis
* Product analysis
* Customer analysis
* Country analysis
* Deal-size analysis
* Ranking and Top-N analysis

Power BI

Used for:

* Power Query data cleaning
* Data-type validation
* Removing unnecessary columns
* Duplicate checking
* DAX measures
* KPI cards
* Interactive visualizations
* Slicers
* Dashboard development

⸻

🔄 Data Cleaning & Preparation

Power Query was used to prepare the dataset before analysis.

The cleaning process included:

* Checking column quality
* Validating data types
* Standardizing text fields using Trim and Clean
* Removing unnecessary columns
* Checking for duplicate records
* Validating important numerical and date fields
* Reviewing missing values

The empty values found in ADDRESSLINE2 were retained because the field is optional and the missing values did not represent invalid sales records.

⸻

📊 Key DAX Measures

The Power BI dashboard uses reusable DAX measures for the main KPIs.

Total Sales

Total Sales = SUM(SalesData[SALES])

Unique Orders

Unique Orders = DISTINCTCOUNT(SalesData[ORDERNUMBER])

Total Quantity

Total Quantity = SUM(SalesData[QUANTITYORDERED])

Average Order Value

Average Order Value = DIVIDE([Total Sales], [Unique Orders])

⸻

📈 Dashboard

The Power BI dashboard provides an interactive overview of sales performance.

Key Performance Indicators

* Total Sales: Approximately $10.03M
* Unique Orders: 307
* Total Quantity: 99,067
* Average Order Value: Approximately $32.68K

Dashboard Visualizations

The dashboard includes:

* Monthly Sales Trend
* Total Sales by Product Line
* Total Sales by Country
* Total Sales by Deal Size
* Total Sales by Year
* Interactive Year filter
* Interactive Product Line filter
* Interactive Country filter

⸻

🔍 Key Insights

1. 2004 was the strongest sales year

2004 generated approximately $4.72 million in sales, making it the strongest-performing year in the dataset.

The year recorded 144 unique orders, compared with 104 in 2003 and 59 in 2005.

2. Classic Cars was the strongest product line

Classic Cars generated approximately $3.92 million in sales, making it the highest-performing product line.

It also recorded the highest average sales per order-line record at approximately $4,053.

3. Euro Shopping Channel was the highest-value customer

Euro Shopping Channel generated approximately $912,300 in sales, making it the highest-value customer identified in the analysis.

4. The United States was the strongest geographical market

The United States generated the highest sales among the countries analyzed.

5. Medium-sized deals generated the most sales

Medium-sized deals contributed the largest share of revenue among the deal-size categories.

6. Average order value declined over time

Average order value decreased from approximately:

* 2003: $33,817
* 2004: $32,807
* 2005: $30,364

This suggests a decline in the average value generated per order.

7. Sales performance declined significantly in 2005

Sales decreased substantially in 2005, alongside a reduction in unique orders from 144 in 2004 to 59 in 2005.

This represents an important area for further business investigation.

⸻

💡 Business Recommendations

Based on the analysis, the following actions are recommended:

1. Strengthen the Classic Cars product line

Prioritize high-performing Classic Cars products through inventory planning, targeted promotions, and analysis of individual product performance.

2. Focus on high-value customers

Develop customer-retention strategies for high-value customers such as Euro Shopping Channel through personalized offers, loyalty initiatives, and proactive account management.

3. Investigate the 2005 sales decline

Management should investigate factors that may have contributed to the decline, including customer demand, product availability, pricing, market conditions, and customer retention.

4. Increase average order value

The company could use:

* Product bundling
* Cross-selling
* Upselling
* Volume-based incentives

to encourage customers to increase the value of individual orders.

5. Leverage successful geographical strategies

The United States was the strongest market. The company should investigate what contributed to its performance and determine whether successful strategies can be adapted to lower-performing markets.

6. Optimize medium-sized deals

Since medium-sized deals contributed the largest share of sales, the company should identify the characteristics of successful medium-sized transactions and use those insights to encourage larger purchases.

7. Use monthly trends for planning

Historical monthly sales patterns can support:

* Inventory planning
* Sales targets
* Promotional campaigns
* Staffing decisions
* Demand forecasting

8. Maintain continuous performance monitoring

The Power BI dashboard can be used as a recurring reporting tool to monitor sales, orders, average order value, product performance, customer contribution, and geographical performance.

⸻

🏁 Project Conclusion

This project provided an end-to-end practical experience in transforming raw sales data into actionable business insights.

Using Excel, SQL Server, and Power BI, the analysis covered data cleaning, exploratory analysis, SQL querying, DAX calculations, data visualization, dashboard development, and business recommendations.

The project demonstrates that effective data analysis goes beyond creating reports and charts. The ultimate goal is to transform data into insights that help businesses understand performance, identify opportunities, investigate problems, and make better decisions.

⸻

📁 Repository Structure

sales-analytics-dashboard/
│
├── README.md
│
├── excel/
│   ├── README.md
│   └── SalesData.xlsx
│
├── sql/
│   ├── README.md
│   └── sales_analysis.sql
│
└── powerbi/
    ├── README.md
    ├── Sales_Analytics_Dashboard.pbix
    └── Sales_Analytics_Dashboard.png

⸻

📚 Skills Demonstrated

Data Analysis

* Data Cleaning
* Exploratory Data Analysis
* Data Validation
* Business Analysis
* KPI Development
* Insight Generation

Excel

* PivotTables
* Data Cleaning
* Charts
* Dashboard Development
* Data Analysis

SQL Server

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* SUM
* AVG
* COUNT
* DISTINCTCOUNT
* TOP
* Date Functions
* Aggregation
* Business-focused SQL Analysis

Power BI

* Power Query
* Data Transformation
* DAX
* KPI Cards
* Data Visualization
* Slicers
* Interactive Dashboards
* Business Intelligence

⸻

👩🏽‍💻 Author

Rukaiyah Sanni

Aspiring Data Analyst | Excel | SQL | Power BI

This project was created as part of my practical journey into Data Analytics and Business Intelligence.
