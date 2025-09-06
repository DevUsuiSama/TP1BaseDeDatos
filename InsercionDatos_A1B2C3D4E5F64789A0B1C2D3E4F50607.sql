-- Inserción única por tabla
INSERT INTO pasajero (pasajero_nombre, pasajero_apellido, pasajero_email, pasajero_tipo_documento, pasajero_nro_documento)
VALUES ('Lucía', 'Martínez', 'lucia.martinez@example.com', 'DNI', '12345678');

INSERT INTO vuelo (vuelo_origen, vuelo_destino, vuelo_fecha_salida, vuelo_fecha_estimada_arribo)
VALUES ('Posadas', 'Buenos Aires', '2025-09-10 08:00:00', '2025-09-10 10:00:00');

INSERT INTO reserva (reserva_pasajero_id, reserva_vuelo_id, reserva_monto, reserva_forma_pago)
VALUES (1, 1, 15000.50, 'Tarjeta');

INSERT INTO avion (avion_vuelo_id, avion_marca, avion_modelo, avion_anio_contratacion)
VALUES (1, 'Boeing', '737-MAX', 2023);

-- Inserción múltiple en PASAJERO (20 registros adicionales)
INSERT INTO pasajero (pasajero_nombre, pasajero_apellido, pasajero_email, pasajero_tipo_documento, pasajero_nro_documento)
VALUES
('Juan', 'Gómez', 'juan.gomez@gmail.com', 'DNI', '87654321'),
('Pedro', 'Pérez', 'pedro.perez@gmail.com', 'DNI', '11223344'),
('María', 'López', 'maria.lopez@gmail.com', 'DNI', '33445566'),
('Ana', 'Fernández', 'ana.fernandez@gmail.com', 'DNI', '44556677'),
('Luis', 'Ramírez', 'luis.ramirez@gmail.com', 'DNI', '55667788'),
('Sofía', 'Torres', 'sofia.torres@gmail.com', 'DNI', '66778899'),
('Carlos', 'Sánchez', 'carlos.sanchez@gmail.com', 'DNI', '77889900'),
('Laura', 'Morales', 'laura.morales@gmail.com', 'DNI', '88990011'),
('Diego', 'Castro', 'diego.castro@gmail.com', 'DNI', '99001122'),
('Valeria', 'Ortiz', 'valeria.ortiz@gmail.com', 'DNI', '10111213'),
('Martín', 'Silva', 'martin.silva@gmail.com', 'DNI', '12131415'),
('Camila', 'Herrera', 'camila.herrera@gmail.com', 'DNI', '13141516'),
('Andrés', 'Mendoza', 'andres.mendoza@gmail.com', 'DNI', '14151617'),
('Florencia', 'Rojas', 'florencia.rojas@gmail.com', 'DNI', '15161718'),
('Javier', 'Navarro', 'javier.navarro@gmail.com', 'DNI', '16171819'),
('Paula', 'Vega', 'paula.vega@gmail.com', 'DNI', '17181920'),
('Hernán', 'Cruz', 'hernan.cruz@gmail.com', 'DNI', '18192021'),
('Natalia', 'Paz', 'natalia.paz@gmail.com', 'DNI', '19202122'),
('Federico', 'Acosta', 'federico.acosta@gmail.com', 'DNI', '20212223'),
('Micaela', 'Suárez', 'micaela.suarez@gmail.com', 'DNI', '21222324');

-- Inserción múltiple en VUELO (10 registros adicionales)
INSERT INTO vuelo (vuelo_origen, vuelo_destino, vuelo_fecha_salida, vuelo_fecha_estimada_arribo)
VALUES
('Buenos Aires', 'Córdoba', '2025-09-11 09:00:00', '2025-09-11 10:30:00'),
('Córdoba', 'Mendoza', '2025-09-12 14:00:00', '2025-09-12 15:45:00'),
('Mendoza', 'Salta', '2025-09-13 07:00:00', '2025-09-13 09:15:00'),
('Salta', 'Iguazú', '2025-09-14 16:00:00', '2025-09-14 18:30:00'),
('Iguazú', 'Rosario', '2025-09-15 11:00:00', '2025-09-15 13:20:00'),
('Rosario', 'Neuquén', '2025-09-16 06:00:00', '2025-09-16 08:10:00'),
('Neuquén', 'Bariloche', '2025-09-17 12:00:00', '2025-09-17 13:30:00'),
('Bariloche', 'Ushuaia', '2025-09-18 15:00:00', '2025-09-18 17:45:00'),
('Ushuaia', 'Buenos Aires', '2025-09-19 09:00:00', '2025-09-19 13:00:00'),
('Buenos Aires', 'Posadas', '2025-09-20 08:00:00', '2025-09-20 10:00:00');

-- Inserción múltiple en RESERVA (15 registros adicionales)
INSERT INTO reserva (reserva_pasajero_id, reserva_vuelo_id, reserva_monto, reserva_forma_pago)
VALUES
(2, 2, 18000.00, 'Efectivo'),
(3, 3, 22000.50, 'Tarjeta'),
(4, 4, 19500.75, 'Transferencia'),
(5, 5, 25000.00, 'Tarjeta'),
(6, 6, 17500.00, 'Efectivo'),
(7, 7, 30000.00, 'Tarjeta'),
(8, 8, 28000.00, 'Transferencia'),
(9, 9, 26000.00, 'Tarjeta'),
(10, 10, 24000.00, 'Efectivo'),
(11, 1, 15000.00, 'Tarjeta'),
(12, 2, 18000.00, 'Efectivo'),
(13, 3, 22000.00, 'Tarjeta'),
(14, 4, 19500.00, 'Transferencia'),
(15, 5, 25000.00, 'Tarjeta'),
(16, 6, 17500.00, 'Efectivo');

-- Inserción múltiple en AVION (5 registros adicionales)
INSERT INTO avion (avion_vuelo_id, avion_marca, avion_modelo, avion_anio_contratacion)
VALUES
(2, 'Airbus', 'A320', 2022),
(3, 'Embraer', 'E190', 2021),
(4, 'Boeing', '787 Dreamliner', 2020),
(5, 'Bombardier', 'CRJ900', 2019),
(6, 'ATR', '72-600', 2023);

