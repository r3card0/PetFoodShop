CREATE TABLE IF NOT EXISTS customers(id_customer INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
, customer_name VARCHAR(100) NOT NULL 
, nick_name VARCHAR(30)
, phone VARCHAR(18)
, email VARCHAR(100) UNIQUE
, customer_description TEXT); 