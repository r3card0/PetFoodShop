CREATE TABLE IF NOT EXISTS products_prices_costs(id_product_price_cost INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
, id_product INTEGER NOT NULL
, cost DOUBLE(6,2) DEFAULT 10.0
, price DOUBLE(6,2) DEFAULT 10.0);