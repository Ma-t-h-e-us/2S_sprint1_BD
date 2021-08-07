use OPTUS
go

select * from estilo
go

select * from artistas
go

select * from AlbumEstilo
go

select * from TipoDePermissao
go

select * from usuario
go

select * from optus
go

select * from album
go

--listar todos os usu�rios administradores, sem exibir suas senhas
select idUsuario, nomeUsuario, emailUsuario from USUARIO 
where idTipoDePermissao = 2
go

--listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
select nomeAlbum, dataLancamento from ALBUM
where dataLancamento > '2020-01-01'
go

--listar os dados de um usu�rio atrav�s do e-mail e senha
select * from USUARIO
where emailUsuario = 'theus@gmail.com' and senhaUsuario = '1234'
go

--listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 
--obs: n�o h� o dado de ativa��o, ent�o ser� feito sem
select nomeAlbum, nomeArtista, nomeEstilo from ALBUM
inner join artistas
on artistas.idArtista = ALBUM.idArtista
inner join AlbumEstilo
on AlbumEstilo.idAlbumEstilo = ALBUM.idAlbumEstilo
inner join estilo
on AlbumEstilo.idEstilo = estilo.idEstilo
go
