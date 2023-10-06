mysql -h mysql -u root -p

CREATE DATABASE mi_db;
USE mi_db;
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT
);

INSERT INTO usuarios (nombre, apellido, edad) VALUES
('Juan', 'Pérez', 30),
('María', 'López', 25),
('Carlos', 'García', 40);

