

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
('Electrónica', 'Productos electrónicos', 1),
('Ropa', 'Ropa y accesorios', 2),
('Hogar', 'Productos para el hogar', 3),
('Deportes', 'Equipamiento deportivo', 4),
('Tecnología', 'Dispositivos y accesorios tecnológicos', 5);



INSERT INTO Productos (Nombre, Descripcion, Precio, CategoriaId)
VALUES
('Smartphone', 'Teléfono inteligente con cámara de 12 MP', 599.99, 5),
('Televisor 4K', 'Pantalla de 55 pulgadas con tecnología 4K', 899.99, 1),
('Camiseta de deporte', 'Camiseta de algodón para hombres', 19.99, 2),
('Silla de oficina', 'Silla ergonómica para oficina', 99.99, 3),
('Zapatillas de correr', 'Zapatillas de correr con amortiguación', 79.99, 4),
('Tableta', 'Tableta con pantalla de 10 pulgadas y procesador Intel', 399.99, 5),
('Reloj inteligente', 'Reloj con seguimiento de actividad y notificaciones', 149.99, 5),
('Cámara digital', 'Cámara con sensor de 16 MP y zoom óptico', 299.99, 1),
('Pantalones de deporte', 'Pantalones de algodón para hombres', 29.99, 2),
('Mesita de noche', 'Mesita de noche con cajones', 49.99, 3);