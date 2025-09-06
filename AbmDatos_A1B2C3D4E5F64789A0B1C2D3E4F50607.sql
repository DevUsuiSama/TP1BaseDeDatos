-- Actualizar email de un pasajero específico

SET SQL_SAFE_UPDATES = 0;

UPDATE pasajero
SET pasajero_email = 'laura.morales@gmail.com'
WHERE pasajero_apellido = 'Morales' AND pasajero_nombre = 'Laura';

SET SQL_SAFE_UPDATES = 1;

-- Actualizar monto y forma de pago de una reserva
UPDATE reserva
SET reserva_monto = 200000.00,
    reserva_forma_pago = 'Efectivo'
WHERE reserva_id = 1;

-- Eliminar una reserva específica
DELETE FROM reserva
WHERE reserva_id = 2;

-- Eliminar todos los aviones inactivos

SET SQL_SAFE_UPDATES = 0;

DELETE FROM avion
WHERE avion_activo = FALSE;

SET SQL_SAFE_UPDATES = 1;

-- Actualización adicional: cambiar destino de un vuelo
UPDATE vuelo
SET vuelo_destino = 'Madrid'
WHERE vuelo_id = 1;

-- Eliminación adicional: borrar pasajeros sin reservas
SET SQL_SAFE_UPDATES = 0;

DELETE FROM pasajero
WHERE pasajero_id NOT IN (SELECT DISTINCT reserva_pasajero_id FROM reserva);

SET SQL_SAFE_UPDATES = 1;