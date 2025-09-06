-- Creación de base de datos con sufijo único
CREATE DATABASE aerolinea_ui_A1B2C3D4E5F64789A0B1C2D3E4F50607;
USE aerolinea_ui_A1B2C3D4E5F64789A0B1C2D3E4F50607;

-- Tabla Pasajero
CREATE TABLE pasajero (
    pasajero_id INT PRIMARY KEY AUTO_INCREMENT,
    pasajero_nombre VARCHAR(50) NOT NULL,
    pasajero_apellido VARCHAR(50) NOT NULL,
    pasajero_email VARCHAR(100) UNIQUE NOT NULL,
    pasajero_tipo_documento VARCHAR(20) NOT NULL,
    pasajero_nro_documento VARCHAR(20) UNIQUE NOT NULL,
    pasajero_fecha_alta TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla Vuelo
CREATE TABLE vuelo (
    vuelo_id INT PRIMARY KEY AUTO_INCREMENT,
    vuelo_origen VARCHAR(50) NOT NULL,
    vuelo_destino VARCHAR(50) NOT NULL,
    vuelo_fecha_salida DATETIME NOT NULL,
    vuelo_fecha_estimada_arribo DATETIME NOT NULL,
    vuelo_combustible DECIMAL(10,2) DEFAULT 1000,
    vuelo_capacidad INT DEFAULT 150,
    vuelo_estado ENUM('Programado','En vuelo','Cancelado') DEFAULT 'Programado'
);

-- Tabla Reserva
CREATE TABLE reserva (
    reserva_id INT PRIMARY KEY AUTO_INCREMENT,
    reserva_pasajero_id INT NOT NULL,
    reserva_vuelo_id INT NOT NULL,
    reserva_fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    reserva_monto DECIMAL(12,2) NOT NULL,
    reserva_forma_pago ENUM('Tarjeta','Efectivo','Transferencia') DEFAULT 'Efectivo',
    FOREIGN KEY (reserva_pasajero_id) REFERENCES pasajero(pasajero_id),
    FOREIGN KEY (reserva_vuelo_id) REFERENCES vuelo(vuelo_id)
);

-- Tabla Avion
CREATE TABLE avion (
    avion_id INT PRIMARY KEY AUTO_INCREMENT,
    avion_vuelo_id INT NOT NULL,
    avion_marca VARCHAR(50) NOT NULL,
    avion_modelo VARCHAR(50) NOT NULL,
    avion_anio_contratacion YEAR NOT NULL,
    avion_activo BOOLEAN DEFAULT TRUE,
    avion_color VARCHAR(30) DEFAULT 'Blanco',
    FOREIGN KEY (avion_vuelo_id) REFERENCES vuelo(vuelo_id)
);
