# TEDIC Docker para PA Votaciones

Estos scripts de docker te permitirán tener una copia del sitio: https://votaciones.parlamentoabierto.org.py/

## Modo de empleo

1. Colocar la última versión de la BBDD en la misma carpeta del dockerfile con el nombre: votacionespa_latest.sql

2. Levantar con: docker-compose up

3. Luego de levantar el contenedor, hay que entrar y:
* Ejecutar config.sh
* También cambiar la clave del usuario admin

4. Finalmente encontrará todo en: localhost:8999

## Proyectos relacionados

* Scrapper de Votaciones para la Cámara de Diputados en Paraguay: https://github.com/TEDICpy/PaScraper
