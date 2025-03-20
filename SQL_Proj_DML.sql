-- DML
-- INSERT

-- brands table
INSERT INTO brands (b_id, b_name) VALUES
('SAM', 'Samsung'),
('OP', 'OnePlus'),
('AP', 'Apple'),
('VO', 'Vivo'),
('MI', 'Redmi'),
('RM', 'Realme');
INSERT INTO brands (b_id, b_name) VALUES ('IQ', 'IQQUO');
--


-- user table
INSERT INTO user_details (u_id, u_name, u_email, u_contact, u_password, u_loc,created_date, modified_date) VALUES
(1, 'user1', 'user1@mail.com', '9876543212',  AES_ENCRYPT('pass1', 'welcome'), 'Andheri',default,default),
(2, 'user2',  'user2@mail.com', '9876543213', AES_ENCRYPT('pass2', 'welcome'),'Borivali',default,default),
(3, 'user3',  'user3@mail.com', '9876543214',AES_ENCRYPT('pass3', 'welcome'), 'Bandra',default,default),
(4, 'user4',  'user4@mail.com', '9876543215', AES_ENCRYPT('pass4', 'welcome'),'Mulund',default,default),
(5, 'user5',  'user5@mail.com', '9876543210',AES_ENCRYPT('pass5', 'welcome'), 'Goregaon',default,default),
(6, 'user6',  'user6@mail.com', '9876543211',AES_ENCRYPT('pass6', 'welcome'), 'Mahim',default,default),
(7, 'user7', 'user7@mail.com', '9876643112',AES_ENCRYPT('pass7', 'welcome'),  'Andheri',default,default),
(8, 'user8',  'user8@mail.com', '976543212', AES_ENCRYPT('pass8', 'welcome'),'Borivali',default,default),
(9, 'user9',  'user9@mail.com', '9876143212',AES_ENCRYPT('pass9', 'welcome'),  'Bandra',default,default),
(10, 'user10', 'user10@mail.com', '9876544212',  AES_ENCRYPT('pass10', 'welcome'), 'Mulund',default,default);

-- liked items table
INSERT INTO liked_items (like_id, like_timestamp, u_id, v_id) VALUES
(1, '2024-02-05 12:00:59', 1, 'SGS_1'),
(2, '2024-01-30 11:23:00', 2, 'OP11_1'),
(3, '2024-02-01 09:45:30', 3, 'IP14_1'),
(4, '2024-02-03 04:15:40', 4, 'VX90_1'),
(5, '2024-02-10 07:20:30', 5, 'RN6_1'),
(6, '2024-02-10 14:44:12', 5, 'RN6_2'),
(7, '2024-02-08 17:33:05', 6, 'Rl13_1'),
(8, '2024-12-21 21:50:10', 10, 'OP12_1');

select current_timestamp();

--
show variables like 'secure%';
-- 

