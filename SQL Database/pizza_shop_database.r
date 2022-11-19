-- Restaurant Owner
-- 5 Table
-- 1x Fact, 4 Dimension
--search google, how to add foreign key
-- write SQL 3 Queries analyze data
-- 1x subquery/ with

CREATE TABLE bill (
  bill_id INT PRIMARY KEY,
  order_id INT,
  member_id INT,
  branch_id INT,
  payment_id INT,
  order_date date,
  status TEXT,
  FOREIGN KEY (member_id) REFERENCES member(member_id),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (payment_id) REFERENCES payment(payment_id),
  FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);

INSERT INTO bill VALUES
(01, 01, 'R11', 01, 'P01', '2022-08-01', 'Here'),
(02, 02, 'R02', 02, 'P02', '2022-08-01', 'Take away'),
(03, 03, 'R01', 01, 'P03', '2022-08-01', 'Here'),
(04, 04, 'R03', 01, 'P04', '2022-08-01', 'Here'),
(05, 05, 'R07', 02, 'P05', '2022-08-01', 'Take away'),
(06, 06,'R05', 01, 'P06', '2022-08-01', 'Take away'),
(07, 07, 'R08', 01, 'P07', '2022-08-02', 'Here'),
(08, 08, 'R15', 02, 'P08', '2022-08-02', 'Here'),
(09, 09, 'R03', 01, 'P09', '2022-08-02', 'Here'),
(10, 10, 'R10', 01, 'P10', '2022-08-02', 'Take away'),
(11, 11, 'R04', 01, 'P11', '2022-08-02', 'Here'),
(12, 12, 'R06', 02, 'P12', '2022-08-02', 'Take away'),
(13, 13, 'R14', 01, 'P13', '2022-08-03', 'Here'),
(14, 14, 'R02', 02, 'P14', '2022-08-03', 'Here'),
(15, 15, 'R03', 01, 'P15', '2022-08-03', 'Here'),
(16, 16, 'R13', 01, 'P16', '2022-08-03', 'Here'),
(17, 17, 'R01', 02, 'P17', '2022-08-03', 'Take away'),
(18, 18, 'R07', 02, 'P18', '2022-08-03', 'Here'),
(19, 19, 'R12', 02, 'P19', '2022-08-03', 'Here'),
(20, 20, 'R09', 01, 'P20', '2022-08-03', 'Take away');

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  order_no INT,
  order_item INT,
  quantity INT,
  FOREIGN KEY (order_item) REFERENCES item(order_item)
);

INSERT INTO orders VALUES
(01, 01, 001, 1),
(02, 01, 004, 1),
(03, 02, 002, 2),
(04, 02, 005, 2),
(05, 02, 006, 1),
(06, 03, 001, 1),
(07, 03, 002, 1),
(08, 03, 004, 2),
(09, 04, 005, 2),
(10, 04, 006, 1),
(11, 05, 001, 2),
(12, 06, 002, 1),
(13, 06, 003, 2),
(14, 07, 001, 2),
(15, 07, 003, 1),
(16, 07, 004, 1),
(17, 07, 005, 1),
(18, 07, 006, 1),
(19, 08, 002, 1),
(20, 08, 004, 1),
(21, 09, 001, 2),
(22, 09, 003, 2),
(23, 09, 005, 4),
(24, 09, 006, 2),
(25, 10, 002, 3),
(26, 10, 003, 1),
(27, 11, 001, 2),
(28, 11, 003, 1),
(29, 11, 005, 3),
(30, 12, 002, 1),
(31, 12, 003, 1),
(32, 13, 002, 1),
(33, 13, 005, 1),
(34, 14, 001, 1),
(35, 14, 002, 1),
(36, 14, 003, 1),
(37, 14, 004, 2),
(38, 15, 001, 2),
(39, 15, 003, 2),
(40, 15, 004, 1),
(41, 15, 005, 3),
(42, 15, 006, 2),
(43, 16, 003, 2),
(44, 16, 005, 2),
(45, 17, 002, 3),
(46, 18, 002, 1),
(47, 18, 004, 1),
(48, 19, 002, 2),
(49, 19, 003, 1),
(50, 19, 004, 1),
(51, 19, 005, 2),
(52, 20, 001, 1),
(53, 20, 003, 2),
(54, 20, 005, 3),
(55, 20, 006, 1);

CREATE TABLE payment (
  payment_id TEXT PRIMARY KEY,
  payment_type TEXT,
  amount_paid REAL
);

INSERT INTO payment VALUES
('P01', 'cash', 270),
('P02', 'credit card', 850),
('P03', 'e-wallet', 640),
('P04', 'e-wallet', 150),
('P05', 'cash', 500),
('P06', 'cash', 890),
('P07', 'e-wallet', 890),
('P08', 'cash', 370),
('P09', 'e-wallet', 1340),
('P10', 'cash', 1320),
('P11', 'credit card', 920),
('P12', 'credit card', 620),
('P13', 'e-wallet', 400),
('P14', 'cash', 910),
('P15', 'credit card', 1310),
('P16', 'cash', 640),
('P17', 'credit card', 1050),
('P18', 'e-wallet', 370),
('P19', 'cash', 1090),
('P20', 'cash', 990);

