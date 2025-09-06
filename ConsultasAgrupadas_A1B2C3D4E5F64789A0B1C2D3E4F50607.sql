-- Total de reservas por pasajero
SELECT p.pasajero_id, p.pasajero_nombre, p.pasajero_apellido, COUNT(r.reserva_id) AS total_reservas
FROM pasajero p
LEFT JOIN reserva r ON p.pasajero_id = r.reserva_pasajero_id
GROUP BY p.pasajero_id, p.pasajero_nombre, p.pasajero_apellido;

-- Total de ventas por forma de pago
SELECT reserva_forma_pago, SUM(reserva_monto) AS total_ventas
FROM reserva
GROUP BY reserva_forma_pago;

-- Cantidad de vuelos por origen
SELECT vuelo_origen, COUNT(*) AS cantidad_vuelos
FROM vuelo
GROUP BY vuelo_origen;

-- Agrupación adicional: cantidad de aviones por marca
SELECT avion_marca, COUNT(*) AS cantidad_aviones
FROM avion
GROUP BY avion_marca;
