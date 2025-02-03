/*
Enunciado:
Extraer datos de múltiples fuentes con SQL y Python
Tienes la tabla clientes_oracle en Oracle, que almacena información de clientes. 

Tarea: 
- Extraer los clientes registrados en los últimos 90 días. 
- Excluir aquellos con estado = ‘Inactivo’. 
- Ordenar el resultado por fecha_registro. 
*/

-- Selecciona los campos id, nombre, email, fecha_registro y estado de la tabla clientes_oracle
SELECT id, nombre, email, fecha_registro, estado
FROM clientes_oracle
WHERE fecha_registro >= SYSDATE - 90  -- Filtra los registros de los últimos 90 días
  AND estado <> 'Inactivo'  -- Excluye clientes con estado 'Inactivo'
ORDER BY fecha_registro;  -- Ordena los resultados por fecha de registro
