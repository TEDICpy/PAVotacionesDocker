#!/bin/bash
# Creo la base y la cargo
mysql -u root -e "CREATE DATABASE IF NOT EXISTS votacionespa" \
	&& mysql -u root votacionespa < votacionespa_latest.sql

# Parametros correctos de conexion
sed -i "s/publico/root/g" /app/server/public/conexion.php
sed -i "s/\,\ \$db_password//g" /app/server/public/conexion.php
