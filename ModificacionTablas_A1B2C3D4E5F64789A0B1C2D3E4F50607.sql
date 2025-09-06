-- Agregar columna teléfono
ALTER TABLE pasajero ADD pasajero_telefono VARCHAR(20) AFTER pasajero_nro_documento;

-- Modificar tipo de dato de monto
ALTER TABLE reserva MODIFY reserva_monto DECIMAL(15,2);

-- Eliminar columna teléfono
ALTER TABLE pasajero DROP COLUMN pasajero_telefono;

-- Renombrar fecha_alta a fecha_registro
ALTER TABLE pasajero CHANGE pasajero_fecha_alta pasajero_fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Agregar columna categoría
ALTER TABLE reserva ADD reserva_categoria VARCHAR(30) AFTER reserva_monto;

-- Añadir columna a criterio
ALTER TABLE vuelo ADD vuelo_puerta_embarque VARCHAR(10) AFTER vuelo_estado;

-- Modificar tipo de dato a criterio
ALTER TABLE vuelo MODIFY vuelo_capacidad SMALLINT;
