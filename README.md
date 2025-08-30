Description

This project analyze over 3 milloin grocery orders from instacartto uncover key trends in customer purchasing behaviour, product demand, and reorder patterns. Using Google Cloud Platform (GCP) tools- Cloud Storage,
Big Query, and Looker Studio- the analysis delivers actionable insights to optimize product placement, inventory, and marketing strategies.

Setup:

We used Google Cloud Platform (GCP), Big Query (SQL Queries) and Data Studio to process and visualize the data.

Steps Followed:

1. Dataset Ingestion to Google Cloud Storage

• Downloaded the "Instacart" dataset from Kaggle.

• Created a GCS Bucket to store our raw data file.

• Uploaded our CSV file i.e. instacartorders.csv

2. Importing Dataset to Big Query (Creating Dataset and Tables)

• Created a Big Query Dataset "instacart_analysis" to store our Instamaert order data.

• Imported the CSV file into a Big Query Table "instacart_order" while ensuring proper schema mapping.

3. Wrote the following Queries
  (https://github.com/rathi-saurabh/Instacart-order-Analysis/blob/9a46651c8296cfec6aaa0b99118298830874d7b7/instacartOrderAnalysis.sql)

5. Building Dashboard in Data Studio:
 
• Connected Big Query to Data Studio.

• We used Custom Queries to streamline the linking process with Data Studio.

• Added scorecards for key KPIs (Total Customers, Total orders, Avg days betwwen order, Reorder ratio, Avg basket size).

• Added charts and trends for churn segmentation (Most popular products, Top departments by orders, Product order & reorder%).

• Designed a clean, interactive dashboard for stakeholders.


📊 Key KPIs & Insights

KPIs:-

• Total Customers & Orders

• Reorder Ratio (% of products reordered)

• Average Basket Size (avg. items per order)

• Top 10 Products & Departments by Order Count

• Order Trends by Day & Hour

Sample Insights:-

• 80% of Instacart customers reorder previously purchased products.

• Fresh Produce & Dairy departments contribute the highest order volume.

• Peak shopping occurs on Sundays between 10 AM and 2 PM.

Final Dashboard:

![image alt](https://github.com/rathi-saurabh/Instacart-order-Analysis/blob/9a46651c8296cfec6aaa0b99118298830874d7b7/Instacart_Dashboard.jpg)
