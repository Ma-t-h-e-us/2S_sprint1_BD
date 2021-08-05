use clinica
go

insert into CLINICA (nomeClinica, endereco)
values ('clinicaX', 'Rua maria das dores')
go

insert into VETERINARIO (idClinica, nomeVeterinario)
values (1, 'Cleiton'),(1, 'Sergio'),(1, 'Israel')
go

insert into TIPOPET (nomeTipoPet)
values ('Cachorro'), ('Gato'), ('Tartaruga')
go

insert into RACA (idTipoPet, nomeRaca)
values (1, 'Pastor-alemão'), (2, 'Persa'), (3, 'Tartaruga de orelha amarela')
go

insert into DONO (nomeDono)
values ('Matheus'),('Saulo'),('Lucas')
go

insert into PETS (idRaca, idDono, nomePet)
values (1, 1, 'Spike'), (2, 1, 'CatLindo'), (1, 2, 'Dogao')
go

insert into ATENDIMENTO (idVeterinario, idPets, dataAtendimento, tipoAtendimento)
values (1, 2, '05-08-2021 10:00:00', 'Vacinacao de Pet'),(2, 3, '05-08-2021 20:00:00', 'Aplicacao de curativos')
go