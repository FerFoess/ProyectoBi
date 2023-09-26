CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE USUARIOS (
  idUsuario INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  correo VARCHAR(100) NOT NULL,
  contraseña VARCHAR(100) NOT NULL,
  telefono INT NOT NULL
);

CREATE TABLE Book (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(50),
    Editorial VARCHAR(20),
    FechaRegistro DATETIME,
    Categoria VARCHAR(50),
    Autor VARCHAR(50),
    Piezas INT
);

CREATE TABLE Multas (
    IdMulta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FechaPag DATETIME,
    Monto DECIMAL(10, 2),
    Estatus VARCHAR(50),
    IdPrestamo INT,
    FOREIGN KEY (IdPrestamo) REFERENCES Prestamo(IdPrestamo)
);

CREATE TABLE Prestamo (
    IdPrestamo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FechaPres DATETIME,
    FechaDev DATETIME,
    IdUsuario INT,
    id INT,
    FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
    FOREIGN KEY (id) REFERENCES Book(id)
);

