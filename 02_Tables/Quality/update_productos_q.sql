-- UPDATE productos_q SET marca='SIN MARCA' WHERE marca = 'COMERCIALIZADORA CORONA';

-- UPDATE productos_q SET marca = "PETT HOMME'S" WHERE marca = "PETT HOMME S";

UPDATE productos_q SET presentacion = 'BOLSA' WHERE presentacion = 'Bolsa';

UPDATE productos_q SET presentacion = 'SOBRE' WHERE presentacion = 'Sobre';

UPDATE productos_q SET presentacion = 'LATA' WHERE presentacion = 'Lata';

UPDATE productos_q SET presentacion = 'COSTAL' WHERE presentacion = 'Costal';

UPDATE productos_q SET nombre = 'LÍQUIDO ENTRENADOR PARA PERRO GOLDEN DOG - Spray de 500 Ml' WHERE id = 288;

UPDATE productos_q SET presentacion = 'LATA' WHERE id = 286;

UPDATE productos_q SET nombre = 'LÍQUIDO REPELENTE GOLDEN DOG - Atomizador de 500 ml', presentacion = 'ATOMIZADOR' WHERE id = 286;

UPDATE productos_q SET nombre = 'LÍQUIDO ENTRENADOR PARA CACHORROS GOLDEN DOG - Atomizador de 500 ml', presentacion = 'ATOMIZADOR' WHERE id = 288;

UPDATE productos_q SET  nombre = REPLACE(nombre, ' ML', ' ml');

UPDATE productos_q SET unidad = 'ml' WHERE unidad = 'ML';

UPDATE productos_q SET nombre = 'DESINFECTANTE ANTIBACTERIAL GOLDEN DOG - Spray de 400 ml' WHERE id = 287;

UPDATE productos_q SET presentacion = 'SPRAY' WHERE presentacion = 'Spray';

delete from productos_q where id=302;

UPDATE productos_q SET mascota = 'PERRO' WHERE mascota = 'Perro/ Gato';

UPDATE productos_q SET mascota = 'Perro' where mascota = 'PERRO';