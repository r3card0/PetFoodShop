CREATE TABLE IF NOT EXISTS personnel(id_personnel INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT
, personnel_name VARCHAR(100) NOT NULL
, nick_name VARCHAR(30)
, phone VARCHAR(18)
, email VARCHAR(50) UNIQUE
, personnel_description TEXT);
