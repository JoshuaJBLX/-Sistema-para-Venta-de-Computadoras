# Diccionario de Datos

## productos
- id (PK)
- nombre
- marca
- modelo
- precio
- stock
- proveedor_id (FK)

## clientes
- id (PK)
- nombre
- apellido
- email
- telefono

## proveedores
- id (PK)
- nombre
- contacto
- telefono

## ventas
- id (PK)
- cliente_id (FK)
- fecha
- total

## detalle_venta
- id (PK)
- venta_id (FK)
- producto_id (FK)
- cantidad
- precio_unitario
- subtotal