CREATE TABLE member (
  member_id TEXT PRIMARY KEY,
  firstname TEXT,
  lastname TEXT,
  gender TEXT,
  age INT,
  awareness_channel TEXT
);

INSERT INTO member VALUES
('R01', 'Liam', 'Abbot', 'male', 26, 'Ads'),
('R02', 'Easton', 'Fowler', 'male', 37, 'WOM'),
('R03', 'Zoe', 'Hardy', 'female', 18, 'Social media'),
('R04', 'Alice', 'Kidman', 'female', 43, 'Ads'),
('R05', 'Benjamin', 'Jones', 'male', 33, 'Social media'),
('R06', 'Eli', 'Mendes', 'male', 26, 'Social media'),
('R07', 'Mary', 'Leeves', 'female', 26, 'Ads'),
('R08', 'Aaron', 'Kaiser', 'male', 26, 'WOM'),
('R09', 'Thomas', 'Kelly', 'male', 26, 'Ads'),
('R10', 'Iris', 'Nelson', 'female', 26, 'WOM'),
('R11', 'Josiah', 'Paulson', 'male', 26, 'Social media'),
('R12', 'Summer', 'Stark', 'female', 26, 'Ads'),
('R13', 'Daniela', 'Villiers', 'female', 26, 'Ads'),
('R14', 'Diego', 'Wesley', 'male', 26, 'WOM'),
('R15', 'Kayla', 'Plummer', 'female', 26, 'WOM');

CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  location TEXT
);

INSERT INTO branch VALUES
(01, 'Bangna'),
(02, 'Sathon');

CREATE TABLE item (
  order_item INT PRIMARY KEY,
  product_name TEXT,
  price REAL
);

INSERT INTO item VALUES
(001, 'Shoyu ramen', 250.0),
(002, 'Spicy ramen', 350.0),
(003, 'Tantanman', 270.0),
(004, 'Water', 20.0),
(005, 'Green tea', 50.0),
(006, 'Ice cream', 50.0);

-- SQLite command
.mode markdown
.header on

.print
.print Who is the 5 Top spender?
SELECT 
  member.firstname || ' ' || member.lastname fullname,
  SUM(item.price * ord.quantity) grandPrice
FROM bill
JOIN orders ord ON bill.order_id = ord.order_no
JOIN item ON ord.order_item = item.order_item
JOIN member ON member.member_id = bill.member_id
GROUP BY member.member_id
ORDER BY sum(item.price * ord.quantity) DESC LIMIT 5;

.print  
.print What is the revenue and ratio of the awareness channel?
SELECT 
  member.awareness_channel,
  count(bill.order_id) totalOrder,
  100.0 * count(bill.order_id)/(SELECT COUNT(bill.order_id) FROM bill) '% of Order',
  SUM(payment.amount_paid) totalAmount,
  ROUND(100.0 * SUM(payment.amount_paid)/(SELECT SUM(payment.amount_paid) FROM payment), 2)  '% of Amount'
FROM bill
JOIN member ON bill.member_id = member.member_id
LEFT JOIN payment ON payment.payment_id = bill.payment_id
GROUP BY member.awareness_channel
ORDER BY SUM(payment.amount_paid) DESC;

.print 
.print What is the popular menu of each status?
SELECT
  bill.status,
  item.product_name menu,
  SUM(ord.quantity) totalItem
FROM bill
JOIN orders ord ON bill.order_id = ord.order_no
LEFT JOIN item ON ord.order_item = item.order_item
GROUP BY bill.status, item.product_name
ORDER BY bill.status, SUM(ord.quantity) DESC;

.print 
.print What is the revenue of each branch?
SELECT 
  bra.location,
  SUM(item.price * ord.quantity) grandPrice
FROM bill
JOIN branch bra ON bra.branch_id = bill.branch_id
JOIN orders ord ON bill.order_id = ord.order_no
JOIN item ON ord.order_item = item.order_item
GROUP BY bra.location;

.print 
.print What is the revenue of the category group by branch?
SELECT 
  bra.location branch,
      CASE 
    	WHEN item.product_name IN ('Shoyu ramen', 'Spicy ramen','Tantanman') THEN 'Main course'
			WHEN item.product_name IN ('Water', 'Green tea') THEN 'Beverage'
    	ELSE 'Dessert'
    END AS category,
  SUM(item.price * ord.quantity) grandPrice
FROM bill
JOIN branch bra ON bra.branch_id = bill.branch_id
JOIN orders ord ON bill.order_id = ord.order_no
JOIN item ON ord.order_item = item.order_item
JOIN payment ON payment.payment_id = bill.payment_id
GROUP BY bra.location, category
ORDER BY bra.location, SUM(payment.amount_paid) DESC;
