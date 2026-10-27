# Sistema para Venta de Computadoras — Base de Datos

## Nombre del proyecto
Sistema para Venta de Computadoras (Base de Datos)

## Descripción técnica general
Diseño conceptual, lógico y físico de la base de datos para un sistema de venta de computadoras. Incluye DER, modelo relacional, diccionario de datos, scripts DDL/DML, procedimientos almacenados y documentación de rutas/endpoints.

## Datos de identificación
- Nombre completo: [Tu Nombre Completo]
- Carrera: [Tu Carrera]
- Asignatura: Base de Datos

## Estructura del Repositorio
- /docs — Diseño (DER, modelo relacional, diccionario de datos)
- /sql — Scripts DDL, DML y procedimientos
- /routes — Documentación de rutas/endpoints

## Ejecución o despliegue del script de la base de datos
1. Instalar MySQL/MariaDB.
2. Ejecutar `sql/ddl.sql` para crear la base de datos y tablas.
3. Ejecutar `sql/dml.sql` para insertar datos de prueba.
4. Ejecutar `sql/procedures.sql` para crear procedimientos almacenados.

## Diseño de la Base de Datos
Ver carpeta /docs: DER y modelo relacional en `docs/modelo_relacional.md`, diccionario en `docs/diccionario.md`.

## Rutas / Endpoints
Ver carpeta /routes/endpoints.md. Incluye GET /api/productos, POST /api/ventas, etc. y procedimientos almacenados para transacciones.
