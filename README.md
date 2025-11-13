# 📊 Sales Analysis Using SQL (MySQL)

## 📌 Project Overview
A SQL-based analytical project that answers 15 real business questions using sales, customer, and product datasets.  
The objective is to understand revenue trends, customer spending patterns, product performance, and operational insights.

## 🧰 Tools & Technologies
- MySQL  
- SQL (Joins, Group By, Aggregations)  
- Functions, Sorting & Filtering  
- Dataset imported via CSV/Excel  

## 📂 Database Structure
Three tables were created:

### customers
- customer_id  
- customer_name  
- city  
- state  

### products
- product_id  
- product_name  
- category  
- unit_price  

### sales
- sale_id  
- sale_date  
- product_id  
- customer_id  
- quantity  
- total_amount  
- payment_mode  

## ⚙️ Business Questions Solved (15 Total)
This project answers:

- Total revenue  
- Total orders  
- Total quantity sold  
- Top 5 products by revenue  
- Highest performing categories  
- Revenue by month  
- Year-wise revenue  
- Top customers by spending  
- Revenue by payment mode  
- Average order value  
- Max quantity sold in a single order  
- Customer purchase frequency  
- Revenue by city  
- Category-wise total quantity sold  
- Products with revenue below ₹10,000  

All SQL queries are included in the file:  
**`Sales_analysis_queries.sql`**

## 💡 Insights Generated
- A small group of customers contributed a large share of revenue.  
- Digital payment modes performed well.  
- Certain categories consistently dominated monthly sales.  
- Several lower-performing products need sales improvement strategies.

## 📁 Files Included
- `Sales_analysis_queries.sql` — Full set of 15 SQL queries  
- *(Optional)* `sample_data.csv` — Source dataset  

## 🧠 Skills Demonstrated
- SQL query writing  
- Problem solving using SQL  
- Data aggregation & trend analysis  
- Database design  
- Business analytics  

**Author: Sandeep Kumar Reddy Dande**
