create database OPTUS
go

use optus
go

create table TipoDePermissao(
idTipoDePermissao tinyint primary key identity(1,1),
nomeTipoDePermissao varchar(13) NOT NULL
);
go

CREATE TABLE USUARIO (
idUsuario SMALLINT PRIMARY KEY IDENTITY (1,1),
idTipoDePermissao TINYINT FOREIGN KEY REFERENCES TipoDePermissao(idTipoDePermissao),
nomeUsuario VARCHAR(30) NOT NULL,
emailUsuario VARCHAR(256) NOT NULL,
senhaUsuario VARCHAR(30) NOT NULL
);
GO

CREATE TABLE OPTUS (
idOptus TINYINT PRIMARY KEY IDENTITY (1,1),
idUsuario SMALLINT FOREIGN KEY REFERENCES USUARIO(idUsuario),
nomeEmpresa CHAR(5) NOT NULL
);
GO

create table artistas (
idArtista int primary key identity (1,1),
nomeArtista varchar(50) not null
);
go

create table estilo (
idEstilo SMALLINT PRIMARY KEY IDENTITY(1,1),
nomeEstilo VARCHAR(30) NOT NULL
);
GO

create table AlbumEstilo (
idAlbumEstilo int primary key identity(1,1),
idEstilo smallint foreign key references estilo(idEstilo)
);
go

CREATE TABLE ALBUM (
idAlbum INT PRIMARY KEY IDENTITY (1,1),
idOptus tinyint foreign key references optus(idOptus),
idAlbumEstilo int foreign key references AlbumEstilo(idAlbumEstilo),
idArtista int foreign key references artistas(idArtista),
nomeAlbum VARCHAR(30) NOT NULL,
dataLancamento date not null,
minutos smallint not null
);
GO