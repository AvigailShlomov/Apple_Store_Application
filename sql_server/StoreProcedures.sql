USE [AppleDB]
GO

--------------- DROP ALL PROCEDURE ---------------

-- DROP PROCEDURE spAccessoriesWithSales
-- GO

-- DROP PROCEDURE spMacIpadIphoneProductsWithSales
-- GO

-- DROP PROCEDURE spWatchAirpodsProductsWithSales
-- GO

-- DROP PROCEDURE spGetUserByUsername
-- GO

-- DROP PROCEDURE spGetCartByUserId
-- GO

-- DROP PROCEDURE spGetHistoryByUserId
-- GO

---------- spAccssesoriesWithSales ----------
GO
CREATE PROCEDURE [dbo].spAccessoriesWithSales
@category VARCHAR(50)
AS
BEGIN
    SELECT P.*, S.salePrice
    FROM Products P LEFT JOIN Sales S ON P.id = S.productId
    WHERE P.category = @category
END
GO

-- EXEC spAccessoriesWithSales 'Accessories'
-- GO

-- DROP PROCEDURE spProductsWithSales
-- GO

---------- spMacIpadIphoneProductsWithSales ---------- 
GO
CREATE PROCEDURE [dbo].spMacIpadIphoneProductsWithSales
@category VARCHAR(50)
AS
BEGIN
    SELECT P.*, MIIP.color, MIIP.memory, MIIP.screenSize, S.salePrice
    FROM (Products P LEFT JOIN MacIpadIphoneProducts MIIP ON P.id = MIIP.productId) LEFT JOIN Sales S ON P.id = S.productId
    WHERE P.category = @category
END
GO

-- EXEC spMacIpadIphoneProductsWithSales 'Mac'
-- GO
-- EXEC spMacIpadIphoneProductsWithSales 'Ipad'
-- GO
-- EXEC spMacIpadIphoneProductsWithSales 'Iphone'
-- GO

-- DROP PROCEDURE spMacIpadIphoneProductsWithSales
-- GO

---------- spMacIpadIphoneProductsWithSales ---------- 

-----------------------3-----------------------
GO
CREATE PROCEDURE [dbo].[spWatchAirpodsProductsWithSales] 
@category VARCHAR(50)
AS
BEGIN
		SELECT P.*, WaP.color, S.salePrice
		FROM Products P 
			 JOIN 
			 WatchAirpodsProducts WaP ON p.id = WaP.productId
			 LEFT JOIN 
			 Sales S ON P.id = S.productId

		WHERE P.category = @category
END
GO

-- EXEC spWatchAirpodsProductsWithSales 'Watch'
-- EXEC spWatchAirpodsProductsWithSales 'Airpods'

-- DROP PROCEDURE spWatchAirpodsProductsWithSales
-- GO

---------- spGetUserByUsername ---------- 
-----------------------4-----------------------
GO
CREATE PROCEDURE [dbo].[spGetUserByUsername] 
@username VARCHAR(50), @userPassword VARCHAR(50)
AS
BEGIN
		-- we don't want the token to be in the response (only in the cookie)
		-- SELECT U.id, U.fisrtName, U.lastName, U.username, U.phoneNumber, U.token
		SELECT U.id, U.fisrtName, U.lastName, U.username, U.phoneNumber
		FROM Users U
		WHERE U.username = @username AND U.userPassword = @userPassword
END
GO

-- EXEC spGetUserByUsername 'avigailsh@gmail.com', 'AAaa11!!'

-- DROP PROCEDURE spGetUserByUsername
-- GO


---------- spGetCartByUserId ---------- 
-----------------------5-----------------------
-- ShoppingCart X ShoppingCartProducts X Products (by user id)
GO
CREATE PROCEDURE [dbo].[spGetCartByUserId] 
@userId int
AS
BEGIN
		SELECT SC.id, SC.allProductsAmount, SC.finalPrice, SCP.productAmount, SCP.productId, P.nameProduct, P.pictureURL, P.price, S.salePrice
		FROM ShoppingCart SC 
			 JOIN 
			 ShoppingCartProducts SCP ON SC.id = SCP.shoppingCartId
			 LEFT JOIN 
			 Products P ON P.id = SCP.productId
			 LEFT JOIN 
			 Sales S ON S.productId = P.id

		WHERE SC.userId = @userId
END
GO

-- EXEC spGetCartByUserId 1

-- DROP PROCEDURE spGetCartByUserId
-- GO


---------- spGetHistoryByUserId ---------- 
-----------------------6-----------------------
-- ShoppingHistory X ShoppingHistoryProducts X Products (by user id)
GO
CREATE PROCEDURE [dbo].[spGetHistoryByUserId] 
@userId int
AS
BEGIN
		SELECT SH.id, SH.allProductsAmount, SH.finalPrice, SHP.productAmount, SHP.productId, P.nameProduct, P.pictureURL, P.price, S.salePrice
		FROM ShoppingHistory SH 
			 JOIN 
			 ShoppingHistoryProducts SHP ON SH.id = SHP.shoppingHistoryId
			 LEFT JOIN 
			 Products P ON P.id = SHP.productId
			 LEFT JOIN 
			 Sales S ON S.productId = P.id

		WHERE SH.userId = @userId
END
GO

-- EXEC spGetHistoryByUserId 1

-- DROP PROCEDURE spGetHistoryByUserId
-- GO

EXEC spAccessoriesWithSales 'Accessories'
EXEC spMacIpadIphoneProductsWithSales 'Mac'
EXEC spWatchAirpodsProductsWithSales 'Airpods'
EXEC spGetUserByUsername 'avigailsh@gmail.com', 'AAaa11!!'
EXEC spGetCartByUserId 1
EXEC spGetHistoryByUserId 1







-- SELECT * FROM Users
-- SELECT * FROM Products
-- SELECT * FROM MacIpadIphoneProducts
-- SELECT * FROM WatchAirpodsProducts
-- SELECT * FROM Sales
-- SELECT * FROM ShoppingCart
-- SELECT * FROM ShoppingCartProducts
-- SELECT * FROM ShoppingHistory
-- SELECT * FROM ShoppingHistoryProducts











-- ----------------------------------------------------------------

-- --  1) creating a role
-- create role myRoleRunProcedures;

-- --  2) granting privileges to the above role
-- grant execute to myRoleRunProcedures;

-- --  3) grant the role to a user.

