USE venta_computadoras;

INSERT INTO proveedores (nombre, contacto, telefono) VALUES
('TechSupply', 'Juan Perez', '555-1234'),
('CompuWorld', 'Maria Lopez', '555-5678');

INSERT INTO productos (nombre, marca, modelo, precio, stock, proveedor_id) VALUES
('Laptop Pro', 'Dell', 'XPS13', 1200.00, 10, 1),
('Desktop Gamer', 'HP', 'Omen', 1500.00, 5, 2);

INSERT INTO clientes (nombre, apellido, email, telefono) VALUES
('Carlos', 'Gomez', 'carlos@mail.com', '555-9999');

INSERT INTO ventas (cliente_id, total) VALUES (1, 1200.00);
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, precio_unitario, subtotal) VALUES (1, 1, 1, 1200.00, 1200.00);
