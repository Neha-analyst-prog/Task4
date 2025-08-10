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

INSERT INTO ecommerce_shipping VALUES
(1, 'D', 'Flight', 4, 2, 177, 3, 'low', 'F', 44, 1233),
(2, 'F', 'Flight', 4, 5, 216, 2, 'low', 'M', 59, 3088),
(3, 'A', 'Flight', 2, 2, 183, 4, 'low', 'M', 48, 3374),
(4, 'B', 'Flight', 3, 3, 176, 4, 'medium', 'M', 10, 1177),
(5, 'C', 'Flight', 2, 2, 184, 3, 'medium', 'F', 46, 2484),
(6, 'F', 'Flight', 3, 1, 162, 3, 'medium', 'F', 12, 1417),
(7, 'D', 'Flight', 3, 4, 250, 3, 'low', 'F', 3, 2371),
(8, 'F', 'Flight', 4, 1, 233, 2, 'low', 'F', 48, 2804),
(9, 'A', 'Flight', 3, 4, 150, 3, 'low', 'F', 11, 1861),
(10, 'B', 'Flight', 3, 2, 164, 3, 'medium', 'F', 29, 1187),
(11, 'C', 'Flight', 3, 4, 189, 2, 'medium', 'M', 12, 2888),
(12, 'F', 'Flight', 4, 5, 232, 3, 'medium', 'F', 32, 3253),
(13, 'D', 'Flight', 3, 5, 198, 3, 'medium', 'F', 1, 3667),
(14, 'F', 'Flight', 4, 4, 275, 3, 'high', 'M', 29, 2602);

SELECT * 
FROM ecommerce_shipping
WHERE Mode_of_Shipment = 'Flight';

SELECT Gender, COUNT(*) AS total_orders
FROM ecommerce_shipping
GROUP BY Gender;

SELECT AVG(Cost_of_the_Product) AS avg_cost
FROM ecommerce_shipping;

SELECT ID, Cost_of_the_Product
FROM ecommerce_shipping
WHERE Cost_of_the_Product > (
    SELECT AVG(Cost_of_the_Product) FROM ecommerce_shipping
);

CREATE VIEW high_cost_orders AS
SELECT * 
FROM ecommerce_shipping
WHERE Cost_of_the_Product > 200;

