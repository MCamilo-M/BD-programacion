create database veterinaria;

use veterinaria;


create table Clientes
(
ID_Cliente INT PRIMARY KEY NOT NULL,
T_Documento VARCHAR (50),
N_Documento_Cliente BIGINT (50),
Nombre_Cliente VARCHAR (50),
Apellido_Cliente VARCHAR (50),
Direccion_Cliente VARCHAR (200)
);

CREATE TABLE Mascota
(
ID_Mascota INT PRIMARY KEY NOT NULL,
Nombre_Mascota VARCHAR (50),
Peso_Mascota VARCHAR (50),
Tamaño_Mascota VARCHAR (50),
Raza_Mascota VARCHAR (50),
Edad_Mascota INT,
 INDEX (id_cliente),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

CREATE TABLE Veterinarios
(
ID_Veterinario INT,
T_Documento VARCHAR (50),
N_Documento_Veterinario BIGINT (50),
Nombre_Veterinario VARCHAR(50),
Apellido_Veterinario VARCHAR(50),
 INDEX (ID_Mascota),
    FOREIGN KEY (ID_Mascota) REFERENCES Mascota(ID_Mascota)
);

CREATE TABLE Especial
(
ID_Especial INT,
T_Especialidad VARCHAR (200)
);

CREATE TABLE Historial 
(
ID_Historial INT,
Fecha DATETIME,
Tipo_Visita VARCHAR(200),
Medicina VARCHAR(200),
Paga INT,
Causa_Visita VARCHAR (500),
INDEX (ID_Mascota),
    FOREIGN KEY (ID_Mascota) REFERENCES Mascota(ID_Mascota)
);


