-- CREATE DATABASE market_basket;
-- USE market_basket;
-- CREATE TABLE transactions (
--     InvoiceNo INT,
--     StockCode VARCHAR(50),
--     Description VARCHAR(500),
--     Quantity INT,
--     InvoiceDate VARCHAR(50),
--     UnitPrice DECIMAL(10,2),
--     CustomerID INT,
--     Country VARCHAR(100)
-- );


-- SELECT COUNT(*) FROM transactions;
-- SELECT * FROM transactions LIMIT 5;


-- CREATE TABLE transactions_clean AS
-- SELECT
--     InvoiceNo AS order_id,
--     Description AS product_name
-- FROM transactions
-- WHERE Quantity > 0
--   AND Description IS NOT NULL;


-- SELECT
--     order_id,
--     GROUP_CONCAT(product_name) AS basket
-- FROM transactions_clean
-- GROUP BY order_id;


-- CREATE VIEW order_baskets AS
-- SELECT
--     order_id,
--     GROUP_CONCAT(product_name) AS basket
-- FROM transactions_clean
-- GROUP BY order_id;


SELECT COUNT(*) FROM order_baskets;
SELECT * FROM order_baskets LIMIT 10;






