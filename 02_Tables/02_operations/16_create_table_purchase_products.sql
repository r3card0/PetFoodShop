CREATE TABLE IF NOT EXISTS purchase_products(id_purchase_products INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
, id_purchase INTEGER NOT NULL
, id_product INTEGER NULL
, amount INTEGER);