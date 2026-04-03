# E-Commerce SQL Analysis Project

## 1. Objective
Menganalisis performa penjualan dan perilaku customer untuk memahami pola bisnis dan sumber utama revenue.

---

## 2. Scope
Fokus analisis:
- Revenue
- Customer behavior
- Product value
- Transaction pattern

Di luar scope:
- Machine learning
- Forecasting
- Geolocation
- Operational optimization

---

## 3. Key Questions
1. Berapa total revenue, order, dan customer?
2. Bagaimana pola jumlah item per order dan harga produk?
3. Apakah customer melakukan repeat transaction?
4. Segmen customer mana yang paling berkontribusi pada revenue?
5. Apakah revenue bertumbuh karena jumlah order atau nilai order?

---

## 4. Main Findings

### Sales Overview
- Total revenue ≈ 16M
- Total orders ≈ 99k
- Total customers ≈ 99k

**Interpretasi:**  
Jumlah order yang hampir sama dengan jumlah customer mengindikasikan sebagian besar customer hanya melakukan satu transaksi.

---

### Product & Order Pattern
- Mayoritas order terdiri dari 1–2 item
- Order >5 item sangat jarang
- Harga produk bervariasi dari 0.85 sampai 6735
- Average product price ≈ 120

**Interpretasi:**  
Sebagian besar transaksi berada pada kategori low–mid value, meskipun terdapat beberapa produk dengan harga tinggi.

---

### Customer Behavior
- Seluruh customer hanya melakukan satu transaksi
- Tidak ditemukan repeat customer

**Interpretasi:**  
Bisnis sangat bergantung pada customer baru dan tidak menunjukkan customer retention. Namun, hasil ini tetap perlu dipahami dalam konteks struktur dataset.

---

### Customer Segmentation
- Segmen Medium menjadi kontributor revenue terbesar
- Segmen High jumlahnya kecil tetapi berdampak signifikan

**Interpretasi:**  
Revenue utama ditopang oleh customer medium, sementara customer high-value berperan sebagai penguat kontribusi revenue.

---

### Revenue Trend (Monthly)
- Revenue pada awal periode sangat rendah
- Revenue kemudian meningkat dan relatif stabil
- Mayoritas revenue bulanan berada di kisaran ~100k

**Interpretasi:**  
Bisnis menunjukkan fase awal aktivitas rendah, lalu berkembang dan memasuki periode stabil.

---

### Order Trend (Monthly)
- Mayoritas jumlah order per bulan berada di kisaran ~2000
- Beberapa bulan memiliki jumlah order sangat rendah (<10)
- Pola revenue bergerak sejalan dengan jumlah order

**Interpretasi:**  
Revenue lebih dipengaruhi oleh volume transaksi dibanding nilai transaksi per order.

---

### Average Order Value
- Average order value ≈ 160

**Interpretasi:**  
Nilai transaksi per order relatif stabil dan tidak tinggi, sehingga pertumbuhan revenue lebih didorong oleh jumlah transaksi.

---

## 5. Final Conclusion
Bisnis e-commerce ini menunjukkan pola **volume-driven growth**, di mana peningkatan revenue terutama dipengaruhi oleh jumlah transaksi, bukan nilai transaksi per customer.

Selain itu, tidak adanya repeat customer menunjukkan kelemahan pada customer retention, yang berpotensi menjadi risiko jangka panjang bagi keberlanjutan bisnis.

---

## 6. Business Recommendation
Berdasarkan hasil analisis, beberapa rekomendasi strategis:

- Meningkatkan **customer retention**, karena saat ini seluruh customer hanya melakukan satu transaksi
- Mengembangkan strategi **loyalty program** atau promosi untuk mendorong repeat purchase
- Mempertahankan dan mengoptimalkan **customer medium**, karena merupakan kontributor utama revenue
- Mengidentifikasi karakteristik **high-value customer** untuk meningkatkan kontribusi mereka
- Fokus pada peningkatan volume transaksi melalui marketing, karena revenue sangat bergantung pada jumlah order

---

## 7. Tools & Skills
- SQL (MySQL)
- Data Aggregation
- Data Cleaning
- Business Insight Analysis

---

## 8. Project Structure
- `analysis.sql` → Query SQL utama
- `README.md` → Dokumentasi project
- `Data/` → Dataset (jika tersedia)
