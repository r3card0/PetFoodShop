-- relation role_position and personnel
select role_name, personnel_name 
from role_position rp, personnel p 
where rp.id_role_position = p.id_role_position;

-- relation role_position and role_tasks
select role_name, task from role_position rp, role_tasks rt where rp.id_role_position= rt.id_role_position;

-- relation role_position, role_tasks, personnel
select role_name, personnel_name, task from role_position rp, role_tasks rt, personnel p where rp.id_role_position = rt.id_role_position and rp.id_role_position = p.id_role_position;

-- relation productos, marcas, etc

select id_producto as no,nombre_marca as marca, nombre_producto as producto,tamano, unidad_medida, medida, nombre_sub, nombre_tipo_mascota as mascota 
from marcas m, productos pr, medidas me, tamano tm, subcategorias sub, tipo_mascota pet  
where pr.id_marca = m.id_marca 
and me.id_medida = pr.id_medida 
and tm.id_tamano = pr.id_tamano 
and sub.id_subcategorias = pr.id_subcategoria 
and pet.id_tipo_mascota = pr.id_tipo_mascota;

select id_producto as no,nombre_marca as marca, nombre_producto | " - " | tamano as producto, unidad_medida, medida, nombre_sub, nombre_tipo_mascota as mascota 
from marcas m, productos pr, medidas me, tamano tm, subcategorias sub, tipo_mascota pet  
where pr.id_marca = m.id_marca 
and me.id_medida = pr.id_medida 
and tm.id_tamano = pr.id_tamano 
and sub.id_subcategorias = pr.id_subcategoria 
and pet.id_tipo_mascota = pr.id_tipo_mascota;