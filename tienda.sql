

  create database Tienda_comercialCrud;

  use Tienda_comercialCrud;


  CREATE TABLE Categorias (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(200) NOT NULL,
    Orden INT NOT NULL
);

CREATE TABLE Productos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(200) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    CategoriaId INT NOT NULL,
    CONSTRAINT FK_Productos_Categorias FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id)
);



INSERT INTO Categorias (Nombre, Descripcion, Orden)
VALUES
('Electr�nica', 'Productos electr�nicos', 1),
('Ropa', 'Ropa y accesorios', 2),
('Hogar', 'Productos para el hogar', 3),
('Deportes', 'Equipamiento deportivo', 4),
('Tecnolog�a', 'Dispositivos y accesorios tecnol�gicos', 5);



INSERT INTO Productos (Nombre, Descripcion, Precio, CategoriaId)
VALUES
('Smartphone', 'Tel�fono inteligente con c�mara de 12 MP', 599.99, 5),
('Televisor 4K', 'Pantalla de 55 pulgadas con tecnolog�a 4K', 899.99, 1),
('Camiseta de deporte', 'Camiseta de algod�n para hombres', 19.99, 2),
('Silla de oficina', 'Silla ergon�mica para oficina', 99.99, 3),
('Zapatillas de correr', 'Zapatillas de correr con amortiguaci�n', 79.99, 4),
('Tableta', 'Tableta con pantalla de 10 pulgadas y procesador Intel', 399.99, 5),
('Reloj inteligente', 'Reloj con seguimiento de actividad y notificaciones', 149.99, 5),
('C�mara digital', 'C�mara con sensor de 16 MP y zoom �ptico', 299.99, 1),
('Pantalones de deporte', 'Pantalones de algod�n para hombres', 29.99, 2),
('Mesita de noche', 'Mesita de noche con cajones', 49.99, 3);