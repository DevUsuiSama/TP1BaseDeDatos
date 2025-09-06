-- Pasajeros ordenados por fecha de registro descendente
SELECT * 
FROM pasajero
ORDER BY pasajero_fecha_registro DESC;

-- Pasajeros ordenados por apellido ascendente y nombre descendente
SELECT * 
FROM pasajero
ORDER BY pasajero_apellido ASC, pasajero_nombre DESC;

-- Reservas ordenadas por monto descendente y forma de pago ascendente
SELECT * 
FROM reserva
ORDER BY reserva_monto DESC, reserva_forma_pago ASC;

-- Vuelos ordenados por origen ascendente y fecha de salida descendente
SELECT * 
FROM vuelo
ORDER BY vuelo_origen ASC, vuelo_fecha_salida DESC;
