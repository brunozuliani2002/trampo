use trampo;

SHOW TABLES;

DESCRIBE tbusuarios;
DESCRIBE tbclientes;
DESCRIBE tbcarros;


select * from tbcarros;
select * from tbclientes;
select * from tbcarrosAlugados;


create table tbcarros(
 idcarros int primary key auto_increment,
 nomecarros varchar (50) not null,
 anocarros varchar (5) not null, 
 corcarros varchar (20) not null,
 valorcarros int, 
 fotocarros BLOB
 );
 
 create table tbclientes(
 idclientes int primary key auto_increment,
 nometbclientes varchar (50) not null,
 enderecotbclientes varchar (50) not null, 
 ntbclientes varchar (50) not null, 
 bairrotbclientes varchar (50) not null, 
 cidadetbclientes varchar (50) not null, 
 telefonetbclientes varchar (20) not null
 );
 
CREATE TABLE tbcarrosAlugados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    idClientes INT,
    idCarros INT,
    nomeClientes VARCHAR(50) NOT NULL,
    enderecoClientes VARCHAR(50) NOT NULL,
    telefoneClientes VARCHAR(20) NOT NULL,
    nomeCarros VARCHAR(50) NOT NULL,
    valorCarros INT, -- Alterado para INT
    FOREIGN KEY (idClientes) REFERENCES tbclientes(idclientes),
    FOREIGN KEY (idCarros) REFERENCES tbcarros(idcarros)
);
