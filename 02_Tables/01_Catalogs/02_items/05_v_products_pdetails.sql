SELECT brand_name AS MARCA 
,product_name AS PRODUCTO
,item_type AS CLASIFICACION
,food_type AS TIPO_ALIMENTO
,pet_type AS MASCOTA
,container_type AS PRESENTACION
,measure_unit AS TIPO_MEDIDA
,amount AS CANTIDAD
FROM products p, product_details pd, brands b
WHERE p.id_product = pd.id_product
AND p.id_brand = b.id_brand;