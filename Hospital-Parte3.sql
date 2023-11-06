-- Inclua ao menos dez médicos de diferentes especialidades.

-- Ao menos sete especialidades (considere a afirmação de que “entre as especialidades há pediatria, clínica geral, gastrenterologia e dermatologia”).

-- Inclua ao menos 15 pacientes.

-- Registre 20 consultas de diferentes pacientes e diferentes médicos (alguns pacientes realizam mais que uma consulta). As consultas devem ter ocorrido entre 01/01/2015 e 01/01/2022. Ao menos dez consultas devem ter receituário com dois ou mais medicamentos.

-- Inclua ao menos quatro convênios médicos, associe ao menos cinco pacientes e cinco consultas.

-- Criar entidade de relacionamento entre médico e especialidade. 

-- Criar Entidade de Relacionamento entre internação e enfermeiro. 

-- Arrumar a chave estrangeira do relacionamento entre convênio e médico.

-- Criar entidade entre internação e enfermeiro.

-- Colocar chaves estrangeira dentro da internação (Chaves Médico e Paciente).

-- Registre ao menos sete internações. Pelo menos dois pacientes devem ter se internado mais de uma vez. Ao menos três quartos devem ser cadastrados. As internações devem ter ocorrido entre 01/01/2015 e 01/01/2022.

-- Considerando que “a princípio o hospital trabalha com apartamentos, quartos duplos e enfermaria”, inclua ao menos esses três tipos com valores diferentes.

-- Inclua dados de dez profissionais de enfermaria. Associe cada internação a ao menos dois enfermeiros.

-- Os dados de tipo de quarto, convênio e especialidade são essenciais para a operação do sistema e, portanto, devem ser povoados assim que o sistema for instalado.



-- Inclua ao menos dez médicos de diferentes especialidades.
create table medico(
medico_id int primary key auto_increment,
especialidade varchar(100),
nome_completo varchar(250),
email varchar(250),
crm varchar(6),
nascimento date,
telefone varchar(11),
cpf varchar(11),
rg varchar(9),
endereço varchar(250)
);



-- Ao menos sete especialidades (considere a afirmação de que “entre as especialidades há pediatria, clínica geral, gastrenterologia e dermatologia”).
insert into medico (especialidade, nome_completo, email, crm, nascimento, telefone, cpf, rg, endereço) VALUES
('Psicologo', 'Antônio da Costa', 'antoniodacosta@prisioneirodedados.org.br', '966784', '2000-02-18', '11976434993', '00979870003', '131424464', 'Rua Frederico Moura'),
('Pediatria', 'Daniel Costa', 'danielcosta@prisioneirodedados.org.br', '202410', '1969-07-20', '12937382176', '57263474042', '480912737', 'Rua Paracatu'),
('Dermatologia', 'Raimundo Dias', 'raimundodias@prisioneirodedados.org.br', '375955', '1989-04-15', '11937382176', '29033463059', '406076947', 'Rua Pereira Estéfano'),
('Gastrenterologia', 'Cláudio Nunes', 'claudionunes@prisioneirodedados.org.br', '208700', '1978-09-01', '13945704480', '17332346087', '395037530', 'Avenida Governador José Malcher'),
('Psiquiatra', 'Paulo do Nascimento', 'paulodonascimento@prisioneirodedados.org.br', '743030', '1988-11-30', '11969508568', '09018377848', '445287809', 'Rodovia Raposo Tavares'),
('Clínica Geral', 'Sandra Gonçalves', 'sandragoncalves@prisioneirodedados.org.br', '233620', '2001-10-26', '12943212629', '01256114804', '424015638', 'Rua Carlos Augusto Cornelsen'),
('Gastrenterologia', 'Jéssica Santos', 'jessicasantos@prisioneirodedados.org.br', '828557', '1977-12-11', '1194892307', '47466590870', '295319719', 'Travessa Antônio Ferreira'),
('Terapeuta Holístico', 'Ângela da Conceiçao', 'angeladaconceicao@prisioneirodedados.org.br', '494995', '1990-02-25', '11972362411', '66304237804', '402569878', 'Travessa Dama e o Rato'),
('Psicoterapeuta', 'Débora Nunes', 'deboranunes@prisioneirodedados.org.br', '168565', '1999-09-05', '11919647486', '07198847803', '141801451', 'Avenida Almirante Maximiano Fonseca'),
('Psicanalista', 'Gabriel Augusto', 'gabrielaugusto@prisioneirodedados.org.br', '509531', '1869-02-28', '12960429828', '99045049899', '566656665', 'Rua Gabriel O Lindo');



-- Inclua ao menos 15 pacientes.
create table pacientes (
pacientes_id int primary key auto_increment,
nome_completo varchar(250),
email varchar(250),
nome_convenio varchar(250),
cpf varchar(11),
rg varchar(9),
nascimento date,
telefone varchar(11),
endereço varchar(250),
FOREIGN KEY (nome_convenio) REFERENCES convenio (nome_convenio) ON DELETE CASCADE ON UPDATE CASCADE
);

