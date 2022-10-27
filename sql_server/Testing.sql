-- For updates while making changes in the code --

USE AppleDB
GO

--------------- SHOW ALL THE TABLES ---------------
SELECT * FROM Users
SELECT * FROM Products
SELECT * FROM MacIpadIphoneProducts
SELECT * FROM WatchAirpodsProducts
SELECT * FROM Sales
SELECT * FROM ShoppingCart
SELECT * FROM ShoppingCartProducts
SELECT * FROM ShoppingHistory
SELECT * FROM ShoppingHistoryProducts
---------------------------------------------

--------------- After Changing Token ---------------

SELECT * FROM Users WHERE id = 1

UPDATE Users
SET token = NULL
WHERE id = 1;
GO

SELECT * FROM Users WHERE id = 1

---------------------------------------------

--------------- After Adding New User ---------------

SELECT * FROM Users WHERE id = 9

DELETE FROM Users
WHERE id = 9;
GO

SELECT * FROM Users WHERE id = 9

---------------------------------------------

--------------- After a Purchase ---------------
-- when there is a need to reset a cart --

-- 1 insert a new history shop
INSERT INTO ShoppingHistory (userId, allProductsAmount, finalPrice)
VALUES (1, 3, 1500);
GO

-- 2 insert new history products
INSERT INTO ShoppingHistoryProducts (shoppingHistoryId, productId, productAmount)
VALUES (1, 1, 2), (1, 2, 1);
GO

-- 3 delete the products of the cart
DELETE FROM ShoppingCartProducts
WHERE shoppingCartId = 1;
GO

-- 4 reset the user cart
UPDATE ShoppingCart
SET allProductsAmount = 0, finalPrice = 0
WHERE id = 1;
GO

---------------------------------------------
-- calculate the allProductsAmount of a cart
SELECT SUM(productAmount)
FROM ShoppingCartProducts
WHERE shoppingCartId = 1








