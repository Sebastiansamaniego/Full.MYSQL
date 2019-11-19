--- 1.Lista el nombre de todos los productos que hay en la tabla producto
SELECT  nombre FROM producto;
--- 2.Lista los nombres y los precios de todos los productos de la tabla producto.
SELECT nombre, Precio FROM producto;
-- 3.Lista la columnas de la tabla productos
SELECT * FROM producto;
-- 4.Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
SELECT nombre, Precio, round(Precio * 1.11,2)from producto;
-- 5.Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.
SELECT nombre AS nombre_producto, Precio AS euros, round(Precio * 1.11,2) AS dolares from producto;
-- 6.Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
SELECT (upper(nombre)) AS nombre, precio FROM producto;
-- 7.Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
SELECT (lower(nombre))precio FROM producto;
-- 8.Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
SELECT nombre, upper(left(nombre,2)) FROM producto;
-- 9.Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
SELECT nombre, Round(precio,0) FROM producto;
-- 10.Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
SELECT nombre, Round(precio)FROM producto;
-- 11.Lista el código de los fabricantes que tienen productos en la tabla producto.
SELECT codigo_fabricante FROM producto;
-- 12.Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.
SELECT distinct(codigo_fabricante) FROM producto;
-- 13.Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT * FROM fabricante ORDER BY nombre ASC;
-- 14.Lista los nombres de los fabricantes ordenados de forma descendente.
SELECT * FROM fabricante ORDER BY nombre DESC;
-- 15.Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
SELECT nombre, precio FROM producto order by nombre ASC;
SELECT nombre, precio FROM producto order by precio DESC;