insert into pacientes (nome_completo, email, nome_convenio, cpf, rg, nascimento, telefone, endereço) VALUES
('Eduardo Da Silva Ribeiro', 'eduardoriribe@gmail.com', 'Particular', '52884698251', '685347209', '2008-02-29', '11985447520', 'Avenida das aguias azuis'),
('Maria Joaquina', 'Larissamanoela@outlook.com', 'Pamo Saude ', '34563535891', '345646440', '2001-19-09', '11978582108', 'Rua do milho cozido'),
('Neymar Junior', 'neyzinho11@yahoo.com', 'Bradesco Saude', '45465185256', '021289654', '1995-05-28', '52986682158', 'Rua dos sonegadores'),
('Andressa Urach', 'andressaefilhoonly@gmail.com', 'Particular', '84542301860', '251045018', '1980-10-25', '11995215267', 'Avenida dos falsos crentes'),
('Luciano Hulk', 'narigaogigante@hotmail.com', 'Pamo Saude', '55208604175', '045871278', '1975-01-23', '11985276394', 'Avenida Angelica Hulk'),
('Felipe Neto', 'felipeesquerda@yahoo.com', 'Particular', '47621895731', '152020798', '2000-10-08', '13913513581', 'Travessa Não Compre BIS'),
('Bruno Monark', 'monarkfujao@email.com', 'Bradesco Saude', '45862079634', '854720364', '1988-12-30', '84962078943', 'Rua Sim a Liberdade De Expressão'),
('Whindersson Nunes', 'LilWindeVitão@outlook.com', 'Unimed', '85477523940', '254031970', '1990-02-15', '85421096785', 'Rua Infelizmente empatou'),
('Virginia Fonseca', 'BaseRuimslk@gmail.com', 'Pamo Saude', '54021978254', '235870169', '1980-10-02', '85963017530', 'Travessa Felca olha a rosa'),
('Kevin Nascimento', 'deolanebezerra@hotmail.com', 'Doutor Consultas', '58432397013', '586320017', '1920-10-09', '11984417599', 'Rua 3° Pista'),
('Gabriel Azevedo', 'reiGabrielGUGU@gmail.com', 'Unimed', '20155960740', '452011397', '1901-01-08', '11975888441', 'Rua Tito'),
('Vanessa Da Mata', 'banhodechuva@hotmail.com', 'Particular', '88521763001', '582011963', '1983-12-08', '12958160078', 'Rua Garrafa No Alto'),
('Willian Robert', 'wilzinhoeagarrafa@yahoo.com', 'Pamo Saude', '52013697542', '652011796', '2005-10-30', '11955820149', 'Rua Dos Sonhos'),
('Chris Hemsworth', 'TheThor@outlook.com', 'Doutor Consultas', '12955630772', '520039804', '1983-08-11', '11984456103', 'Avenida o melhor é 2011'),
('Brian Lima', 'brianmatosdelima@gmail.com', 'Unimed', '815002395471', '205469820', '2001-06-18', '13966960217', 'Travessa dos profetas');



-- Inclua ao menos quatro convênios médicos, associe ao menos cinco pacientes e cinco consultas.
create table convenio (
convenio_id int primary key auto_increment,
nome_convenio varchar(250),
cnpj varchar(18),
tempo_carencia varchar(8)
);

insert into convenio (nome_convenio, cnpj, tempo_carencia) VALUES
('Pamo Saude', '29.309.127/0001-79', '30 Dias'),
('Unimed', '75.055.772/0001-20', '6 Meses'),
('Doutor Consultas', '14.245.016/0001-79', '6 Meses'),
('Bradesco Saude', '92.693.118/0001-60', '6 Meses'),
('Particular', 'Particular', 'Particular')
;



