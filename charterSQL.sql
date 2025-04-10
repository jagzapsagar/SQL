create database charter;
use charter;
truncate transaction;
select * from transaction;

INSERT INTO transaction (customer_id, customer_name, amount, transaction_date) 
VALUES 
(1, 'Akshay', 120.00, '2025-01-15 10:30:00'),
(1, 'Akshay', 75.00, '2025-01-20 11:00:00'),
(1, 'Akshay', 200.00, '2025-02-10 09:30:00'),
(1, 'Akshay', 50.00, '2025-03-05 14:00:00');

INSERT INTO transaction (customer_id, customer_name, amount, transaction_date) 
VALUES 
(2, 'Raj', 60.00, '2025-01-05 15:00:00'),
(2, 'Raj', 150.00, '2025-02-11 11:30:00'),
(2, 'Raj', 40.00, '2025-03-12 13:00:00'),
(2, 'Raj', 170.00, '2025-03-20 10:45:00');