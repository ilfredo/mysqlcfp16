use laboratorio;

CREATE TABLE FACTURAS (
letra char NOT NULL,
numero int NOT NULL,
id_cliente int NOT NULL,
id_articulo int NOT NULL,
fecha date NOT NULL,
monto double NOT NULL,
CONSTRAINT PK_FACTURAS PRIMARY KEY (letra,numero)
);

CREATE TABLE ARTICULOS (
id_articulo int NOT NULL,
nombre varchar(50),
precio double,
stock int,
CONSTRAINT PK_ARTICULOS PRIMARY KEY (id_articulo)
);

CREATE TABLE CLIENTES (
id_cliente int NOT NULL,
nombre varchar(25),
apellido varchar(25),
cuit char (16),
direccion varchar(50),
comentarios varchar(50),
CONSTRAINT PK_CLIENTES PRIMARY KEY (id_cliente)
);