-- Registre 20 consultas de diferentes pacientes e diferentes médicos (alguns pacientes realizam mais que uma consulta). As consultas devem ter ocorrido entre 01/01/2015 e 01/01/2022. Ao menos dez consultas devem ter receituário com dois ou mais medicamentos.
create table consultas (
dia date,
horario varchar(5),
paciente_id varchar(250),
nome_completo varchar(250),
nome_convenio varchar(250),
medicamentos varchar(250),
FOREIGN KEY (paciente_id) REFERENCES paciente (paciente_id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (nome_completo) REFERENCES medico (nome_completo) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (nome_convenio) REFERENCES convenio (nome_convenio) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO consultas(dia, horario, paciente_id, nome_completo, nome_convenio, medicamentos) VALUES 
('2017-12-18' ,'18:00' ,'5' ,'Daniel Costa', "Unimed", "Buscopam"),
('2016-10-01' ,'10:00' ,'8' ,'Paulo do Nascimento', "Bradesco Saude", "Omeprazol"),
('2020-07-25' ,'08:30' ,'11' ,'Sandra Gonçalves', "Doutor Consultas", "Rivotril"),
('2018-05-30' ,'15:45' ,'3' ,'Gabriel Augusto', "Unimed", "Dipirona"),
('2022-11-24' ,'17:15' ,'1' ,'Ângela da Conceiçao', "Pamo Saude", "Buscopam"),
('2020-02-09' ,'10:20' ,'15' ,'Daniel Costa', "Doutor Consultas", "Insulina"),
('2019-10-25' ,'18:15' ,'7' ,'Débora Nunes', "Doutor Consultas", "Morfina"),
('2015-01-22' ,'14:30' ,'2' ,'Antônio da Costa', "Bradesco Saude", "Codeina"),
('2017-12-02' ,'08:15' ,'9' ,'Gabriel Augusto', "Pamo Saude", "Dorflex"),
('2022-05-12' ,'13:30' ,'6' ,'Cláudio Nunes', "Pamo Saude", "Aspirina"),
('2016-11-08' ,'17:10' ,'4' ,'Raimundo Dias', "Unimed", "Ibuprofeno"),
('2019-01-23' ,'08:00' ,'10' ,'Paulo do Nascimento', "Pamo Saude", "Ciprofloxacino"),
('2015-03-29' ,'15:45' ,'13' ,'Jéssica Santos', "Bradesco Saude", "Loratadina"),
('2018-01-14' ,'10:30' ,'12' ,'Sandra Gonçalves', "Bradesco Saude", "Dipirona"),
('2022-08-19' ,'09:00' ,'14' ,'Cláudio Nunes', "Pamo Saude", "Buscopam"),
('2015-02-12' ,'16:30' ,'5' ,'Ângela da Conceiçao', "Doutor Consultas", "Ibuprofeno"),
('2021-10-08' ,'18:00' ,'9' ,'Raimundo Dias', "Bradesco Saude", "Dipirona"),
('2019-08-30' ,'10:00' ,'3' ,'Antônio da Costa', "Unimed", "Paracetamol"),
('2022-10-31' ,'09:30' ,'2' ,'Gabriel Augusto', "Unimed", "Dorflex"),
('2016-07-28' ,'07:30' ,'11' ,'Sandra Gonçalves', "Bradesco Saude", "Loratadina")
;



-- Criar Entidade de Relacionamento entre internação e enfermeiro. 
create table enfermeiro (
enfermeiro_id int primary key auto_increment,
nome_enfermeiro varchar(250),
cpf_enfermeiro varchar(11),
cre_enfermeiro varchar(6)
);

create table internacao (
dia_internacao date,
id_medico int,
nome_enfermeiro varchar(250),
nome_enfermeiro2 varchar(250),
nome_completo varchar(250),
tipo_quarto varchar(250),
FOREIGN KEY (nome_enfermeiro) REFERENCES enfermeiro (nome_enfermeiro) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_medico) REFERENCES medico (id_medico) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (nome_completo) REFERENCES paciente (nome_completo) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (tipo_quarto) REFERENCES quarto (tipo_quarto) ON DELETE CASCADE ON UPDATE CASCADE
);

create table quarto (
id_quarto int primary key auto_increment,
tipo_quarto varchar(250),
valor_quarto varchar(5)
);



-- Inclua dados de dez profissionais de enfermaria. Associe cada internação a ao menos dois enfermeiros.
insert into enfermeiro (nome_enfermeiro, cpf_enfermeiro, cre_enfermeiro) VALUES
('Carlos Gonçalves', '74046140828', '364320'),
('Jorge Lima', '10350603880', '537527'),
('Matheus Rocha', '05638396861', '702173'),
('Raimundo Batista', '31304487806', '676539'),
('Vítor de Lima', '31304487806', '63553'),
('Mariana Vieira', '24490919808', '936621'),
('Eliane Moreira', '71653884860', '545885'),
('Aparecida Ramos', '94376945838', '434946'),
('Luciana Fernandes', '17262254880', '676539'),
('Juliana Rocha', '81131648803', '912804');

-- Registre ao menos sete internações. Pelo menos dois pacientes devem ter se internado mais de uma vez. Ao menos três quartos devem ser cadastrados. As internações devem ter ocorrido entre 01/01/2015 e 01/01/2022.
insert into internacao (dia_internacao, id_medico, nome_enfermeiro, nome_enfermeiro2, nome_completo, tipo_quarto) VALUES
('2015-02-10', '7', 'Luciana Fernandes', 'Matheus Rocha', 'Gabriel Augusto', 'Quarto Duplo'),
('2017-10-05', '5', 'Carlos Gonçalves', 'Aparecida Ramos', 'Neymar Junior', 'Apartameno'),
('2016-12-30', '2', 'Eliane Moreira', 'Raimundo Batista', 'Gabriel Augusto', 'Quarto Duplo'),
('2018-07-20', '1', 'Jorge Lima', 'Raimundo Batista', 'Brian Lima', 'Quarto Duplo'),
('2022-04-18', '4', 'Eliane Moreira', 'Vítor de Lima', 'Virginia Fonseca', 'Enfermaria'),
('2020-08-25', '5', 'Carlos Gonçalves', 'Aparecida Ramos', 'Virginia Fonseca', 'Enfermaria'),
('2017-11-12', '6', 'Luciana Fernandes', 'Matheus Rocha', 'Bruno Monark', 'Apartameno');

insert into quarto (tipo_quarto, valor_quarto) VALUES
('Apartameno', '2.000'),
('Quarto Duplo', '1.500'),
('Enfermaria', '1.000');