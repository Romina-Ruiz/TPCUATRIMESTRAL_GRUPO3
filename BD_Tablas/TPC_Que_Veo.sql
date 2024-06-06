Create DataBase TPC_Que_Veo
Go 
Use TPC_Que_Veo
Go

Create Table Usuarios(
    Id int identity(1,1) Primary key,
    NombreUsuario Varchar(50)not null unique,
    Contrasena Varchar(255)not null,
    Email varchar(100)not null unique,
    EsAdministrador bit default 0,
    EsVip bit default 0
)

Go

Create Table Categoria(
Id smallint identity(1,1) Primary key not null,
Nombre Varchar(50) not null,
)

Go

Create Table Continente(
Id Smallint identity(1,1)primary key not null,
Nombre Varchar(50) not null unique, 
)
Go

Create Table Paises(
Id Smallint identity(1,1) not null primary key,
IdContinente Smallint not null,
Nombre Varchar(50) not null unique,
Foreign key (IdContinente) references Continente(Id)
)

Go
Create Table TiposContenidos(
Id tinyint identity(1,1) primary key not null,
Descripcion Varchar (50) Unique
)
Go 
Create Table Plataformas(
    Id Smallint identity(1,1)Primary key not null,
    Nombre Varchar(100) not null unique,
    UrlSitioWeb Varchar(255) not null,
    LogoUrl Varchar(255) null 
)
Go
Create Table Contenidos(
    Id int identity(1,1) Primary key not null,
    Titulo varchar(255) not null,
    IdCategoria smallint not null,
    IdOrigen smallint not null,
    IdTipoContenido tinyint not null,
    IdPlataforma Smallint not null foreign key references Plataformas(Id),
    FechaLanzamiento Date not null,
    Descripcion text not null,
    EstrellasPromedio decimal(3,2) default 0,
    Foreign key (IdCategoria) references Categoria(Id),
    Foreign key(IdOrigen) references Paises(Id),
    Foreign key (IdTipoContenido) references TiposContenidos(Id)    
)

Go 
Create Table Resenas(
Id bigint identity(1,1) not null Primary key,
IdContenido int not null,
IdUsuario int not null,
Estrellas int check(Estrellas>=1 and Estrellas<=5),
Texto text not null,
EsAprobada bit default 0,
FechaCreacion date not null,
Foreign key (IdContenido) references Contenidos(Id),
Foreign key (IdUsuario) references Usuarios (Id)

)
Go 

Create Table Plataformas_x_Contenido(
    IdContenido int not null Foreign key references Contenidos(Id),
    IdPlataforma Smallint not null foreign key references Plataformas(Id),
    primary key (IdContenido,IdPlataforma)
)
Go 


Create Table Resenas_x_Usuario(
    IdUsuario int not null foreign key references Usuarios(Id),
    IdResena bigint not null foreign key references Resenas(Id),
    primary key(IdUsuario,IdResena)
)
Go 
Create Table Imagenes_x_Contenido(
    IdContenido int not null foreign key references Contenidos(Id),
    UrlImagen Varchar(255) not null,
    primary key(IdContenido,UrlImagen)

)
Go
SELECT * FROM Plataformas;

INSERT INTO Contenidos (Titulo, IdCategoria, IdOrigen, IdTipoContenido,
IdPlataforma, FechaLanzamiento, Descripcion, EstrellasPromedio)
VALUES 
('Película A', 1, 2, 4, 2, '2023-01-01', 'Descripción de la película A', 4.5),
('Serie B', 2, 2, 2, 2, '2023-02-01', 'Descripción de la serie B', 3.7),
('Documental C', 1, 3, 3, 3, '2023-03-01', 'Descripción del documental C', 4.9),
('Corto D', 2, 4, 4, 4, '2023-04-01', 'Descripción del corto D', 2.5);


SELECT * FROM Categoria;
SELECT * from Continente;
SELECT * FROM Paises;
SELECT * FROM TiposContenidos;
SELECT * FROM Plataformas;
SELECT * FROM Contenidos; 
SELECT * FROM  Resenas;

SELECT * FROM  Usuarios;

select * from Plataformas_x_Contenido;
select * from Resenas_x_Usuario;
select * from Imagenes_x_Contenido;


INSERT INTO Usuarios (NombreUsuario, Contrasena, Email, EsAdministrador, EsVip)
VALUES 
('Adm', 111, 'dale@dale2.com', 1, 0);


INSERT INTO Categoria (Nombre)
VALUES 
('Acción'),
('Comedia');

INSERT INTO Continente (Nombre)
VALUES 
('África'),
('América'),
('Asia'),
('Europa');

INSERT INTO Paises (IdContinente, Nombre)
VALUES 
(1, 'Nigeria'),       
(2, 'Estados Unidos'), 
(3, 'China'),          
(4, 'Alemania');  

INSERT INTO TiposContenidos (Descripcion)
VALUES 
('Película'),
('Serie'),
('Documental'),
('Corto'),
('Especial');

INSERT INTO Plataformas (Nombre,UrlSitioWeb,LogoUrl) VALUES 
('Netflix','',''), 
('Amazon Prime','',''), 
('Hulu','',''), 
('Disney+','','');

