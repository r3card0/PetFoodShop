CREATE DATABASE `PetFoodShop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `principal` (
  `id_principal` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_principal`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `subcategorias` (
  `id_subcategorias` int NOT NULL AUTO_INCREMENT,
  `id_principal` int NOT NULL,
  `nombre_sub` varchar(30) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_subcategorias`),
  UNIQUE KEY `nombre_sub_UNIQUE` (`nombre_sub`),
  KEY `subcategorias_principal_idx` (`id_principal`),
  CONSTRAINT `subcategorias_principal` FOREIGN KEY (`id_principal`) REFERENCES `principal` (`id_principal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`),
  UNIQUE KEY `nombre_proveedor_UNIQUE` (`nombre_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `tipo_mascota` (
  `id_tipo_mascota` int NOT NULL AUTO_INCREMENT,
  `nombre_tipo_mascota` varchar(30) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_mascota`),
  UNIQUE KEY `nombre_tipo_mascota_UNIQUE` (`nombre_tipo_mascota`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `marcas` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(30) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_marca`),
  UNIQUE KEY `nombre_marca_UNIQUE` (`nombre_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `tamano` (
  `id_tamano` int NOT NULL AUTO_INCREMENT,
  `tamano` varchar(30) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_tamano`),
  UNIQUE KEY `tamano_UNIQUE` (`tamano`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `medidas` (
  `id_medida` int NOT NULL AUTO_INCREMENT,
  `medida` varchar(30) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_medida`),
  UNIQUE KEY `medida_UNIQUE` (`medida`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `id_subcategoria` int NOT NULL,
  `id_marca` int NOT NULL,
  `id_proveedor` int NOT NULL,
  `id_tipo_mascota` int NOT NULL,
  `id_tamano` int NOT NULL,
  `id_medida` int NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `unidad_medida` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `producto_subcategoria_idx` (`id_subcategoria`),
  KEY `producto_marca_idx` (`id_marca`),
  KEY `producto_proveedor_idx` (`id_proveedor`),
  KEY `producto_tipomascota_idx` (`id_tipo_mascota`),
  KEY `producto_tamano_idx` (`id_tamano`),
  KEY `producto_medida_idx` (`id_medida`),
  CONSTRAINT `producto_marca` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`),
  CONSTRAINT `producto_medida` FOREIGN KEY (`id_medida`) REFERENCES `medidas` (`id_medida`),
  CONSTRAINT `producto_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`),
  CONSTRAINT `producto_subcategoria` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategorias` (`id_subcategorias`),
  CONSTRAINT `producto_tamano` FOREIGN KEY (`id_tamano`) REFERENCES `tamano` (`id_tamano`),
  CONSTRAINT `producto_tipomascota` FOREIGN KEY (`id_tipo_mascota`) REFERENCES `tipo_mascota` (`id_tipo_mascota`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `inventario` (
  `id_inventario` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `fecha` timestamp NOT NULL,
  PRIMARY KEY (`id_inventario`),
  KEY `inventario_productos_idx` (`id_producto`),
  CONSTRAINT `inventario_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
