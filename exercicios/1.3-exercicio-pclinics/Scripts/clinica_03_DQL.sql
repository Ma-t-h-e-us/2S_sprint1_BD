use CLINICA
go

select * from CLINICA
go

select * from VETERINARIO
go

select * from TIPOPET
go

select * from RACA
go

select * from DONO
go

select * from PETS
go

select * from ATENDIMENTO
go

--nome dos veterinarios
select nomeVeterinario from VETERINARIO
go

--listar raças que começam com letra 's'
select nomeRaca as initial from RACA
where substring(nomeRaca, 1, 1) = 'S'
go 

--listar todos os tipos de pet que terminam com a letra O
select nomeTipoPet from TIPOPET 
where SUBSTRING(REVERSE(nomeTipoPet), 1, 1) = 'o'
go

--listar todos os pets mostrando os nomes dos seus donos
select nomePet, nomeDono from PETS
inner join DONO
on PETS.idDono = DONO.idDono
go

--listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido
select nomeVeterinario, nomePet, nomeRaca, nomeTipoPet, nomeDono, nomeClinica from ATENDIMENTO
inner join VETERINARIO
on ATENDIMENTO.idVeterinario = VETERINARIO.idVeterinario
inner join PETS
on ATENDIMENTO.idPets = PETS.idPets
inner join RACA
on PETS.idRaca = RACA.idRaca
inner join TIPOPET
on RACA.idTipoPet = TIPOPET.idTipoPet
inner join DONO
on PETS.idDono = DONO.idDono
inner join CLINICA
on VETERINARIO.idClinica = CLINICA.idClinica
go