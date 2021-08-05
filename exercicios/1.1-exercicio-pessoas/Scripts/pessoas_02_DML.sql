use EMPRESA
go

INSERT INTO PESSOA (nomePessoa)
VALUES ('SAULO'), ('MATHEUS');
go

insert into CNH (idPessoa, descricao)
values (1,'1234'), (2,'9876');
go

INSERT INTO EMAIL (idPessoa, end_Email)
VALUES (1,'s.santos@email.com'), (2,'m.atheus@email.com');
go

INSERT INTO TELEFONE (idPessoa, numeroTelefone)
VALUES (1,'9999'), (1,'4526'), (2,'1112');
go