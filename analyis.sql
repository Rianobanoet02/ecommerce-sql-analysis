
-- ==============================
-- 1. SALES OVERVIEW
-- ==============================

-- Total Revenue
select sum(payment_value) as total_revenue from order_payments;

-- Insight:
-- Total revenue ≈ 16M menunjukkan skala bisnis cukup besar

-- Total Orders
select count(*) as total_orders from orders;

-- Insight:
-- Volume transaksi tinggi (~99k orders)

-- Total Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM customers;

-- Insight:
-- Jumlah customer hampir sama dengan jumlah order


-- ==============================
-- 2. PRODUCT ANALYSIS
-- ==============================

select 
min(price) as min_price,
max(price) as max_price,
avg(price) as avg_price
from order_items;

-- Insight:
-- Harga produk sangat bervariasi (0.85 – 6735)
-- Rata-rata harga ≈ 120 → Hal ini menunjukkan mayoritas produk berada pada kategori low–mid value

-- ==============================
-- 3. CUSTOMER BEHAVIOR
-- ==============================

select count(*) as total_customers,
	   sum(case when total_orders=1 then 1 else 0 end) as one_time_customer
from (
	select 
		customer_id, 
		count(order_id) as total_orders
	from orders
	group by customer_id
)t;

-- 100% customer hanya melakukan 1 transaksi
-- Tidak terdapat repeat customer
-- Namun hasil ini perlu dikaji lebih lanjut apakah disebabkan oleh karakter bisnis atau struktur dataset