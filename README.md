# Task 3: SQL for Data Analysis

## 📄 Brief About Dataset
The dataset used in this task is **Ecommerce Shipping Data** containing 14 sample rows.  
It includes information about:
- `ID` – Unique order ID
- `Warehouse_block` – Warehouse section (A–F)
- `Mode_of_Shipment` – Shipment type (Flight, etc.)
- `Customer_care_calls` – Number of calls made by the customer
- `Customer_rating` – Rating given by the customer (1–5)
- `Cost_of_the_Product` – Product price
- `Prior_purchases` – Past purchases by the customer
- `Product_importance` – Importance level (low, medium, high)
- `Gender` – Customer gender
- `Discount_offered` – Discount percentage
- `Weight_in_gms` – Product weight in grams
- `Reached_on_Time` – Delivery status (1 = Late, 0 = On Time)

---

## 🛠 SQL Queries Executed

### 1. Create Table
```sql
CREATE TABLE ecommerce_shipping (
    ID INT,
    Warehouse_block CHAR(1),
    Mode_of_Shipment VARCHAR(20),
    Customer_care_calls INT,
    Customer_rating INT,
    Cost_of_the_Product INT,
    Prior_purchases INT,
    Product_importance VARCHAR(10),
    Gender CHAR(1),
    Discount_offered INT,
    Weight_in_gms INT
);
