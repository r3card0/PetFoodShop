CREATE TABLE IF NOT EXISTS product_details(id_product_detail INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
,id_product INTEGER NOT NULL
, item_type VARCHAR(15) NOT NULL
, food_type VARCHAR(15) NOT NULL
, pet_type VARCHAR(15) NOT NULL
, container_type VARCHAR(15) NOT NULL
, measure_unit VARCHAR(5) NOT NULL
, amount INTEGER NOT NULL);


-- INSERT INTO product_details(id_product,item_type,food_type,pet_type,container_type,measure_unit,amount) SELECT id_product,clasificacion, tipo_alimento, mascota, presentacion,unidad,cantidad FROM quality.productos_q qp, petfoodshop.products p WHERE qp.nombre = p.product_name;