DELIMITER //

CREATE PROCEDURE registrar_venta(IN p_cliente_id INT, IN p_producto_id INT, IN p_cantidad INT)
BEGIN
  DECLARE v_precio DECIMAL(10,2);
  DECLARE v_stock INT;
  DECLARE v_venta_id INT;
  SELECT precio, stock INTO v_precio, v_stock FROM productos WHERE id = p_producto_id;
  IF v_stock >= p_cantidad THEN
    INSERT INTO ventas (cliente_id, total) VALUES (p_cliente_id, v_precio * p_cantidad);
    SET v_venta_id = LAST_INSERT_ID();
    INSERT INTO detalle_venta (venta_id, producto_id, cantidad, precio_unitario, subtotal)
      VALUES (v_venta_id, p_producto_id, p_cantidad, v_precio, v_precio * p_cantidad);
    UPDATE productos SET stock = stock - p_cantidad WHERE id = p_producto_id;
  ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock insuficiente';
  END IF;
END //

DELIMITER ;
