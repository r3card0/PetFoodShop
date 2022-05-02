-- marcas
-- INSERT INTO brands(brand_name) select distinct(marca) from quality.productos_q;

-- productos
-- INSERT INTO products(id_brand,product_name) select id_brand, nombre from brands b, quality.productos_q p where b.brand_name=p.marca;