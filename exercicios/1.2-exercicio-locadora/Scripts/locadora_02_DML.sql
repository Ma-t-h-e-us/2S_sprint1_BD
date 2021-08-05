insert into empresa (nomeEmpresa)
values ('EmpresaX')
go

insert into clientes (nomeClientes, cpfClientes)
values ('Lucas', 555), ('Matheus', 777)
go

insert into marca (nomeMarca)
values('Ford'),('GM'),('Carrinhos')
go

insert into modelo (idMarca, nomeModelo)
values (1, 'modeloFord'),(2, 'modeloGM'),(3, 'modeloCarrinhos')
go

insert into veiculo (idEmpresa, idModelo, placa)
values (1, 1, 'aaa'),(1, 2, 'bbb')
go

insert into ALUGUEIS (idVeiculo, idClientes, inicioAluguel, fimAluguel)
values (2, 1, '1985-01-01 03:00:00', '2000-01-01 00:00:00'),(3, 3, '1988-01-01 00:00:00', '2010-01-01 00:00:00')
go

--testando update abaixo

update ALUGUEIS
set inicioAluguel = '1999-01-01 06:00:00'
where idAluguel = 1
go