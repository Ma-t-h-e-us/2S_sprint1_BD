insert into estilo(nomeEstilo)
values ('Samba'),('Rock')
go

insert into artistas (nomeArtista)
values ('Seu Jorge'),('Zézé')
go

insert into AlbumEstilo (idEstilo)
values (1),(2)
go

insert into TipoDePermissao (nomeTipoDePermissao)
values ('comum'),('administrador')
go

insert into usuario (idTipoDePermissao, nomeUsuario, senhaUsuario, emailUsuario)
values (1, 'LéoCocô', '1234', 'theus@gmail.com'),(2, 'Saulo', '4321', 'saulo@gmail.com')
go

insert into optus (idUsuario, nomeEmpresa)
values (1, 'Optus')
go

insert into album (idOptus, idAlbumEstilo, idArtista, nomeAlbum, dataLancamento, minutos)
values (1, 1, 1, 'LosHermanos', '2020-01-01', 53),(1, 2, 2, 'Master', '2020-10-07', 73)
go