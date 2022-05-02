CREATE TABLE IF NOT EXISTS products(id_product INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
, id_brand INTEGER NOT NULL
, id_item_type INTEGER NOT NULL
, id_pet_food_type INTEGER
, id_item_measure_type INTEGER NOT NULL
, id_item_packaging_type INTEGER NOT NULL
, product_name VARCHAR(100) NOT NULL
, quantity INTEGER
);