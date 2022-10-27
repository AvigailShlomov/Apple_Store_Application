USE [AppleDB]
GO

-- categories:
--         mac ='Mac',
--         ipad ='Ipad',
--         iphone ='Iphone',
--         watch ='Watch',
--         airpods ='Airpods',
--         accessories ='Accessories'

-- Colors
--     white = "White",
--     black = "Black",
--     blue = "Blue",
--     red = "Red",
--     green = "Green",
--     pink = "Pink",
--     gold = "Gold",
--     gray = "Gray",
--     silver = "Silver"

------ Insert Users ------
INSERT INTO Users VALUES
-- (fisrtName, lastName, username, userPassword, birthday, phoneNumber)
('Avigail', 'Shlomov', 'avigailsh@gmail.com', 'AAaa11!!', '1998-01-01', '0501234567', NULL),
('Ayelet', 'Daniel', 'ayeletda@gmail.com', 'AAaa11!!', '1993-06-16', '0508936107', NULL),
('Lior', 'Daniel', 'liorda@gmail.com', 'AAaa11!!', '1996-01-17', '0547223241', NULL),
('Liron', 'Daniel', 'lironda@gmail.com', 'AAaa11!!', '2001-04-01', '0547223240', NULL),
('Avi', 'Cohen', 'avico@gmail.com', 'AAaa11!!', '1986-09-12', '0507654321', NULL),
('Shir', 'Levi', 'shirle@gmail.com', 'AAaa11!!', '1992-05-20', '0546264666', NULL),
('Ariel', 'Cohen', 'arielco@gmail.com', 'AAaa11!!', '1990-05-11', '0507654321', NULL),
('Orly', 'Refaeli', 'orlyre@gmail.com', 'AAaa11!!', '1972-01-23', '0507654321', NULL);
GO
SELECT * FROM Users

