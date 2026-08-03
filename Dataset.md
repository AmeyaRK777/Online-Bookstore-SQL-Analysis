# 📂 Project Datasets & Schema Documentation

This document provides a detailed breakdown of all the raw data files (`.csv`) included in this repository, including table definitions, field descriptions, primary/foreign keys, and row counts.

---

## 📋 Summary of Datasets

| Dataset File | Entity | Total Records | Primary Key | Foreign Keys |
| :--- | :--- | :--- | :--- | :--- |
| `data/Books.csv` | Books Catalog | 500 | `Book_ID` | None |
| `data/Customers.csv` | Customer Profiles | 500 | `Customer_ID` | None |
| `data/Orders.csv` | Sales Transactions | 500 | `Order_ID` | `Customer_ID`, `Book_ID` |

---

## 📄 Dataset File Details

### 1. `Books.csv`
Contains the master catalog of all available books, pricing, and current warehouse stock counts.

* **File Location:** '/Users/ameyakhopekar/Documents/DocumentsOG /Documents /SQL /SQL_Project1/Dataset/Books.csv'
* **Primary Key:** `Book_ID`

| Column Name | Data Type | Description | Example |
| :--- | :--- | :--- | :--- |
| `Book_ID` | `INTEGER` | Unique identifier for each book title | `101` |
| `Title` | `VARCHAR` | Full title of the book | `The Great Gatsby` |
| `Author` | `VARCHAR` | Author's name | `F. Scott Fitzgerald` |
| `Genre` | `VARCHAR` | Category/Genre of the book | `Fiction` |
| `Published_Year` | `INTEGER` | Year the book was published | `1925` |
| `Price` | `DECIMAL(10,2)` | Retail unit price in USD | `15.99` |
| `Stock` | `INTEGER` | Physical inventory units available | `42` |

---

### 2. `Customers.csv`
Contains demographic and contact details for registered customers.

* **File Location:** '/Users/ameyakhopekar/Documents/DocumentsOG /Documents /SQL /SQL_Project1/Dataset/Customers.csv'
* **Primary Key:** `Customer_ID`

| Column Name | Data Type | Description | Example |
| :--- | :--- | :--- | :--- |
| `Customer_ID` | `INTEGER` | Unique identifier for each customer | `1001` |
| `Name` | `VARCHAR` | Full name of the customer | `John Doe` |
| `Email` | `VARCHAR` | Customer email address | `john.doe@example.com` |
| `Phone` | `VARCHAR` | Customer contact phone number | `+1-555-0192` |
| `City` | `VARCHAR` | City of residence | `New York` |
| `Country` | `VARCHAR` | Country of residence | `USA` |

---

### 3. `Orders.csv`
Contains line-item sales order transactions linking customers to purchased books.

* **File Location:** '/Users/ameyakhopekar/Documents/DocumentsOG /Documents /SQL /SQL_Project1/Dataset/Orders.csv'
* **Primary Key:** `Order_ID`
* **Foreign Keys:** `Customer_ID` (links to `Customers.csv`), `Book_ID` (links to `Books.csv`)

| Column Name | Data Type | Description | Example |
| :--- | :--- | :--- | :--- |
| `Order_ID` | `INTEGER` | Unique transaction identifier | `5001` |
| `Customer_ID` | `INTEGER` | Identifier linking to the purchasing customer | `1001` |
| `Book_ID` | `INTEGER` | Identifier linking to the purchased book | `101` |
| `Order_Date` | `DATE` | Date when the order was placed (`YYYY-MM-DD`) | `2024-03-15` |
| `Quantity` | `INTEGER` | Number of copies purchased in the order | `2` |
| `Total_Amount` | `DECIMAL(10,2)` | Total monetary value (`Quantity` × `Price`) | `31.98` |

---

## 🔗 Entity Relationship (ER) Summary

```text
[ Customers ] (1) <---> (N) [ Orders ] (N) <---> (1) [ Books ]
