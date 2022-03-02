CREATE TABLE IF NOT EXISTS personnel(id_personnel INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
, id_role_position INTEGER UNSIGNED NOT NULL
, personnel_name VARCHAR(100) NOT NULL
, nick_name VARCHAR(30)
, phone INTEGER
, email VARCHAR(100) UNIQUE
, personnel_description TEXT);
-- pensar en agregar --
-- start_time
-- last_name1
-- last_name2
-- birthdate
-- active ('Y' / 'N')
-- para tabla que lleve el historial de asignaciones --
-- , role_position_start_time esto es otra cosa, es otra tabla que lleve el historial de asignaciones
--, role position_end_time
