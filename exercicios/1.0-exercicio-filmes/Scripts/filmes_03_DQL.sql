use CATALOGO
go

select * from GENERO
go

select * from FILME
go

SELECT idFilme, tituloFilme, nomeGenero FROM FILME
LEFT JOIN GENERO
ON FILME.idGenero = GENERO.idGenero;
go

SELECT idFilme, tituloFilme, nomeGenero FROM FILME
INNER JOIN GENERO
ON FILME.idGenero = GENERO.idGenero;
go

SELECT idFilme, tituloFilme, nomeGenero FROM FILME
FULL OUTER JOIN GENERO
ON FILME.idGenero = GENERO.idGenero;
go