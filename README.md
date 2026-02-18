# Retail Business Intelligence Dashboard

End-to-End Retail Analytics Project using PostgreSQL and Power BI.
---

## 📊 Project Overview

This project presents a multi-page business intelligence solution analyzing retail sales, profitability, and customer behavior.

The dashboard is structured into three analytical views:

- Executive Overview
- Profitability Analysis
- Customer Intelligence

The goal of this project is to identify revenue concentration, profitability drivers, customer segmentation performance, and discount impact across product categories.
---

## 📸 Dashboard Screenshots

### Executive Overview
![Executive Overview](images/executive_overview.png)

### Profitability Analysis
![Profitability Analysis](images/profitability_analysis.png)

### Customer Intelligence
![Customer Intelligence](images/customer_intelligence.png)

---

## 📌 Key Business Insights

- Revenue is heavily concentrated in the Low Value customer segment (₹2.03M, ~88% of total revenue).
- Mid Value customers deliver the highest profitability (~24% margin).
- 19.5% of customers are loss-making, indicating pricing or discount inefficiencies.
- The High Value segment consists of 1 customer currently operating at a negative margin.
- Furniture category shows high discounting with comparatively weaker profit margins.
---

## 📂 Dashboard Structure

### 1️⃣ Executive Overview
Provides high-level KPIs including total sales, total profit, profit margin, and YoY growth trends.  
Includes monthly sales trends and segment distribution.

### 2️⃣ Profitability Analysis
Breaks down category and subcategory performance.  
Identifies highest and lowest margin contributors and segment-category combinations.

### 3️⃣ Customer Intelligence
Analyzes revenue concentration by customer segment.  
Highlights top profit-contributing customers and evaluates discount impact on margins.

---

## 🗄 Data Modeling & SQL Workflow

The dataset was structured using a star schema design in PostgreSQL.

### Database Design
- Fact Table: `public_fact_sales_star`
- Dimension Tables:
  - `public_dim_customers`
  - `public_dim_products`
  - `public_dim_dates`

### SQL Transformations
- Data cleaning and normalization
- Aggregation logic for sales and profit calculations
- Revenue bucket classification for customer segmentation
- Discount calculations and category-level performance evaluation

The structured schema enabled efficient DAX calculations and scalable reporting.
---

## 🛠 Tech Stack

- PostgreSQL – Data storage and querying
- SQL – Data transformation and modeling
- Power BI – Data visualization and dashboard design
- DAX – KPI calculations and analytical measures
---

## 📈 Business Impact

This project demonstrates:

- Revenue concentration analysis
- Profitability driver identification
- Customer segmentation intelligence
- Discount effectiveness evaluation
- End-to-end business intelligence workflow from SQL to dashboard

The dashboard design focuses on structured storytelling, executive-level insights, and data-driven decision support.



