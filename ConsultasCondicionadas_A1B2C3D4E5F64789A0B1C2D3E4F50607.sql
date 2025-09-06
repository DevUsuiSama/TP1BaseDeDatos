-- Apellido = "Gómez" y email contenga "gmail.com"
SELECT * FROM pasajero
WHERE pasajero_apellido = 'Laura' AND pasajero_email LIKE '%gmail.com%';

-- Aviones con capacidad >= 150 o <= 300
SELECT * FROM vuelo
WHERE vuelo_capacidad >= 150 OR vuelo_capacidad <= 300;

-- Reservas > 100000 y forma_pago = "Tarjeta"
SELECT * FROM reserva
WHERE reserva_monto > 100000 AND reserva_forma_pago = 'Tarjeta';

-- Consulta adicional 1
SELECT * FROM pasajero
WHERE pasajero_apellido