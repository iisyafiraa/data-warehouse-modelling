-- fact_sales
{{
  config(
    materialized='table'
  )
}}

SELECT 
  Date AS date,
  `Order ID` AS order_id, 
  Status AS status,
  currency as currency,
  {{ dbt_utils.generate_surrogate_key([
				'SKU'
			]) }} as product_id,
  {{ dbt_utils.generate_surrogate_key([
				'Fulfilment', 
				'`fulfilled-by`'
			])}} AS fulfillment_id,
  {{ dbt_utils.generate_surrogate_key([
				'`promotion-ids`'
			]) }} as promotion_id,

  {{ dbt_utils.generate_surrogate_key([
				'`Sales Channel `'
			]) }} as sales_channel_id,
  
  {{ dbt_utils.generate_surrogate_key([
				'`ASIN`'
			]) }} as sales_shipment_id,

  SUM(qty) AS qty,
  COALESCE(SUM(amount),0) AS amount,
FROM
    {{ source('bronze', 'amazon_sale_report') }}

group by all