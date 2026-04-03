# E-Commerce SQL Analysis Project

## 1. Objective
Menganalisis performa penjualan dan perilaku customer untuk memahami pola bisnis dan sumber utama revenue.

## 2. Scope
Fokus analisis:
- Revenue
- Customer behavior
- Product value
- Transaction pattern

Di luar scope:
- Machine learning
- Forecasting
- Geolocation analysis
- Operational optimization

## 3. Key Questions
1. Berapa total revenue, order, dan customer?
2. Bagaimana pola jumlah item per order dan harga produk?
3. Apakah customer melakukan repeat transaction?
4. Segmen customer mana yang paling berkontribusi pada revenue?
5. Apakah revenue bertumbuh karena jumlah order atau nilai order?

## 4. Main Findings

### Sales Overview
- Total revenue ≈ 16M
- Total orders ≈ 99k
- Total customers ≈ 99k

Interpretasi:
Jumlah order yang hampir sama dengan jumlah customer mengindikasikan sebagian besar customer hanya melakukan satu transaksi.

### Product & Order Pattern
- Mayoritas order terdiri dari 1–2 item
- Order >5 item sangat jarang
- Harga produk bervariasi dari 0.85 sampai 6735
- Average product price ≈ 120

Interpretasi:
Sebagian besar transaksi berada pada kategori low–mid value, meskipun terdapat beberapa produk dengan harga tinggi.

### Customer Behavior
- Seluruh customer hanya melakukan satu transaksi
- Tidak ditemukan repeat customer

Interpretasi:
Bisnis sangat bergantung pada customer baru dan tidak menunjukkan customer retention. Namun, hasil ini tetap perlu dipahami dalam konteks struktur dataset.

### Customer Segmentation
- Segmen Medium menjadi kontributor revenue terbesar
- Segmen High jumlahnya kecil tetapi berdampak signifikan

Interpretasi:
Revenue utama ditopang oleh customer medium, sementara customer high-value berperan sebagai penguat kontribusi revenue.

### Revenue Trend
- Revenue pada awal periode sangat rendah
- Revenue kemudian meningkat dan relatif stabil pada bulan-bulan berikutnya
- Mayoritas revenue bulanan berada di kisaran sekitar 100 ribu

Interpretasi:
Bisnis menunjukkan fase awal aktivitas rendah, lalu berkembang dan memasuki periode yang lebih stabil.

### Order Trend
- Mayoritas jumlah order per bulan berada di kisaran sekitar 2000
- Beberapa bulan memiliki jumlah order sangat rendah (<10)
- Pola revenue bergerak sejalan dengan jumlah order

Interpretasi:
Pertumbuhan revenue lebih dipengaruhi oleh volume transaksi dibanding kenaikan nilai transaksi per order.

### Average Order Value
- Average order value ≈ 160

Interpretasi:
Nilai transaksi per order relatif tidak tinggi, sehingga revenue bisnis lebih banyak didorong oleh banyaknya transaksi.

## 5. Final Conclusion
Bisnis menunjukkan pola volume-driven, di mana pertumbuhan revenue terutama didorong oleh peningkatan jumlah transaksi, bukan peningkatan nilai transaksi per customer.

Selain itu, tidak adanya repeat customer menunjukkan kelemahan pada customer retention, yang dapat menjadi area evaluasi di masa depan.

## 6. Business Implication
- Pertumbuhan revenue sangat bergantung pada volume transaksi
- Customer retention perlu menjadi perhatian utama
- Customer medium perlu dipertahankan karena menjadi sumber revenue utama
- Customer high-value juga penting karena kontribusinya besar meskipun jumlahnya sedikit

## 7. Files
- `analysis.sql` → query SQL utama
- `README.md` → dokumentasi project
