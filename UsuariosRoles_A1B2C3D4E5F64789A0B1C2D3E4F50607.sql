-- Usuario con permisos de lectura sobre toda la BD
CREATE USER 'usuario_aerolinea_A1B2C3'@'%' IDENTIFIED BY '__test__';
GRANT SELECT ON aerolinea_ui_A1B2C3D4E5F64789A0B1C2D3E4F50607.* TO 'usuario_aerolinea_A1B2C3'@'%';

-- Rol con permisos sobre pasajero y reserva
CREATE ROLE rol_reserva_A1B2C3;
GRANT SELECT, INSERT, UPDATE ON aerolinea_ui_A1B2C3D4E5F64789A0B1C2D3E4F50607.pasajero TO rol_reserva_A1B2C3;
GRANT SELECT, INSERT, UPDATE ON aerolinea_ui_A1B2C3D4E5F64789A0B1C2D3E4F50607.reserva TO rol_reserva_A1B2C3;

-- Usuario con rol
CREATE USER 'usuario_reserva_A1B2C3'@'%' IDENTIFIED BY '__test__';
GRANT rol_reserva_A1B2C3 TO 'usuario_reserva_A1B2C3'@'%';

-- Incluir eliminación
GRANT DELETE ON aerolinea_ui_A1B2C3D4E5F64789A0B1C2D3E4F50607.pasajero TO rol_reserva_A1B2C3;
GRANT DELETE ON aerolinea_ui_A1B2C3D4E5F64789A0B1C2D3E4F50607.reserva TO rol_reserva_A1B2C3;

-- Revocar eliminación
REVOKE DELETE ON aerolinea_ui_A1B2C3D4E5F64789A0B1C2D3E4F50607.pasajero FROM rol_reserva_A1B2C3;
REVOKE DELETE ON aerolinea_ui_A1B2C3D4E5F64789A0B1C2D3E4F50607.reserva FROM rol_reserva_A1B2C3;

-- Asignar rol a usuario_aerolinea
GRANT rol_reserva_A1B2C3 TO 'usuario_aerolinea_A1B2C3'@'%';

-- Cambiar contraseña
ALTER USER 'usuario_aerolinea_A1B2C3'@'%' IDENTIFIED BY '__test__';

-- Eliminar usuario
DROP USER IF EXISTS 'usuario_aerolinea_A1B2C3'@'%';

-- Eliminar rol
DROP ROLE IF EXISTS rol_reserva_A1B2C3;

-- Usuario admin
CREATE USER 'usuario_admin_A1B2C3'@'%' IDENTIFIED BY '__test__';
GRANT ALL PRIVILEGES ON aerolinea_ui_A1B2C3D4E5F64789A0B1C2D3E4F50607.* TO 'usuario_admin_A1B2C3'@'%';
