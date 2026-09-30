# 📊 Retail Sales Analytics

An end-to-end Retail Sales Analytics project that transforms raw retail transaction data into actionable business insights using Python, SQL, and Power BI.

This project demonstrates the complete analytics workflow including:

* Data Cleaning
* Feature Engineering
* Exploratory Data Analysis (EDA)
* SQL-Based KPI Analysis
* Customer Segmentation using RFM Analysis
* Interactive Power BI Dashboard

---

# 🎯 Project Objective

The objective of this project is to analyze retail sales performance and answer key business questions such as:

* Which product categories generate the highest sales?
* Which regions contribute the most revenue?
* Who are the most valuable customers?
* What are the monthly and yearly sales trends?
* How can customers be segmented for targeted marketing?

The project converts raw sales data into meaningful insights that can support business decision-making.

---

# 🛠️ Technologies Used

### Programming & Analysis

* Python
* Pandas
* NumPy

### Visualization

* Matplotlib
* Seaborn
* Power BI

### Database

* SQL Server

### Development Environment

* Jupyter Notebook
* Git
* GitHub

---

# 📂 Repository Structure

```text
Retail-Sales-Analytics/
│
├── retail sales.csv                # Raw Dataset
├── Retail_Cleaned.csv              # Cleaned Dataset
├── Retail_Sales_Analysis.ipynb     # Python Analysis Notebook
├── RetailSalesQueries.sql          # SQL KPI Queries
├── Retail Sales Analysis.pbix      # Power BI Dashboard
└── README.md
```

---

# 📁 Dataset Overview

The dataset contains retail transaction records with information such as:

* Order ID
* Order Date
* Ship Date
* Customer ID
* Customer Name
* Product Category
* Product Sub-Category
* Region
* Sales
* Shipping Mode

The cleaned dataset contains approximately:

* 9,800 records
* 22 columns

---

# 🧹 Data Cleaning & Preprocessing

The following preprocessing steps were performed:

### Missing Value Handling

* Missing Postal Codes were replaced with 0.

### Duplicate Removal

* Duplicate records were identified and removed.

### Date Conversion

Order Date and Ship Date were converted from string format to datetime format.

### Feature Engineering

Additional features were created:

* Year
* Month
* Month Number
* Quarter

These features enable trend and seasonal analysis.

---

# 📈 Exploratory Data Analysis (EDA)

The following analyses were performed:

## Sales Distribution

Understanding overall sales behavior using histograms.

## Category Analysis

Total sales by:

* Furniture
* Office Supplies
* Technology

## Sub-Category Analysis

Identification of top-performing sub-categories.

## Product Performance

Top-selling products based on total sales.

## Regional Analysis

Sales comparison across regions.

## Customer Segment Analysis

Revenue contribution by:

* Consumer
* Corporate
* Home Office

## Shipping Mode Analysis

Sales distribution across shipping methods.

## Monthly Sales Trend

Analysis of sales growth over time.

## Yearly Sales Trend

Comparison of annual sales performance.

## Correlation Analysis

Correlation heatmap for numerical variables.

## Top Customers

Identification of highest revenue-generating customers.

## Customer Purchase Frequency

Analysis of repeat purchasing behavior.

---

# 👥 Customer Segmentation (RFM Analysis)

The project implements RFM Analysis to segment customers.

## What is RFM?

### Recency (R)

How recently a customer made a purchase.

### Frequency (F)

How often a customer purchases.

### Monetary (M)

How much money the customer spends.

---

## RFM Scoring

Customers are scored using quartiles and assigned scores for:

* Recency
* Frequency
* Monetary Value

These scores are combined into an overall RFM Score.

---

## Customer Segments

Customers are categorized into:

### Champions

Recent and frequent high-value customers.

### Loyal Customers

Customers who purchase regularly.

### Potential Loyalists

Customers who show signs of becoming loyal.

### At Risk

Customers who have reduced engagement.

---

# 🗄️ SQL Analysis

The SQL file contains KPI queries such as:

* Total Sales
* Total Orders
* Total Customers
* Category Sales
* Regional Sales
* Customer Performance Metrics

These queries can be executed directly in SQL Server.

---

# 📊 Power BI Dashboard

The Power BI dashboard provides interactive visualizations including:

* KPI Cards
* Sales Trends
* Category Analysis
* Regional Performance
* Customer Insights
* Interactive Filters and Slicers

---

# 📌 Key Business Insights

The project helps answer:

* Which products generate maximum revenue?
* Which customer segments drive business growth?
* Which regions perform best?
* How sales vary across months and years?
* Which customers should be targeted for retention campaigns?

---

# 🚀 How to Run the Project

## Clone Repository

```bash
git clone https://github.com/Swoasti07/Retail-Sales-Analytics.git
```

## Install Dependencies

```bash
pip install pandas numpy matplotlib seaborn
```

## Launch Notebook

```bash
jupyter notebook Retail_Sales_Analysis.ipynb
```

---
