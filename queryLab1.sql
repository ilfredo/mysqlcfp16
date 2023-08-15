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

DESCRIBE facturas;

INSERT INTO facturas VALUES
("A", 28, 14, 335, "2021-03-18", 1589.50),
("A", 39, 26, 157, "2021-04-12", 979.75),
("B", 8, 17, 95, "2021-04-25", 513.35),
("B", 12, 5, 411, "2021-05-03", 2385.70),
("B", 19, 50, 157, "2021-05-26", 979.75);

SELECT * FROM facturas;

INSERT INTO articulos VALUES
(95, "Webcam con Microfono Plug & Play", 513.35, 39),
(157, "Apple Airpods Pro", 979.75, 152),
(335, "Lavasecarropas Automatico Samsung", 1589.5, 12),
(411, "Gloria Trevi/Gloria/CD+DVD", 2385.70, 2);

INSERT INTO clientes VALUES 
(5, "Santiago", "Gonzalez", "23-24582359-9", "Uriburu 558 - 7A", "VIP"),
(14, "Gloria", "Fernandez", "23-35965852-5", "Constitucion 323", "GBA"),
(17, "Gonzalo", "Lopez", "23-33587416-0", "Arias 2624", "GBA"),
(26, "Carlos", "Garcia", "23-42321230-9", "Pasteur 322 - 2C", "VIP"),
(50, "Micaela", "Altieri", "23-22885566-5", "Santamarina 1255", "GBA");
