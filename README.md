# DBT Project - Star Schema for E-commerce Sales Data

This repository contains a Data Build Tool (DBT) project designed to build a star schema model for an e-commerce sales dataset. The goal of this exercise is to create a star schema by building dimension tables and a fact table to support data analysis and reporting.

## Objective

In this exercise, we will design and implement a Star Schema based on Kimball’s Data Modeling methodology using an Amazon sales dataset. We will create dimension tables, a fact table, and an ERD to support business reporting and analytics needs.

## Exercise Breakdown

1. **Upload the data into BigQuery Table**  
   First, we need to upload the provided e-commerce sales data into BigQuery, which will be used to create the necessary tables.
![Upload Data](result/upload%20data.jpg)

2. **Build Table dim_fulfilment using DBT**  
   Create a dimension table `dim_fulfilment` to represent fulfillment data, including the fulfillment method and fulfillment partner.
![Table dim_fulfilment](result/dim_fulfillment.jpg)

3. **Build Table dim_product using DBT**  
   Create a dimension table `dim_product` containing information about the products such as SKU, style, category, and size.
![Table dim_product](result/dim_product.jpg)

4. **Build Table dim_promotion using DBT**  
   Create a dimension table `dim_promotion` to store data about promotions related to the sales.
![Table dim_promotion](result/dim_promotion.jpg)

5. **Build Table dim_sales_shipment using DBT**  
   Create a dimension table `dim_sales_shipment` to capture shipping information, including postal codes, city, state, country, and service level.
![Table dim_sales_shipment](result/dim_sales_shipment.jpg)

6. **Build Table dim_sales_channel using DBT**  
   Create a dimension table `dim_sales_channel` to store data about the sales channels through which the products are sold.
![Table dim_sales_channel](result/dim_sales_channel.jpg)

7. **Build Table fact_salesorder using DBT**  
   The fact table `fact_salesorder` will be built to aggregate key sales metrics, linking the dimension tables created earlier.
![Table fact_salesorder](result/fact_salesorder.jpg)

8. **Create an ERD for the Star Schema**  
   Design and document an Entity Relationship Diagram (ERD) for the star schema, including all dimension tables and the fact table.
![ERD](result/erd-dwh-modelling.png)

9. **Create an Analysis using Star Schema**  
   Develop an analysis based on the star schema model, such as identifying the top-selling products by category, size, and promotion_id
![Top 5 Selling Product Category by Quantity Sold](result/analysis_1.jpg)
![Top 5 Selling Product Size by Quantity Sold](result/analysis_2.jpg)
![Top 3 Promotion ID](result/analysis_3.jpg)