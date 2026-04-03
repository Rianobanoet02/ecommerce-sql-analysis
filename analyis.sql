
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


-- ==============================
-- 4. REVENUE TREND (MONTHLY)
-- ==============================
select date_format(o.order_purchase_timestamp,'%y-%m') as order_month,
		sum(p.payment_value) as total_revenue
        from orders o
        join order_payments p
        on o.order_id =p.order_id
        group by order_month
        order by order_month;
        
-- Insight:
-- Revenue pada awal periode sangat rendah (sekitar 19–252)
-- Kemudian meningkat signifikan dan stabil di kisaran ~100 ribu per bulan
-- Hal ini menunjukkan adanya fase awal dengan aktivitas rendah,
-- diikuti oleh periode pertumbuhan dan stabilisasi

-- 5. ORDER TREND (MONTHLY)
-- ==============================
SELECT 
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS order_month,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_month
ORDER BY order_month;

-- Insight:
-- Mayoritas jumlah order per bulan berada pada kisaran sekitar 2000 transaksi
-- Terdapat beberapa bulan dengan jumlah order yang sangat rendah (<10),
-- kemungkinan merupakan fase awal atau akhir periode data
-- Pola revenue menunjukkan hubungan yang sejalan dengan jumlah order
-- Hal ini mengindikasikan bahwa revenue lebih dipengaruhi oleh volume transaksi
-- dibandingkan nilai transaksi per order


-- ==============================
-- 6. AVERAGE ORDER VALUE
-- ==============================
select AVG(orders_value) from (
	select order_id,
	sum(payment_value) as orders_value 
		from order_payments
		group by order_id)t
	;
-- Insight:
-- Average order value berada pada kisaran 160
-- Dibandingkan dengan total revenue dan jumlah order,
-- terlihat bahwa revenue lebih dipengaruhi oleh volume transaksi
-- daripada nilai per transaksi