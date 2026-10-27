# Colecciones MongoDB

## productos
{
  _id: ObjectId,
  nombre: String,
  marca: String,
  modelo: String,
  precio: Number,
  stock: Number,
  proveedor_id: ObjectId
}

## clientes
{
  _id: ObjectId,
  nombre: String,
  apellido: String,
  email: String,
  telefono: String
}

## proveedores
{
  _id: ObjectId,
  nombre: String,
  contacto: String,
  telefono: String
}

## ventas
{
  _id: ObjectId,
  cliente_id: ObjectId,
  fecha: Date,
  total: Number
}

## detalle_venta
{
  _id: ObjectId,
  venta_id: ObjectId,
  producto_id: ObjectId,
  cantidad: Number,
  precio_unitario: Number,
  subtotal: Number
}