------ Insert Products ------
INSERT INTO Products VALUES
-----------------
---- iPhones ----
-----------------
-- iphone ids (1-24)
-- (nameProduct, category, price, details, pictureURL, newFlag)
('iPhone 8 plus', 'Iphone', 500, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://mobileclinic.co.il/wp-content/uploads/2018/04/iphone8-gold-select-2017.jpeg', 0),
('iPhone 8 plus', 'Iphone', 500, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://img.zap.co.il/pics/7/7/1/4/66274177c.gif', 0),
('iPhone 8 plus', 'Iphone', 500, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQfoNcNV6YYsIqsG_72TboS8a79pn53SLvuGN6vhC3FQl__XLMGHwPGzRQolBag1s99ys&usqp=CAU', 0),
-- different colors, memory, size
('iPhone 8', 'Iphone', 450, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://img.zap.co.il/6/9/8/1/65801896c.gif', 0),
('iPhone 8', 'Iphone', 450, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://d3m9l0v76dty0.cloudfront.net/system/photos/9546014/large/de0ef9f0acc8897f493275e805c0faf5.png', 0),
('iPhone 8', 'Iphone', 450, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://img.zap.co.il/pics/7/7/1/4/66274177c.gif', 0),
--
('iPhone 11', 'Iphone', 550, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://d3m9l0v76dty0.cloudfront.net/system/photos/9188678/large/acb73c66c9e7622debfb34f93ef91ad3.jpg', 0),
('iPhone 11', 'Iphone', 550, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://cdn.alloallo.media/catalog/product/apple/iphone/iphone-x/iphone-x-silver.jpg', 0),
('iPhone 11', 'Iphone', 550, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://mobileclinic.co.il/wp-content/uploads/2018/04/iphone8-gold-select-2017.jpeg', 0),
--
('iPhone 12', 'Iphone', 600, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://img.zap.co.il/6/9/8/1/65801896c.gif', 0),
('iPhone 12', 'Iphone', 600, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://d3m9l0v76dty0.cloudfront.net/system/photos/9546014/large/de0ef9f0acc8897f493275e805c0faf5.png', 0),
('iPhone 12', 'Iphone', 600, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQfoNcNV6YYsIqsG_72TboS8a79pn53SLvuGN6vhC3FQl__XLMGHwPGzRQolBag1s99ys&usqp=CAU', 0),
--
('iPhone SE', 'Iphone', 650, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://media.istoreil.co.il/57482e8d-29d5-4d9f-84d5-bd696304a4e0/https://www.istoreil.co.il/media/wysiwyg/2022/compare/march/iphone/compare_iphone_12.png/f_auto', 1),
('iPhone SE', 'Iphone', 650, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://img.zap.co.il/pics/7/7/1/4/66274177c.gif', 1),
('iPhone SE', 'Iphone', 650, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://cdn.alloallo.media/catalog/product/apple/iphone/iphone-x/iphone-x-silver.jpg', 1),
--
('iPhone 13 mini', 'Iphone', 700, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://d3m9l0v76dty0.cloudfront.net/system/photos/9546014/large/de0ef9f0acc8897f493275e805c0faf5.png', 1),
('iPhone 13 mini', 'Iphone', 700, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://mobileclinic.co.il/wp-content/uploads/2018/04/iphone8-gold-select-2017.jpeg', 1),
('iPhone 13mini ', 'Iphone', 700, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://www.imgshop.co.il/images/itempics/IPHO3334345N04E1432_13112021233030_large.jpg', 1),
--
('iPhone 13', 'Iphone', 750, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://d3m9l0v76dty0.cloudfront.net/system/photos/9188678/large/acb73c66c9e7622debfb34f93ef91ad3.jpg', 1),
('iPhone 13', 'Iphone', 750, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://mobileclinic.co.il/wp-content/uploads/2018/04/iphone8-gold-select-2017.jpeg', 1),
('iPhone 13', 'Iphone', 750, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://d3m9l0v76dty0.cloudfront.net/system/photos/9546014/large/de0ef9f0acc8897f493275e805c0faf5.png', 1),
--
('iPhone 13 pro', 'Iphone', 800, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://img.zap.co.il/6/9/8/1/65801896c.gif', 1),
('iPhone 13 pro', 'Iphone', 800, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://www.imgshop.co.il/images/itempics/IPHO3334345N04E1432_13112021233030_large.jpg', 1),
('iPhone 13 pro', 'Iphone', 800, 'iPhone takes a huge leap forward, bringing incredible speed to everything you do and dramatic new photo and video capabilities — all in two great sizes.', 'https://d3m9l0v76dty0.cloudfront.net/system/photos/9546014/large/de0ef9f0acc8897f493275e805c0faf5.png', 1),
-----------------
----- iPads -----
-----------------
-- ipad ids (25-40)
('iPad mini', 'Ipad', 700, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-mini-select-202109?wid=1080&hei=1060&fmt=jpeg&qlt=90&.v=1631751017000', 0),
('iPad mini', 'Ipad', 700, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-2021-hero-silver-wifi-select?wid=940&hei=1112&fmt=png-alpha&.v=1631308880000', 0),
('iPad mini', 'Ipad', 700, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-mini-select-wifi-purple-202109?wid=940&hei=1112&fmt=png-alpha&.v=1629840735000', 0),
('iPad mini', 'Ipad', 700, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-air-select-202203?wid=3530&hei=4000&fmt=jpeg&qlt=90&.v=1645665079887', 0),
--
('iPad', 'Ipad', 800, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-12-11-select-202104?wid=1090&hei=1100&fmt=jpeg&qlt=90&.v=1617067380000', 0),
('iPad', 'Ipad', 800, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-air-select-wifi-spacegray-202203?wid=940&hei=1112&fmt=png-alpha&.v=1645066742664', 0),
('iPad', 'Ipad', 800, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-2021-hero-silver-wifi-select?wid=940&hei=1112&fmt=png-alpha&.v=1631308880000', 0),
('iPad', 'Ipad', 800, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-mini-select-wifi-purple-202109?wid=940&hei=1112&fmt=png-alpha&.v=1629840735000', 0),
--
('iPad Air', 'Ipad', 900, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-11-select-202104?wid=970&amp;hei=1020&amp;fmt=png-alpha&amp;.v=1617067379000', 1),
('iPad Air', 'Ipad', 900, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-mini-select-202109?wid=1080&hei=1060&fmt=jpeg&qlt=90&.v=1631751017000', 1),
('iPad Air', 'Ipad', 900, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-mini-select-wifi-purple-202109?wid=940&hei=1112&fmt=png-alpha&.v=1629840735000', 1),
('iPad Air', 'Ipad', 900, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-mini-select-wifi-purple-202109?wid=940&hei=1112&fmt=png-alpha&.v=1629840735000', 1),
--
('iPad Pro', 'Ipad', 950, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-air-select-202203?wid=3530&hei=4000&fmt=jpeg&qlt=90&.v=1645665079887', 0),
('iPad Pro', 'Ipad', 950, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-12-11-select-202104?wid=1090&hei=1100&fmt=jpeg&qlt=90&.v=1617067380000', 0),
('iPad Pro', 'Ipad', 950, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-air-select-wifi-spacegray-202203?wid=940&hei=1112&fmt=png-alpha&.v=1645066742664', 0),
('iPad Pro', 'Ipad', 950, 'iPad is so versatile, it’s more than up to any task. Whether you’re working on a project, expressing your creativity, or playing an immersive game, iPad is a fun and powerful way to get it done. Here are just a few of the countless things you can do with iPad.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-11-select-202104?wid=970&amp;hei=1020&amp;fmt=png-alpha&amp;.v=1617067379000', 0),
-----------------
------ Mac ------
-----------------
-- mac ids (41-52)
('Mac Pro', 'Mac', 1500, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-gold-select-201810?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1633027804000', 0),
('Mac Pro', 'Mac', 1500, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp14-spacegray-select-202110?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1632788573000', 0),
--
('Mac Studio', 'Mac', 1600, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp14-silver-select-202110?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1632788573000', 0),
('Mac Studio', 'Mac', 1600, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/imac-24-blue-selection-hero-202104?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1617492405000', 0),
--
('Mac mini', 'Mac', 1700, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/imac-24-pink-selection-hero-202104?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1617492407000', 0),
('Mac mini', 'Mac', 1700, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-gold-select-201810?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1633027804000', 0),
--
('iMac', 'Mac', 1800, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp-spacegray-select-202206?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1653493200207', 0),
('iMac', 'Mac', 1800, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp14-spacegray-select-202110?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1632788573000', 0),
--
('MacBook Pro', 'Mac', 1900, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/imac-24-blue-selection-hero-202104?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1617492405000', 1),
('MacBook Pro', 'Mac', 1900, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/imac-24-pink-selection-hero-202104?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1617492407000', 1),
--
('MacBook Air', 'Mac', 2000, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp14-silver-select-202110?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1632788573000', 1),
('MacBook Air', 'Mac', 2000, 'Redesigned around the next-generation M2 chip, MacBook Air is strikingly thin and brings exceptional speed and power efficiency within its durable all‑aluminum enclosure. It’s the ultrafast, ultracapable laptop that lets you work, play, or create just about anything — anywhere.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp-spacegray-select-202206?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1653493200207', 1),
-----------------
----- Watch -----
-----------------
-- watche ids (53-63)
('Apple Watch Series 7', 'Watch', 700, 'Apple Watch can do what your other devices can’t because it’s on your wrist. When you wear it, you get a fitness partner that measures all the ways you move, meaningful health insights, and a connection to the people and things you care about most. And it’s always just a glance away.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/watch-41-stainless-silver-cell-7s_VW_PF_WF_SI+watch-face-40-se-sportloop-pride_VW_PF_WF_SI?wid=1000&hei=1000&fmt=png-alpha&.v=1631661430000%2C1653596580965', 1),
('Apple Watch Series 7', 'Watch', 700, 'Apple Watch can do what your other devices can’t because it’s on your wrist. When you wear it, you get a fitness partner that measures all the ways you move, meaningful health insights, and a connection to the people and things you care about most. And it’s always just a glance away.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MN6L3_VW_34FR+watch-45-stainless-silver-cell-7s_VW_34FR_WF_CO+watch-face-44-se-sportloop-pride_VW_34FR_WF_CO?wid=750&hei=712&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1651955698925%2C1652022774025%2C1651956727475', 1),
--
('Apple Watch SE', 'Watch', 500, 'Apple Watch can do what your other devices can’t because it’s on your wrist. When you wear it, you get a fitness partner that measures all the ways you move, meaningful health insights, and a connection to the people and things you care about most. And it’s always just a glance away.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MN1L3ref_VW_34FR+watch-44-alum-silver-nc-se_VW_34FR_WF_CO?wid=750&hei=712&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1645128544617%2C1630708651000', 0),
('Apple Watch SE', 'Watch', 500, 'Apple Watch can do what your other devices can’t because it’s on your wrist. When you wear it, you get a fitness partner that measures all the ways you move, meaningful health insights, and a connection to the people and things you care about most. And it’s always just a glance away.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MN7N3_VW_34FR+watch-41-stainless-silver-cell-hermes7s_VW_34FR_WF_CO?wid=750&hei=712&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1645225691988%2C1631662309000', 0),
--
('Apple Watch Series 3', 'Watch', 400, 'Apple Watch can do what your other devices can’t because it’s on your wrist. When you wear it, you get a fitness partner that measures all the ways you move, meaningful health insights, and a connection to the people and things you care about most. And it’s always just a glance away.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MN6L3_VW_34FR+watch-45-stainless-silver-cell-7s_VW_34FR_WF_CO+watch-face-44-se-sportloop-pride_VW_34FR_WF_CO?wid=750&hei=712&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1651955698925%2C1652022774025%2C1651956727475', 0),
('Apple Watch Series 3', 'Watch', 400, 'Apple Watch can do what your other devices can’t because it’s on your wrist. When you wear it, you get a fitness partner that measures all the ways you move, meaningful health insights, and a connection to the people and things you care about most. And it’s always just a glance away.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MN7N3_VW_34FR+watch-41-stainless-silver-cell-hermes7s_VW_34FR_WF_CO?wid=750&hei=712&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1645225691988%2C1631662309000', 0),
('Apple Watch Series 3', 'Watch', 400, 'Apple Watch can do what your other devices can’t because it’s on your wrist. When you wear it, you get a fitness partner that measures all the ways you move, meaningful health insights, and a connection to the people and things you care about most. And it’s always just a glance away.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/watch-41-stainless-silver-cell-7s_VW_PF_WF_SI+watch-face-40-se-sportloop-pride_VW_PF_WF_SI?wid=1000&hei=1000&fmt=png-alpha&.v=1631661430000%2C1653596580965', 0),
('Apple Watch Series 3', 'Watch', 400, 'Apple Watch can do what your other devices can’t because it’s on your wrist. When you wear it, you get a fitness partner that measures all the ways you move, meaningful health insights, and a connection to the people and things you care about most. And it’s always just a glance away.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MN1L3ref_VW_34FR+watch-44-alum-silver-nc-se_VW_34FR_WF_CO?wid=750&hei=712&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1645128544617%2C1630708651000', 0),
--
('Apple Watch Hermès', 'Watch', 500, 'The Apple Watch Hermès partnership is founded on a shared heritage of design and innovation. From the material of the bands to the etching of the cases to exclusive watch faces, every aspect is crafted with incredible attention to detail. The latest collection introduces refreshing new colorways inspired by the season.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MKFV3_VW_34FR+watch-41-stainless-silver-cell-hermes7s_VW_34FR_WF_CO+watch-face-41-hermes7s-gold_VW_34FR_WF_CO?wid=750&hei=712&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1631657263000%2C1631662309000%2C1631663816000', 0),
('Apple Watch Hermès', 'Watch', 500, 'The exclusive Hermès Sport Band. Light, flexible, and water resistant, the Sport Band in signature Hermès orange is perfect for exercising. Included as an additional band with every Apple Watch Hermès silver stainless steel case. And space black stainless steel cases come with a matching black Hermès Sport Band.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MN7T3_VW_34FR+watch-41-stainless-spaceblack-cell-hermes7s_VW_34FR_WF_CO?wid=750&hei=712&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1645225701280%2C1631662313000', 0),
--
('Apple Watch Nike', 'Watch', 600, 'Apple Watch can do what your other devices can’t because it’s on your wrist. When you wear it, you get a fitness partner that measures all the ways you move, meaningful health insights, and a connection to the people and things you care about most. And it’s always just a glance away.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MN7N3_VW_34FR+watch-41-stainless-silver-cell-hermes7s_VW_34FR_WF_CO?wid=750&hei=712&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1645225691988%2C1631662309000', 1),
-----------------
---- Airpods ----
-----------------
-- airpod ids (64-71)
('AirPods 2nd generation', 'Airpods', 130, 'Powered by the Apple H1 headphone chip, AirPods deliver a faster and more stable wireless connection to your devices — up to 2x faster when switching between active devices,3 and a 1.5x faster connection time for phone calls.4 The H1 chip also drives voice-enabled Siri access and delivers up to 30 percent lower gaming latency.5 So whether you’re playing games, listening to music, or enjoying podcasts, you’ll experience higher-quality sound.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MME73?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1632861342000', 0),
--
('AirPods 3rd generation', 'Airpods', 180, 'Powered by the Apple H1 headphone chip, AirPods deliver a faster and more stable wireless connection to your devices — up to 2x faster when switching between active devices,3 and a 1.5x faster connection time for phone calls.4 The H1 chip also drives voice-enabled Siri access and delivers up to 30 percent lower gaming latency.5 So whether you’re playing games, listening to music, or enjoying podcasts, you’ll experience higher-quality sound.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MWP22_AV1?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1591634652000', 0),
--
('AirPods Pro', 'Airpods', 250, 'Powered by the Apple H1 headphone chip, AirPods deliver a faster and more stable wireless connection to your devices — up to 2x faster when switching between active devices,3 and a 1.5x faster connection time for phone calls.4 The H1 chip also drives voice-enabled Siri access and delivers up to 30 percent lower gaming latency.5 So whether you’re playing games, listening to music, or enjoying podcasts, you’ll experience higher-quality sound.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MWP22_AV4_GEO_US?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1604112691000', 1),
--
('AirPods Max', 'Airpods', 550, 'Introducing AirPods Max — a perfect balance of exhilarating high-fidelity audio and the effortless magic of AirPods. The ultimate personal listening experience is here.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airpods-max-select-spacegray-202011?wid=940&hei=1112&fmt=png-alpha&.v=1604709508000', 1),
('AirPods Max', 'Airpods', 550, 'Introducing AirPods Max — a perfect balance of exhilarating high-fidelity audio and the effortless magic of AirPods. The ultimate personal listening experience is here.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airpods-max-hero-select-202011?wid=940&hei=1112&fmt=jpeg&qlt=90&.v=1604709293000', 1),
('AirPods Max', 'Airpods', 550, 'Introducing AirPods Max — a perfect balance of exhilarating high-fidelity audio and the effortless magic of AirPods. The ultimate personal listening experience is here.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MME73?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1632861342000', 1),
('AirPods Max', 'Airpods', 550, 'Introducing AirPods Max — a perfect balance of exhilarating high-fidelity audio and the effortless magic of AirPods. The ultimate personal listening experience is here.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airpods-max-select-skyblue-202011?wid=940&hei=1112&fmt=png-alpha&.v=1604022365000', 1),
('AirPods Max', 'Airpods', 550, 'Introducing AirPods Max — a perfect balance of exhilarating high-fidelity audio and the effortless magic of AirPods. The ultimate personal listening experience is here.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airpods-max-select-pink-202011?wid=940&hei=1112&fmt=png-alpha&.v=1604022365000', 1),
-------------------
--- Accessories ---
-------------------
-- accessories (72-79)
('Magic Keyboard', 'Accessories', 200, 'Magic Keyboard is available with Touch ID, providing fast, easy, and secure authentication for logins and purchases. Magic Keyboard with Touch ID and Numeric Keypad delivers a remarkably comfortable and precise typing experience. It features an extended layout, with document navigation controls for quick scrolling and full-size arrow keys, which are great for gaming. The numeric keypad is also ideal for spreadsheets and finance applications', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MMMR3?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1645719947833', 1),
('Air Tag', 'Accessories', 30, 'AirTag is an easy way to keep track of your stuff. Attach one to your keys, slip another one in your backpack. And just like that, they’re on your radar in the Find My app. AirTag has your back.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airtag-4pack-select-202104_FV1?wid=890&hei=740&fmt=jpeg&qlt=90&.v=1617761668000', 1),
('Apple Pencil', 'Accessories', 90, 'Apple Pencil expands the power of iPad and opens up new creative possibilities. It’s sensitive to pressure and tilt so you can easily vary line weight, create subtle shading and produce a wide range of artistic effects — just like a conventional pencil, but with pixel-perfect precision.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MK0C2_AV1?wid=1144&hei=1144&fmt=jpeg&qlt=95&.v=1599283363000', 1),
('Smart Folio', 'Accessories', 80, 'The Smart Folio for iPad Air is thin and light and offers front and back protection for your device. It automatically wakes your iPad when opened and puts it to sleep when closed. The Smart Folio attaches magnetically, and you can easily fold it into different positions to create a stand for reading, viewing, typing, or making FaceTime calls.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MNA63?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1645642314258', 1),
('Siri Remote', 'Accessories', 60, 'The Innovelis TotalMount Pro Max includes everything you need to ensure a smooth Apple TV installation experience. The TotalMount Pro attaches Apple TV to the back of your television, providing direct access to its HDMI port. The included remote holder not only safeguards your Siri Remote, but also charges it from your televisions USB port. Also included are two cable management units to organize your Apple TV power and HDMI cables, keeping them from peeking out from behind your TV.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/HPSR2?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1639493881000', 0),
('Cable', 'Accessories', 20, 'We wanted to make charging your Apple Watch utterly effortless. And now, it charges up to 33% faster when paired with Apple Watch Series 7, so you can reach 80% charge in about 45 minutes.¹ Simply hold the connector near the back of the watch, where magnets cause it to snap into place automatically. It’s a completely sealed system free of exposed contacts. And it’s very forgiving, requiring no precise alignment.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MLWJ3?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1630029877000', 1),
('Adapter', 'Accessories', 70, 'The USB-C Digital AV Multiport Adapter lets you connect your USB-C-enabled Mac or iPad to an HDMI display, while also connecting a standard USB device and a USB-C charging cable. This adapter allows you to mirror your Mac or iPad display to your HDMI-enabled TV or display.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MUF82?wid=1144&hei=1144&fmt=jpeg&qlt=95&.v=1590526633000', 0),
('Magic Mouse', 'Accessories', 100, 'Magic Mouse is wireless and rechargeable, with an optimized foot design that lets it glide smoothly across your desk. The Multi-Touch surface allows you to perform simple gestures such as swiping between web pages and scrolling through documents.', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MMMQ3?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1645138486301', 1);
GO
SELECT * FROM Products
------------------------------------

------ Insert Sales ------
INSERT INTO Sales VALUES
-- (productId, salePrice)
(3, 450),
(6, 400),
(11, 530),
(14, 580),
(15, 620),
(17, 500),
(23, 700),
(27, 500),
(30, 600),
(33, 600),
(40, 900),
(41, 1300),
(45, 1300),
(53, 600),
(56, 400),
(62, 450),
(66, 200),
(73, 20),
(77,15);
Go
SELECT * FROM Sales

-- Colors
--     white = "White",
--     black = "Black",
--     blue = "Blue",
--     red = "Red",
--     green = "Green",
--     pink = "Pink",
--     gold = "Gold",
--     gray = "Gray",
--     silver = "Silver"

------ Insert MacIpadIphoneProducts ------
-- (productId, color, memory, screenSize)
INSERT INTO MacIpadIphoneProducts VALUES
-- iphones (1-24)
(1, 'Pink', '256GB', '7inch'),
(2, 'White', '512GB', '7inch'),
(3, 'Blue', '256GB', '7inch'),
(4, 'Blue', '512GB', '7inch'),
(5, 'Pink', '256GB', '7inch'),
(6, 'Green', '512GB', '7inch'),
(7, 'Blue', '512GB', '7inch'),
(8, 'White', '256GB', '7inch'),
(9, 'Black', '512GB', '7inch'),
(10, 'Pink', '256GB', '7inch'),
(11, 'Black', '512GB', '7inch'),
(12, 'Red', '256GB', '7inch'),
(13, 'White', '512GB', '7inch'),
(14, 'Blue', '256GB', '7inch'),
(15, 'Green', '256GB', '7inch'),
(16, 'Pink', '512GB', '7inch'),
(17, 'White', '256GB', '7inch'),
(18, 'Pink', '512GB', '7inch'),
(19, 'Red', '512GB', '7inch'),
(20, 'Green', '256GB', '7inch'),
(21, 'White', '512GB', '7inch'),
(22, 'Blue', '256GB', '7inch'),
(23, 'Pink', '256GB', '7inch'),
(24, 'Green', '512GB', '7inch'),
-- ipads (25-40)
(25, 'Gold', '256GB', '10inch'),
(26, 'Gray', '512GB', '10inch'),
(27, 'Silver', '256GB', '10inch'),
(28, 'Gray', '256GB', '10inch'),
(29, 'Silver', '512GB', '10inch'),
(30, 'Gold', '256GB', '10inch'),
(31, 'Gray', '512GB', '11inch'),
(32, 'Silver', '256GB', '10inch'),
(33, 'Gold', '256GB', '10inch'),
(34, 'Gray', '512GB', '11inch'),
(35, 'Gold', '512GB', '11inch'),
(36, 'Gold', '256GB', '10inch'),
(37, 'Gray', '512GB', '11inch'),
(38, 'Silver', '512GB', '11inch'),
(39, 'Gold', '256GB', '11inch'),
(40, 'Gold', '512GB', '11inch'),
-- mac (41-52)
(41, 'Gray', '512GB', '14inch'),
(42, 'Silver', '1T', '16inch'),
(43, 'Silver', '512GB', '16inch'),
(44, 'Gray', '512GB', '16inch'),
(45, 'Gray', '1T', '16inch'),
(46, 'Silver', '1T', '16inch'),
(47, 'Gray', '512GB', '14inch'),
(48, 'Silver', '512GB', '14inch'),
(49, 'Silver', '1T', '16inch'),
(50, 'Gray', '512GB', '14inch'),
(51, 'Gray', '1T', '16inch'),
(52, 'Silver', '512GB', '14inch');
GO
SELECT * FROM MacIpadIphoneProducts


------ Insert WatchAirpodsProducts ------
-- (productId, color)
INSERT INTO WatchAirpodsProducts VALUES
-- watches (53-63)
(53, 'Black'),
(54, 'White'),
(55, 'Black'),
(56, 'Red'),
(57, 'Silver'),
(58, 'White'),
(59, 'Gold'),
(60, 'White'),
(61, 'Pink'),
(62, 'Blue'),
(63, 'Gray'),
-- airpods (64-71)
(64, 'White'),
(65, 'White'),
(66, 'White'),
(67, 'Gray'),
(68, 'Silve'),
(69, 'Green'),
(70, 'Pink'),
(71, 'Blue');
-- accessories (72-79)
GO
SELECT * FROM WatchAirpodsProducts


------ Insert ShoppingCart ------
-- (userId, allProductsAmount, finalPrice)
INSERT INTO ShoppingCart VALUES
(1, 4, 4050),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0);
GO
SELECT * FROM ShoppingCart


------ Insert ShoppingCartProducts ------
-- (shoppingCartId, productId, productAmount)
INSERT INTO ShoppingCartProducts VALUES
(1, 43, 1),
(1, 3, 1),
(1, 48, 1),
(1, 72, 1);
GO
SELECT * FROM ShoppingCartProducts


------ Insert ShoppingHistory ------
-- (userId, allProductsAmount, finalPrice)
INSERT INTO ShoppingHistory VALUES
(1, 2, 2250),
(1, 1, 1600),
(2, 1, 200);
GO
SELECT * FROM ShoppingHistory


------ Insert ShoppingHistoryProducts ------
-- (shoppingCartId, productId, productAmount)
INSERT INTO ShoppingHistoryProducts VALUES
(1, 3, 1),
(1, 48, 1),
(2, 43, 1),
(3, 72, 1);
GO
SELECT * FROM ShoppingHistoryProducts






-- DELETE FROM ShoppingCart WHERE id = 1



