use LOCADORA_DE_VEICULOS
go

select * from empresa
go

select * from clientes
go

select * from marca
go

select * from MODELO
go

select * from VEICULO
go

select * from ALUGUEIS
go

select inicioAluguel, fimAluguel, nomeClientes, nomeModelo from ALUGUEIS
inner join clientes
on ALUGUEIS.idClientes = CLIENTES.idClientes
inner join VEICULO
on ALUGUEIS.idVeiculo = VEICULO.idVeiculo
inner join MODELO
on VEICULO.idModelo = MODELO.idModelo
go