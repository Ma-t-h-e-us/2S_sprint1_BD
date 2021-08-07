use EMPRESA
go

select * from PESSOA
go

select * from CNH
go

select * from EMAIL
go

select * from TELEFONE
go

select nomePessoa, descricao, end_email, numeroTelefone from PESSOA
inner join CNH
on PESSOA.idPessoa = CNH.idPessoa
inner join EMAIL
on PESSOA.idPessoa = EMAIL.idPessoa
inner join TELEFONE
on PESSOA.idPessoa = TELEFONE.idPessoa
go