# 📚 E-Commerce Bookstore SQL Data Analytics & Business Insights

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Data Analysis](https://img.shields.io/badge/Data_Analysis-0A66C2?style=for-the-badge&logo=googleanalytics&logoColor=white)
![Business Analytics](https://img.shields.io/badge/Business_Analytics-FF6F00?style=for-the-badge&logo=databricks&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub_Portfolio-181717?style=for-the-badge&logo=github&logoColor=white)

## 📌 Project Overview
This repository contains an end-to-end SQL analysis of an online bookstore database consisting of **Books**, **Customers**, and **Orders**. The primary objective of this project is to perform exploratory data analysis, solve transactional business problems, evaluate sales performance, and derive actionable insights to optimize inventory management and customer strategy.

---

## 🛠️ Tech Stack & Concepts
* **Database Language:** SQL (PostgreSQL / MySQL compatible)
* **SQL Concepts Applied:**
  * Multi-table Relational Joins (`INNER JOIN`, `LEFT JOIN`)
  * Data Aggregation & Grouping (`SUM`, `COUNT`, `AVG`, `GROUP BY`, `HAVING`)
  * Advanced Filtering & Data Quality Handling (`WHERE`, `IS NULL`, `COALESCE`)
  * Data Ranking & Analytics (`ORDER BY`, `LIMIT`, Window Functions / `DENSE_RANK()`)

---

## 📊 Dataset Schema

The database consists of three interconnected tables:

1. **`Books`**:
   * `Book_ID` (Primary Key): Unique identifier for each book.
   * `Title`: Book title.
   * `Author`: Writer's name.
   * `Genre`: Book category (e.g., Fiction, Mystery, Science Fiction).
   * `Published_Year`: Year of publication.
   * `Price`: Unit retail price.
   * `Stock`: Current physical inventory count.

2. **`Customers`**:
   * `Customer_ID` (Primary Key): Unique customer identifier.
   * `Name`: Full name.
   * `Email`: Email address.
   * `Phone`: Contact phone number.
   * `City` / `Country`: Customer location.

3. **`Orders`**:
   * `Order_ID` (Primary Key): Unique transaction identifier.
   * `Customer_ID` (Foreign Key): ID linking to `Customers`.
   * `Book_ID` (Foreign Key): ID linking to `Books`.
   * `Order_Date`: Timestamp of order creation.
   * `Quantity`: Number of units purchased.
   * `Total_Amount`: Total financial revenue generated per order line.

---

## 💡 Business Analytics Perspective & Analytical Focus

1. **Inventory & Dead Stock Management:**
   * Evaluating unsold items using non-matching join patterns (`LEFT JOIN ... WHERE IS NULL`) to identify low-demand stock and optimize warehouse holding costs.

2. **Revenue Attribution vs. Unit Volume:**
   * Distinguishing between raw purchase volume (`Quantity` / order count) and financial performance (`Total_Amount`) to evaluate high-margin products and customer lifetime value.

3. **Demand & Supply Alignment:**
   * Analyzing catalog breadth (unique titles) versus physical inventory depth (stock counts) across genres to ensure purchasing strategies match customer demand.

---
## 🔩 Entity Relationship Diagram

<img width="720" height="540" alt="Screenshot 2026-08-03 at 7 02 20 PM" src="https://github.com/user-attachments/assets/83c46b68-2254-4a6f-a91e-fa34e373566b" />
