USE MASTER
GO

---------------------------------------------
-- ALTER DATABASE AppleDB
-- SET SINGLE_USER
-- WITH ROLLBACK IMMEDIATE;
-- GO
-- -------------------------------------------
-- ALTER DATABASE AppleDB
-- SET MULTI_USER
-- WITH ROLLBACK IMMEDIATE
-- GO
---------------------------------------------

--------------- DROP DB ---------------
IF EXISTS (
	SELECT [name]
	FROM sys.databases
	WHERE [name]=N'AppleDB'
	)
DROP DATABASE AppleDB
GO

--------------- CREATE DB ---------------
IF NOT EXISTS(
		SELECT [name]
		FROM sys.databases
		WHERE [name]=N'AppleDB'
		)
CREATE DATABASE AppleDB
GO

USE AppleDB
GO

--------------- DROP ALL TABELS ---------------
IF OBJECT_ID ('ShoppingCartProducts','U') IS NOT NULL
DROP TABLE ShoppingCartProducts
GO

IF OBJECT_ID ('ShoppingCart','U') IS NOT NULL
DROP TABLE ShoppingCart
GO

IF OBJECT_ID('ShoppingHistoryProducts','U') IS NOT NULL
DROP TABLE ShoppingHistoryProducts
GO

IF OBJECT_ID ('ShoppingHistory','U') IS NOT NULL
DROP TABLE ShoppingHistory
GO

IF OBJECT_ID ('Sales','U') IS NOT NULL
DROP TABLE Sales
GO

IF OBJECT_ID ('Users','U') IS NOT NULL
DROP TABLE Users
GO

IF OBJECT_ID('Products','U') IS NOT NULL
DROP TABLE Products
GO

IF OBJECT_ID ('MacIpadIphoneProducts','U') IS NOT NULL
DROP TABLE MacIpadIphoneProducts
GO

IF OBJECT_ID('WatchAirpodsProducts','U') IS NOT NULL
DROP TABLE WatchAirpodsProducts
GO

--------------- CREATE ALL TABLES ---------------
CREATE TABLE Users(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	fisrtName nvarchar(50) NOT NULL,
	lastName nvarchar(50) NOT NULL,
	username nvarchar(50) UNIQUE NOT NULL,
	userPassword nvarchar (50) NOT NULL,
	birthday date DEFAULT CONVERT(DATE,GETDATE(),105),
	phoneNumber nvarchar(15) NOT NULL,
	token nvarchar(200)
)

--------------- PRODUCTS TABLES ---------------
CREATE TABLE Products(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	nameProduct nvarchar(50) NOT NULL,
	category nvarchar(50) NOT NULL,
	price int NOT NULL,
	details nvarchar(1000) NOT NULL,
	pictureURL nvarchar(1000) NOT NULL,
	newFlag bit NOT NULL
)

CREATE TABLE MacIpadIphoneProducts(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	productId int FOREIGN KEY REFERENCES Products(id) NOT NULL,
	color nvarchar(50) NOT NULL,
	memory nvarchar(50) NOT NULL,
	screenSize nvarchar(50) NOT NULL
)

CREATE TABLE WatchAirpodsProducts(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	productId int FOREIGN KEY REFERENCES Products(id) NOT NULL,
	color nvarchar(50) NOT NULL
)

--------------- ADDITIONAL TABLES ---------------
CREATE TABLE Sales(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	productId int FOREIGN KEY REFERENCES Products(id) NOT NULL,
	salePrice int NOT NULL
)

CREATE TABLE ShoppingCart(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	userId int FOREIGN KEY REFERENCES Users(id) NOT NULL,
	allProductsAmount int NOT NULL,
	finalPrice int NOT NULL
)
--------------- Option B ---------------
-- CREATE TABLE ShoppingCart(
-- 	id int FOREIGN KEY REFERENCES Users(id) PRIMARY KEY NOT NULL,
-- 	amount int NOT NULL,
-- 	finalPrice int NOT NULL
-- )
---------------------------------------------

CREATE TABLE ShoppingCartProducts(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	shoppingCartId int FOREIGN KEY REFERENCES ShoppingCart(id) NOT NULL,
	productId int FOREIGN KEY REFERENCES Products(id) NOT NULL,
	productAmount int NOT NULL
)

CREATE TABLE ShoppingHistory(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	userId int FOREIGN KEY REFERENCES Users(id) NOT NULL,
	allProductsAmount int NOT NULL,
	finalPrice int NOT NULL
)

CREATE TABLE ShoppingHistoryProducts(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	shoppingHistoryId int FOREIGN KEY REFERENCES ShoppingHistory(id) NOT NULL,
	productId int FOREIGN KEY REFERENCES Products(id) NOT NULL,
	productAmount int NOT NULL
)

-- FOR SHOWING A USER'S HISTORY:
-- ShoppingHistory X ShoppingHistoryProducts X Products

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
