CREATE TABLE IF NOT EXISTS personnel(id_personnel INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
, id_role_position INTEGER UNSIGNED
, personnel_name VARCHAR(100) NOT NULL
, nick_name VARCHAR(30)
, phone INTEGER
, email VARCHAR(100) UNIQUE
, personnel_description TEXT)