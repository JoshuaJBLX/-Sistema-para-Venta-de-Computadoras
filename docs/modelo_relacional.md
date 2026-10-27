# Modelo Relacional y DER

## Entidades y relaciones
- proveedores (1) — (N) productos
- clientes (1) — (N) ventas
- ventas (1) — (N) detalle_venta
- productos (1) — (N) detalle_venta

## Modelo Relacional
- proveedores(id PK, nombre, contacto, telefono)
- productos(id PK, nombre, marca, modelo, precio, stock, proveedor_id FK)
- clientes(id PK, nombre, apellido, email, telefono)
- ventas(id PK, cliente_id FK, fecha, total)
- detalle_venta(id PK, venta_id FK, producto_id FK, cantidad, precio_unitario, subtotal)