INSERT INTO model (m_id, m_name, m_img, m_launch_date, m_battery, m_charging, m_display, m_os, m_processor, m_spec_score, b_id) VALUES
('SGS', 'Samsung Galaxy S22', 'C:\\ProgramData\\MySQL\\MySQL Server 9.1\\Uploads\\Samsung_S22.jpg', '2024-01-01 00:00:00', '4500mAh', '45W', 'Dynamic', 'One UI', 'Exynos', '8.6', 'SAM'),
('OP11', 'OnePlus 11', 'C:\\ProgramData\\MySQL\\MySQL Server 9.1\\Uploads\\OnePlus11.jpg', '2023-12-20 00:00:00', '5000mAh', '100W', 'AMOLED', 'OxygenOS', 'Snapdragon', '8.9', 'OP'),
('IP14', 'iPhone 14 Pro Max', 'C:\\ProgramData\\MySQL\\MySQL Server 9.1\\Uploads\\Iphone14promax.jpg', '2023-09-15 00:00:00', '4323mAh', '27W', 'OLED', 'iOS', 'Apple A16', '9.2', 'AP'),
('VX90', 'Vivo X90 Pro', 'C:\\ProgramData\\MySQL\\MySQL Server 9.1\\Uploads\\vivi_x90.png', '2023-11-10 00:00:00', '4870mAh', '80W', 'AMOLED', 'Funtouch', 'MediaTek', '8.4', 'VO'),
('RN6', 'Redmi Note 6 Pro', 'C:\\ProgramData\\MySQL\\MySQL Server 9.1\\Uploads\\Redminote6pro.jpg', '2023-11-15 00:00:00', '5500mAh', '80W', 'AMOLED', 'HyperOS', 'MediaTek', '8.3', 'MI'),
('Rl13', 'Realme 13 Pro+', 'C:\\ProgramData\\MySQL\\MySQL Server 9.1\\Uploads\\Realme 13 Pro.jpg', '2024-01-10 00:00:00', '6000mAh', '90W', 'OLED', 'Realme UI', 'Snapdragon', '7.9', 'RM'),
('RN7', 'Redmi Note 7 Pro', 'C:\\ProgramData\\MySQL\\MySQL Server 9.1\\Uploads\\RedmiNote7.jpg', '2024-11-15 00:00:00', '6500mAh', '80W', 'AMOLED', 'HyperOS', 'MediaTek', '8.7', 'MI'),
('OP12', 'OnePlus 12', 'C:\\ProgramData\\MySQL\\MySQL Server 9.1\\Uploads\\OnePlus12.png', '2024-12-20 00:00:00', '5500mAh', '100W', 'OLED', 'OxygenOS', 'Snapdragon', '8.9', 'OP'),
('VX80', 'Vivo X80 Pro', 'C:\\ProgramData\\MySQL\\MySQL Server 9.1\\Uploads\\vivo-x80.png', '2023-01-10 00:00:00', '4270mAh', '80W', 'AMOLED', 'Funtouch', 'MediaTek', '8.1', 'VO');
select * from model;
--
INSERT INTO store (s_id, s_name, s_url, s_desc) VALUES
(1, 'Amazon', 'www.amazon.com', 'A global online marketplace offering a wide range of products, including smartphones.'),
(2, 'Croma', 'www.croma.com', 'A leading Indian retail chain specializing in consumer electronics and gadgets.'),
(3, 'Apple Store', 'www.apple.com', 'Apple''s official store for purchasing iPhones, Macs, and other Apple products.'),
(4, 'Flipkart', 'www.flipkart.com', 'One of India''s largest e-commerce platforms, selling electronics, fashion, and more.');

INSERT INTO store (s_id, s_name, s_url, s_desc) VALUES (5, 'Vijay Sales', 'www.vijaysales.com', 'One of India''s largest e-commerce online as well as offline platforms, selling electronics');
--

INSERT INTO avl_table (a_id, a_status, qt, price, discount, last_updated, v_id, s_id) VALUES
(1, 'available', 15, 60000, 10, '2024-02-22 00:00:00', 'SGS_1', 1),
(2, 'not available', 8, 45000, 2, '2024-02-20 00:00:00', 'OP11_1', 2),
(3, 'available', 3, 140000, 4, '2024-02-19 00:00:00', 'IP14_1', 3),
(4, 'available', 6, 55000, 4, '2024-02-18 00:00:00', 'VX90_1', 4),
(5, 'available', 6, 25000, NULL, NULL, 'RN6_1', 1),
(6, 'available', 5, 28000, NULL, NULL, 'RN6_2', 1),
(7, 'not available', 0, 20000, 4, '2024-02-23 00:00:00', 'Rl13_1', 4),
(8, 'available', 5, 22000, NULL, NULL, 'Rl13_1', 1),
(9, 'available', 8, 60000, NULL, '2023-01-11 00:00:00', 'VX80_1', 2),
(10, 'not available', 3, 45000, 5, '2023-01-12 00:00:00', 'VX80_2', 4),
(11, 'available', 6, 140000, 10, '2024-11-13 00:00:00', 'RN7_1', 1),
(12, 'available', 6, 55000, 4, '2024-12-20 00:00:00', 'OP12_1', 4);

--

INSERT INTO variants (v_id, ram, rom, m_id) VALUES
('SGS_1', '8GB', '128GB', 'SGS'),
('OP11_1', '16GB', '512GB', 'OP11'),
('IP14_1', '6GB', '512GB', 'IP14'),
('VX90_1', '12GB', '256GB', 'VX90'),
('RN6_1', '8GB', '128GB', 'RN6'),
('RN6_2', '12GB', '256GB', 'RN6'),
('Rl13_1', '8GB', '128GB', 'Rl13'),
('VX80_1', '8GB', '128GB', 'VX80'),
('VX80_2', '12GB', '256GB', 'VX80'),
('RN7_1', '12GB', '256GB', 'RN7'),
('OP12_1', '16GB', '512GB', 'OP12');

--












-- tables (DQL Statements)
select * from brands;
select * from user_details;
select * from liked_items;
select * from model;
select s_id, s_name from store;
select a_id, a_status, qt, price from avl_table where a_id in(2,4,6);
select * from variants;

-- update 

update user_details set u_loc='Malad' where u_id=10;


-- delete
update  user_details set u_loc=null where u_id=5; 
delete from brands where b_id='IQ';




