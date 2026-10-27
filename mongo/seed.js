// mongo/seed.js
const { MongoClient } = require('mongodb');
const uri = 'mongodb://localhost:27017';
const client = new MongoClient(uri);
async function run() {
  await client.connect();
  const db = client.db('venta_computadoras');
  await db.collection('proveedores').insertMany([
    { nombre: 'TechSupply', contacto: 'Juan Perez', telefono: '555-1234' }
  ]);
  await db.collection('productos').insertMany([
    { nombre: 'Laptop Pro', marca: 'Dell', modelo: 'XPS13', precio: 1200, stock: 10, proveedor_id: null }
  ]);
  await db.collection('clientes').insertMany([
    { nombre: 'Carlos', apellido: 'Gomez', email: 'carlos@mail.com', telefono: '555-9999' }
  ]);
  console.log('Datos insertados');
  await client.close();
}
run();
