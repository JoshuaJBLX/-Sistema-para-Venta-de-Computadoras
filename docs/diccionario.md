# Diccionario de Datos

## proveedores
- id (PK)
- nombre
- contacto
- telefono

## productos
- id (PK)
- nombre
- marca
- modelo
- precio
- stock
- proveedor_id (FK -> proveedores.id)

## clientes
- id (PK)
- nombre
- apellido
- email
- telefono

## ventas
- id (PK)
- cliente_id (FK -> clientes.id)
- fecha
- total

## detalle_venta
- id (PK)
- venta_id (FK -> ventas.id)
- producto_id (FK -> productos.id)
- cantidad
- precio_unitario
- subtotal

## Relaciones (DER)
- proveedores 1..* productos
- clientes 1..* ventas
- ventas 1..* detalle_venta
- productos 1..* detalle_venta

