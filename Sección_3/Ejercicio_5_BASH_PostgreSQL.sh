#!/bin/bash

# Nombre del archivo CSV original
input_file="ventas_transformadas.csv"

# Parámetros de conexión a PostgreSQL
dbname="tu_base_de_datos"
user="tu_usuario"
password="tu_contraseña"
host="localhost"
port="5432"

# Cargar datos brutos en la tabla raw_data
psql "host=$host dbname=$dbname user=$user password=$password port=$port" -c "\copy raw_data_ventas_transformadas(producto, cantidad, precio, fecha_venta, total) FROM '$input_file' DELIMITER ',' CSV HEADER"