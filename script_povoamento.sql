USE faculdade_privada;

-- ENDERECO
INSERT INTO ENDERECO 
VALUES ('51030030', 'Recife', 'Pernambuco',
		'Edifício Costa Pacífica', 'Rua Professor Augusto Lins e Silva, Boa Viagem');
INSERT INTO ENDERECO 
VALUES ('51130130', 'Recife', 'Pernambuco',
		'Edifício Forestier', 'Rua Baltazar Passos, Boa Viagem');
INSERT INTO ENDERECO 
VALUES ('51021140', 'Recife', 'Pernambuco',
		'Uninassau', 'Rua Jonatas de Vasconcelos, Boa Viagem');
INSERT INTO ENDERECO 
VALUES ('02402020', 'São Paulo', 'São Paulo',
		'Condominio Praça das Orquídeas', 'Rua Garção Tinoco, Santana');
INSERT INTO ENDERECO 
VALUES ('05508010', 'São Paulo', 'São Paulo',
		'Escola Politécnica Da Universidade De Sao Paulo', 'Rua Travessa das Nações, Butanã');
INSERT INTO ENDERECO 
VALUES ('21941901', 'Rio de Janeiro', 'Rio de Janeiro',
		'Universidade Federal do Rio de Janeiro', 'Av. Pedro Calmon, Botafogo');
INSERT INTO ENDERECO 
VALUES ('01302000', 'São Paulo', 'São Paulo',
		'Universidade Presbiteriana Mackenzie', 'Rua da Consolação, Consolação');
INSERT INTO ENDERECO 
VALUES ('50740560', 'Recife', 'Pernambuco',
		'Centro de Informática - UFPE', 'Av. Jorn. Aníbal Fernandes, Cidade Universitária');
INSERT INTO ENDERECO 
VALUES ('22640100', 'Rio de Janeiro', 'Rio de Janeiro',
		'Le Parc Residential Resort', 'Av. Jornalista Tim Lopes, Barra da Tijuca');
INSERT INTO ENDERECO 
VALUES ('20010020', 'Rio de Janeiro', 'Rio de Janeiro',
		'Edifício Avenida Central', 'Av. Rio Branco, Centro');

-- LOCALIZACAO
INSERT INTO LOCALIZACAO (predio, andar, num_sala)
VALUES ('Dom Bosco', '3', 101);
INSERT INTO LOCALIZACAO (predio, andar, num_sala)
VALUES ('Ceagri II', '2', 24);
INSERT INTO LOCALIZACAO (predio, andar, num_sala)
VALUES ('Cegen', '2', 230);
INSERT INTO LOCALIZACAO (predio, andar, num_sala)
VALUES ('Albert Einstein', '1', 5);
INSERT INTO LOCALIZACAO (predio, andar, num_sala)
VALUES ('Juscelino Kubitschek', '6', 620);
INSERT INTO LOCALIZACAO (predio, andar, num_sala)
VALUES ('Oscar Niemeyer', '4', 43);
INSERT INTO LOCALIZACAO (predio, andar, num_sala)
VALUES ('Jaraguá', '20', 2001);
INSERT INTO LOCALIZACAO (predio, andar, num_sala)
VALUES ('Copan', '17', 1701);
INSERT INTO LOCALIZACAO (predio, andar, num_sala)
VALUES ('Bretagne', '6', 610);
INSERT INTO LOCALIZACAO (predio, andar, num_sala)
VALUES ('Lausanne', '13', 1308);

-- AREA_CONHECIMENTO
INSERT INTO AREA_CONHECIMENTO (descricao)
VALUES ('Matemática');
INSERT INTO AREA_CONHECIMENTO (descricao)
VALUES ('Computação');
INSERT INTO AREA_CONHECIMENTO (descricao)
VALUES ('Física');
INSERT INTO AREA_CONHECIMENTO (descricao)
VALUES ('História');
INSERT INTO AREA_CONHECIMENTO (descricao)
VALUES ('Direito');
INSERT INTO AREA_CONHECIMENTO (descricao)
VALUES ('Antropologia');
INSERT INTO AREA_CONHECIMENTO (descricao)
VALUES ('Administração');
INSERT INTO AREA_CONHECIMENTO (descricao)
VALUES ('Saúde');

-- SUBAREA_CONHECIMENTO
INSERT INTO SUBAREA_CONHECIMENTO (descricao, codigo_area)
VALUES ('Algebra Linear', 1);
INSERT INTO SUBAREA_CONHECIMENTO (descricao, codigo_area)
VALUES ('Engenharia de Software', 2);
INSERT INTO SUBAREA_CONHECIMENTO (descricao, codigo_area)
VALUES ('Física Quantica', 3);
INSERT INTO SUBAREA_CONHECIMENTO (descricao, codigo_area)
VALUES ('História do Brasil', 4);
INSERT INTO SUBAREA_CONHECIMENTO (descricao, codigo_area)
VALUES ('Direito Penal', 5);
INSERT INTO SUBAREA_CONHECIMENTO (descricao, codigo_area)
VALUES ('Antropologia Social e Filosófica', 6);
INSERT INTO SUBAREA_CONHECIMENTO (descricao, codigo_area)
VALUES ('Fomento de Educação', 7);
INSERT INTO SUBAREA_CONHECIMENTO (descricao, codigo_area)
VALUES ('Autismo e Educação', 8);

-- FACULDADE
INSERT INTO FACULDADE
VALUES ('91697364000128', 'Universidade Federal de Pernambuco', 1, 
		'33425354', '30325315', 'ufpe@ufpe.br', '50740560', '1235');
INSERT INTO FACULDADE
VALUES ('43198423000170', 'Mackenzie', 1, 
		'33520324', '30645315', 'mack@mackenzie.com.br', '01302000', '1200');
INSERT INTO FACULDADE
VALUES ('50176210000103', 'Universidade Federal do Rio de Janeiro', 1, 
		'30520866', '34612315', 'ufrj@ufrj.br', '21941901', '550');
INSERT INTO FACULDADE
VALUES ('94500853000136', 'Universidade de São Paulo', 1, 
		'36220846', '34412034', 'usp@usp.br', '05508010', '1280');
INSERT INTO FACULDADE
VALUES ('05280452000198', 'Uninassau', 0, 
		'32324846', '37213034', 'uninassau@uninassau.com.br', '51021140', '1320');
        
-- TODO CALENDARIO_ACADEMICO

-- USUARIO
INSERT INTO USUARIO (cpf, login, senha, email, nome, dt_nasc, idade, sexo, telefone, cep_endereco)
VALUES ('08723738430', 'isafernandes', 'senha', 'bella_andrade20@hotmail.com',
		'Isabella', '1999-03-20', 19, 'F', '30325314', '51030030');
INSERT INTO USUARIO (cpf, login, senha, email, nome, dt_nasc, idade, sexo, cep_endereco)
VALUES ('71907636005', 'beto', 'senha2', 'beto@hotmail.com',
		'Heriberto', '1999-06-23', 19, 'M', '51130130');
INSERT INTO USUARIO (cpf, login, senha, email, nome, dt_nasc, idade, sexo, cep_endereco)
VALUES ('76123754009', 'jonas', 'senha3', 'jonas@hotmail.com',
		'Jonas', '1998-05-15', 20, 'M', '51130130');
INSERT INTO USUARIO (cpf, login, senha, email, nome, dt_nasc, idade, sexo, cep_endereco)
VALUES ('89318239084', 'clara', 'senha4', 'clara@hotmail.com',
		'Clara', '1998-06-04', 20, 'F', '51130130');
INSERT INTO USUARIO (cpf, login, senha, email, nome, dt_nasc, idade, sexo, cep_endereco)
VALUES ('08792462006', 'tadeu', 'senha5', 'tadeu@hotmail.com',
		'Tadeu', '1999-01-28', 19, 'M', '51030030');

INSERT INTO USUARIO (cpf, login, senha, email, nome, dt_nasc, idade, sexo, cep_endereco)
VALUES ('52891896025', 'joao', 'senha6', 'joao@hotmail.com',
		'Joao', '1994-07-13', 24, 'M', '02402020');
INSERT INTO USUARIO (cpf, login, senha, email, nome, dt_nasc, idade, sexo, cep_endereco)
VALUES ('85875388021', 'clarissa', 'senha7', 'clarissa@hotmail.com',
		'Clarissa', '1997-04-19', 21, 'F', '02402020');
INSERT INTO USUARIO (cpf, login, senha, email, nome, dt_nasc, idade, sexo, cep_endereco)
VALUES ('71817266098', 'pam', 'senha8', 'pamela@hotmail.com',
		'Pamela', '1998-10-22', 20, 'F', '51130130');
INSERT INTO USUARIO (cpf, login, senha, email, nome, dt_nasc, idade, sexo, cep_endereco)
VALUES ('69835863016', 'marc', 'senha9', 'marc@hotmail.com',
		'Marcos', '1998-06-10', 20, 'M', '51130130');
INSERT INTO USUARIO (cpf, login, senha, email, nome, dt_nasc, idade, sexo, cep_endereco)
VALUES ('53809508098', 'jem', 'senha10', 'james@hotmail.com',
		'James', '1999-02-16', 19, 'M', '51030030');
INSERT INTO USUARIO (cpf, login, senha, email, nome, dt_nasc, idade, sexo, cep_endereco)
VALUES ('72846394721', 'tavares', 'senha11', 'tavares@hotmail.com',
		'Tavares', '1992-04-15', 26, 'M', '51030030');
        
-- ALUNO
INSERT INTO ALUNO (cpf_usuario, numero_matricula, data_matricula, ano_sem_entrada, 
		data_inic)
VALUES ('08723738430', '2749274937', '2017-01-05', '2017', '2017-05-18');
INSERT INTO ALUNO (cpf_usuario, numero_matricula, data_matricula, ano_sem_entrada, 
		data_inic)
VALUES ('71907636005', '6427274963', '2017-01-05', '2017', '2017-05-18');
INSERT INTO ALUNO (cpf_usuario, numero_matricula, data_matricula, ano_sem_entrada, 
		data_inic)
VALUES ('76123754009', '32939375963', '2016-06-05', '2016', '2016-08-18');
INSERT INTO ALUNO (cpf_usuario, numero_matricula, data_matricula, ano_sem_entrada, 
		data_inic)
VALUES ('89318239084', '27339385963', '2016-06-05', '2016', '2016-08-18');
INSERT INTO ALUNO (cpf_usuario, numero_matricula, data_matricula, ano_sem_entrada, 
		data_inic)
VALUES ('08792462006', '48265385963', '2016-01-05', '2016', '2016-02-18');
INSERT INTO ALUNO (cpf_usuario, numero_matricula, data_matricula, ano_sem_entrada, 
		data_inic);

-- DEPARTAMENTO
INSERT INTO DEPARTAMENTO (nome, telefone, email, sigla, cnpj_faculdade)
VALUES ('Centro de Informatica', '36292730', 'cin@ufpe.br', 'CIn', '91697364000128');
INSERT INTO DEPARTAMENTO (nome, telefone, email, sigla, cnpj_faculdade)
VALUES ('Departamento de Engenharia', '30472330', 'poli@ufrj.br', 'Poli', '50176210000103');
INSERT INTO DEPARTAMENTO (nome, telefone, email, sigla, cnpj_faculdade)
VALUES ('Departamento de Administração', '32032030', 'adm@mackenzie.com.br', 'DA', '43198423000170');
INSERT INTO DEPARTAMENTO (nome, telefone, email, sigla, cnpj_faculdade)
VALUES ('Departamento de Ciências Humanas', '30453826', 'dch@mackenzie.com.br', 'DCH', '43198423000170');
INSERT INTO DEPARTAMENTO (nome, telefone, email, sigla, cnpj_faculdade)
VALUES ('Departamento de Direito', '36236430', 'ddir@uninassau.com.br', 'DDir', '05280452000198');

-- PROFESSOR
INSERT INTO PROFESSOR
VALUES ('52891896025', '352', 3500.00, 'Matemática', '2018-12-09', 1, 3, 'classe 1', 2, 0);
INSERT INTO PROFESSOR
VALUES ('85875388021', '752', 4000.00, 'Direito', '2018-10-09', 5, 3, 'classe 2', 5, 0);
INSERT INTO PROFESSOR
VALUES ('71817266098', '460', 4000.00, 'Computação', '2018-10-15', 2, 2, 'classe 3', 1, 1);
INSERT INTO PROFESSOR
VALUES ('69835863016', '732', 3500.00, 'História', '2018-07-08', 4, 1, 'classe 4', 4, 1);
INSERT INTO PROFESSOR
VALUES ('53809508098', '615', 5000.00, 'Computação', '2018-08-05', 2, 2, 'classe 5', 1, 0);
INSERT INTO PROFESSOR
VALUES ('72846394721', '362', 5000.00, 'Administração', '2018-06-07', 1, 2, 'classe 6', 3, 0);

-- CURSO
INSERT INTO CURSO (descricao, email, turno, duracao, especialidade, vagas, carga_horaria,
		codigo_departamento, professor_coordenador, data_inicio_coordenacao, data_fim_coordenacao)
VALUES ('O Direito é a ciência que cuida da aplicação e do cumprimento das normas
		jurídicas de um país para organizar e manter um bom relacionamento interpessoal
        entre os grupos e indivíduos da sociedade. O curso de Direito é do tipo bacharelado
        e dura em média 5 anos.', 'dir@uninassau.com.br', 'INTEGRAL', 5, 'Direito', 60, 4210,
        5, '85875388021', '2017-12-09', '2018-12-09');
INSERT INTO CURSO (descricao, email, turno, duracao, especialidade, vagas, carga_horaria,
		codigo_departamento, professor_coordenador, data_inicio_coordenacao, data_fim_coordenacao)
VALUES ('O curso de Engenharia Civil é uma das mais tradicionais modalidades da Engenharia
		e forma profissionais capazes de elaborar, executar e fiscalizar projetos e obras
        como casas, prédios, pontes, viadutos, estradas e barragens.', 'civil@ufrj.br', 
        'MATUTINO', 4, 'Engenharia Civil', 80, 3210, 2, '52891896025', '2018-05-09', '2019-5-09');
INSERT INTO CURSO (descricao, email, turno, duracao, especialidade, vagas, carga_horaria,
		codigo_departamento, professor_coordenador, data_inicio_coordenacao, data_fim_coordenacao)
VALUES ('O curso de Licenciatura Plena em História objetiva formar professores dos ensinos
		 Fundamental e Médio, apoiados em uma cultura geral que possibilite estabelecer um
         diálogo maduro e eficaz com outros campos dos conhecimentos humano e científico. 
         O curso foi estruturado para oferecer sólida formação nas áreas, campos de estudo
         e investigação da História, o que, aliado ao conhecimento pedagógico, possibilita a
         inserção do profissional na realidade que o cerca.', 'historia@mackenzie.com.br', 
        'MATUTINO', 4, 'História', 40, 2810, 4, '69835863016', '2018-03-09', '2019-03-09');
INSERT INTO CURSO (descricao, email, turno, duracao, especialidade, vagas, carga_horaria,
		codigo_departamento, professor_coordenador, data_inicio_coordenacao, data_fim_coordenacao)
VALUES ('Ciência da computação é a ciência que estuda as técnicas, metodologias e instrumentos
		computacionais, que automatiza processos e desenvolve soluções baseadas no uso do 
        processamento de dados. Não se restringe apenas ao estudo dos algoritmos, suas 
        aplicações e implementação na forma de software, extrapolando para todo e qualquer 
        conhecimento pautado no computador, que envolve também a telecomunicação, o banco de
        dados e as aplicações tecnológicas que possibilitam atingir o tratamento de dados de
        entrada e saída, de forma que se transforme em informação.', 'cin@ufpe.br', 
        'VESPERTINO', 5, 'Computação', 80, 3210, 1, '53809508098', '2018-09-10', '2019-09-10');
INSERT INTO CURSO (descricao, email, turno, duracao, especialidade, vagas, carga_horaria,
		codigo_departamento, professor_coordenador, data_inicio_coordenacao, data_fim_coordenacao)
VALUES ('A Administração ou Gestão é a ciência social que estuda e sistematiza as práticas 
		usadas para administrar. O termo "administração" significa direção, gerência. 
        Ou seja, é o ato de administrar ou gerir negócios, pessoas ou recursos, com o 
        objetivo de alcançar metas definidas.', 'adm@mackenzie.com.br', 
        'NOTURNO', 4, 'Administração', 40, 3050, 3, '72846394721', '2018-08-10', '2019-08-10');

-- TRILHA
INSERT INTO TRILHA (descricao, codigo_area)
VALUES ('Manipulação de dados', 2);
INSERT INTO TRILHA (descricao, codigo_area)
VALUES ('Cálculo algébrico', 1);
INSERT INTO TRILHA (descricao, codigo_area)
VALUES ('Estudo da mecânica', 3);
INSERT INTO TRILHA (descricao, codigo_area)
VALUES ('História da arte', 4);
INSERT INTO TRILHA (descricao, codigo_area)
VALUES ('Direito para empresas', 5);

-- DISCIPLINA
INSERT INTO DISCIPLINA(nome, descricao, ementa, e_graduacao, e_pos_graduacao, creditos,
	periodo_indicado, tipo, carga_horaria, cod_trilha, cod_curso)
VALUES ('Álgebra Linear', 'Introdução a álgebra linear', 'Disciplina contem vetores, 
		matrizes etc', 1, 0, 4, 2, 'OBRIGATORIA', 60, 2, 2);
INSERT INTO DISCIPLINA (nome, descricao, ementa, e_graduacao, e_pos_graduacao, creditos,
	periodo_indicado, tipo, carga_horaria, cod_trilha, cod_curso)
VALUES ('Banco de Dados', 'Disciplina sobre SGBDs e representação de um sistema em dados',
		'Modelo entidade-relacionamento, Modelo Relacional, Modelo Físico, MySQL', 1, 0,
        4, 4, 'OBRIGATORIA', 60, 1, 4);
INSERT INTO DISCIPLINA (nome, descricao, ementa, e_graduacao, e_pos_graduacao, creditos,
	periodo_indicado, tipo, carga_horaria, cod_trilha, cod_curso)
VALUES ('História e Arte da Grécia', 'Disciplina sobre a rica cultura da Grécia', 'História
		da Grécia desde o século XIX até hoje', 0, 1, 8, 3, 'OPTATIVA', 120, 4, 3);
INSERT INTO DISCIPLINA (nome, descricao, ementa, e_graduacao, e_pos_graduacao, creditos,
	periodo_indicado, tipo, carga_horaria, cod_trilha, cod_curso)
VALUES ('Direito Bancário', 'Regras e princípios de atividades bancárias', 'Recepção de 
		depósitos, empréstimo de fundos, e outras operações ativas e passivas', 1, 0, 4, 7,
        'OPTATIVA', 40, 5, 2);
INSERT INTO DISCIPLINA (nome, descricao, ementa, e_graduacao, e_pos_graduacao, creditos,
	periodo_indicado, tipo, carga_horaria, cod_trilha, cod_curso)
VALUES ('Mecânica I', 'Estudo matemático dos movimentos', 'Movimento uniforme, movimento
		uniformemente variado e movimento circular', 1, 0, 4, 1, 'OBRIGATORIA', 60, 3, 2);

-- PRE REQUISITO
INSERT INTO PRE_REQUISITO
VALUES	(1, 2),
		(2, 3),
        (3, 2),
        (3, 4);

-- CO REQUISITO

-- OFERTA
INSERT INTO OFERTA
VALUES (5, 3, 2018, 40, '2', 3, '52891896025');
INSERT INTO OFERTA
VALUES (5, 2, 2018, 40, '1', 3, '52891896025');
INSERT INTO OFERTA
VALUES (4, 4, 2016, 20, '1', 5, '85875388021');
INSERT INTO OFERTA
VALUES (2, 1, 2015, 40, '2', 6, '71817266098');
INSERT INTO OFERTA
VALUES (1, 1, 2013, 20, '2', 4, '52891896025');

-- DIA
INSERT INTO DIA (dia)
VALUES ('Segunda');
INSERT INTO DIA (dia)
VALUES ('Quarta');
INSERT INTO DIA (dia)
VALUES ('Quinta');

-- HORARIO OFERTA
INSERT INTO HORARIO_OFERTA
VALUES (2, 1, '14:00', '16:00', 1);
INSERT INTO HORARIO_OFERTA
VALUES (5, 3, '16:00', '18:00', 3);
INSERT INTO HORARIO_OFERTA
VALUES (5, 2, '10:00', '12:00', 2);
INSERT INTO HORARIO_OFERTA
VALUES (1, 1, '08:00', '10:00', 1);
INSERT INTO HORARIO_OFERTA
VALUES (4, 4, '18:00', '20:00', 2);
INSERT INTO HORARIO_OFERTA
VALUES (4, 2, '18:00', '20:00', 2);

-- ALUNO_OFERTA
INSERT INTO ALUNO_OFERTA (cpf_aluno, cod_disciplina, sequencial_oferta, frequencia,
							nota_1, nota_2, final)
VALUES	('08723738430', 2, 1, 14, 8, 8, 5),
		('71907636005', 1, 1, 21, 5, 3, 6),
        ('76123754009', 7, 2, 30, 7, 9, 4),
        ('08723738430', 6, 4, 22, 5, 1, 4),
        ('71907636005', 7, 2, 23, 6, 7, 8);

-- BIBLIOTECA
INSERT INTO BIBLIOTECA (faculdade, nome, data_criacao)
VALUES	('91697364000128', 'Biblioteca de Ciências Sociais Aplicadas', '1994-05-12'),
		('91697364000128', 'Biblioteca de Matemática Estatística e Informática', '2005-09-27'),
        ('43198423000170', 'Biblioteca George Alexander', '1927-02-01'),
        ('05280452000198', 'Biblioteca', '2015-05-24'),
        ('94500853000136', 'Biblioteca de Engenharia Civil', '1997-07-09');

-- TIPO_EMPRESTIMO
INSERT INTO TIPO_EMPRESTIMO (descricao, valor_multa_diaria)
VALUES	('Empréstimo para estudantes de Graduação', 1.5),
		('Empréstimo para estudantes de Pós-Graduação', 3.0);

-- SALA_BIBLIOTECA
INSERT INTO SALA_BIBLIOTECA (descricao, estado, codigo_biblioteca, tipo)
VALUES	('Sala com ar-condicionado e sem quadro branco', 'LIVRE', 1, 'ESTUDO'),
		('Sala sem ar-condicionado e com quadro branco', 'OCUPADA', 1, 'ESTUDO'),
		('Sala com ar-condicionado e com quadro branco', 'LIVRE', 2, 'ESTUDO'),
		('Sala com caixa de som e um datashow', 'RESERVADA', 4, 'EVENTO'),
        ('Sala com ar-condicionado e sem quadro branco', 'LIVRE', 1, 'ESTUDO');

INSERT INTO LIVRO (titulo, genero, isbn, ano_publicacao,
					editora, edicao, autor, numero_exemplares,
					codigo_area, codigo_biblioteca)
VALUES	('Cartas de um diabo a seu aprendiz', 'antropologia, filosofia e teologia', '9788578271114', 2009, 'Thomas Nelson Brasil', 2, 'CS Lewis', 10, 6, 1),
		('The Cronicles of Narnia', 'aventura', '9780066238500', 2016, 'HarperCollins', 1, 'CS Lewis', 20, 6, 1),
        ('Cálculo - Volume 1', 'Ciências', '8522112584', 2013, 'Cengage', 7, 'James Stewart', 24, 1, 2),
        ('Cálculo - Volume 2', 'Ciências', '8522112592', 2013, 'Cengage', 7, 'James Stewart', 12, 1, 2),
        ('Álgebra Linear com Aplicações', 'Ciências', '8540701693', 2012, 'Bookman', 10, 'H. Anton, C. Rorres', 15, 1, 2);

-- PRATELEIRA
INSERT INTO PRATELEIRA (nivel, descricao)
VALUES (1, "Álgebra Linear");
INSERT INTO PRATELEIRA (nivel, descricao)
VALUES (3, "Metodologia Científica");
INSERT INTO PRATELEIRA (nivel, descricao)
VALUES (2, "Use a cabeça! Java");
INSERT INTO PRATELEIRA (nivel, descricao)
VALUES (4, "Cálculo I");
INSERT INTO PRATELEIRA (nivel, descricao)
VALUES (1, "Constituição do Brasil");

-- EXEMPLAR
INSERT INTO EXEMPLAR
VALUES (7, 1, 0, 2);
INSERT INTO EXEMPLAR
VALUES (11, 1, 1, 1);
INSERT INTO EXEMPLAR
VALUES (8, 1, 0, 6);
INSERT INTO EXEMPLAR
VALUES (9, 1, 0, 3);
INSERT INTO EXEMPLAR
VALUES (10, 1, 1, 3);

-- RESERVA
INSERT INTO RESERVA
VALUES 	('08723738430', 1, '2018-12-13', '19:00', '20:00'),
		('08792462006', 2, '2018-12-14', '19:00', '20:00'),
        ('52891896025', 2, '2018-12-14', '15:00', '16:00'),
        ('69835863016', 3, '2018-12-15', '14:00', '15:00'),
        ('69835863016', 1, '2018-12-16', '17:00', '18:00');

-- EMPRESTIMO
INSERT INTO EMPRESTIMO
VALUES 	(8, 1, '08723738430', 1, '2018-12-13', '2018-12-18', 0, 0, 0),
		(8, 1, '08792462006', 2, '2018-02-15', '2018-02-20', 0, 0, 0),
        (9, 1, '52891896025', 1, '2018-12-15', '2018-12-20', 15.5, 1, 0),
        (10, 1,'53809508098', 2, '2018-12-07', '2018-12-12', 6, 0, 1),
        (11, 1,'69835863016', 2, '2018-12-10', '2018-12-15', 3, 1, 0);

-- CANDIDATO
INSERT INTO CANDIDATO
VALUES 	('08723738430'),
		('08792462006'),
        ('71907636005'),
        ('76123754009'),
        ('89318239084');

-- INSCRICAO
INSERT INTO INSCRICAO
VALUES 	(2, '08723738430', 90, '2018-10-15', 1, '2018-10-10'),
		(3, '08792462006', 90, '2018-09-15', 1, '2018-09-12'),
        (4, '71907636005', 90, '2018-09-20', 0, '2018-09-17'),
        (5, '76123754009', 90, '2018-10-13', 1, '2018-10-10'),
        (6, '89318239084', 90, '2018-10-05', 1, '2018-10-01');

SELECT * FROM prova;
-- LOCAL_PROVA
INSERT INTO LOCAL_PROVA (capacidade, numero, descricao, referencia, tipo, cep_endereco)
VALUES 	(30, 201, "Sala do 5 andar", "Perto da padaria Viver", "Prova da Fase 1", '01302000'),
		(20, 406, "Sala do 4 andar", "Perto da padaria Viver", "Prova da Fase 1", '01302000'),
        (50, 311, "Sala do 3 andar", "Perto do Hospital Restauração", "Prova da Fase 2", '51021140'),
        (40, 384, "Sala do 3 andar", "Perto do Hospital Restauração", "Prova da Fase 2", '51021140'),
        (30, 472, "Sala do 4 andar", "Perto do Hospital Restauração", "Prova da Fase 2", '51021140');
        
-- PROVA
INSERT INTO PROVA (materia, data_realizacao, codigo_area, codigo_local)
VALUES 	("Matemática", '2018-12-23', 1, 1),
		("Português", '2019-01-10', 6, 2),
        ("História", '2019-02-05', 4, 3),
        ("Física", '2019-01-20', 3, 4),
        ("Lógica de Programação", '2019-02-10', 2, 5);

-- CANDIDATO_REALIZA_PROVA
INSERT INTO CANDIDATO_REALIZA_PROVA
VALUES 	('08723738430', 3, 10, 1),
		('08792462006', 1, 9.5, 1),
        ('71907636005', 2, 7, 1),
        ('76123754009', 4, 8, 1),
        ('89318239084', 5, 0, 0);

-- PAGAMENTO
INSERT INTO PAGAMENTO (foi_pago, data_geracao, desconto, valor_desconto, valor_total_final)
VALUES 	(1, '2018-12-06', 0, 0, 2000.00),
		(0, '2018-12-13', 30, 900.00, 1000.00),
        (0, '2018-12-13', 0, 0, 1200.00),
        (1, '2018-10-05', 0, 0 , 900.00),
        (1, '2018-09-10', 0, 0, 1100.00);

-- MENSALIDADE
INSERT INTO MENSALIDADE (valor, data_emissao, data_vencimento, situacao, codigo_aluno, codigo_pagamento)
VALUES 	(2000.00, '2018-12-05', '2018-12-10', 1, '71907636005', 1),
		(1000.00, '2018-12-10', '2018-12-15', 1, '08723738430', 2),
        (1200.00, '2018-12-10', '2018-12-15', 1, '08792462006', 3),
        (900.00, '2018-10-05', '2018-10-10', 1, '76123754009', 4),
        (1100.00, '2018-09-05', '2018-09-10', 1, '89318239084', 5);

-- FUNCIONARIO
INSERT INTO FUNCIONARIO
VALUES 	('16641283011', "Maria", "6335878484", "140535998", 'F', 34, '1984-01-22', 2500.00, 1, 40, "Ensino Superior", 'SECRETARIO', 
			"Organizar os eventos", 'INTEGRAL', '09:00', '18:00', '20010020'),
		('43187128009', "Antonio", "3839628413", "325723023", 'M', 52, '1966-11-05', 3000.00, 1, 40, "Pós-graduação", 'SECRETARIO', 
			"Organizar as escalas dos funcionários", 'INTEGRAL', '08:00', '17:00', '22640100'),
        ('59113823000', "José", "9635288513", "501664968", 'M', 45, '1973-01-19', 1500.00, 0, 20, "Ensino Médio", 'FAXINEIRO', 
			"Limpar os prédios", 'VESPERTINO', '16:00', '20:00', '51130130'),
        ('10692353003', "Camila", "3138208032", "308448352", 'F', 27, '1991-10-08', 2000.00, 0, 40, "Ensino Médio", 'SEGURANCA', 
			"Vigia noturno", 'NOTURNO', '16:00', '01:00', '51030030'),
        ('57145028093', "Jessamine", "8639442287", "357877275", 'F', 29, '1989-08-23', 2500.00, 0, 40, "Ensino Superior", 
			'FISCAL DE PROVA', "Fiscal de prova de seleção", 'MATUTINO', '06:00', '15:00', '02402020');
            
-- DEPENDENTE
INSERT INTO DEPENDENTE
VALUES 	('43187128009', 1, 'CONJUGE', "Ana"),
		('16641283011', 1, 'FILHO', "Matheus"),
        ('43187128009', 2, 'FILHO', "Felipe"),
        ('57145028093', 1, 'MAE', "Claudia"),
        ('10692353003', 1, 'PAI', "Otavio");
        
-- JURO
INSERT INTO JURO (taxa, tipo, descricao)
VALUES 	(3.5, 'SIMPLES', "Multa de atraso da mensalidade de graduação"),
		(5, 'SIMPLES', "Multa de atraso da mensalidade de pós-graduação");

-- PROJETO
INSERT INTO PROJETO (titulo, tema, tipo, situacao, data_inicio, data_fim,
						resumo, area, subarea, orientado_por, coorientado_por)
VALUES	('Programa Livro Texto', 'Produção de Livro-Texto em formato digital', 'TEMPO INDETERMINADO', TRUE, 2018-10-15, NULL, 'Formação de uma biblioteca digital básica disponível ao estudante de graduação, preferencialmente, publicando livros de várias áreas do conhecimento, resultantes de textos produzidos por docentes da UFPE.', 6, 7, NULL, NULL),
		('Curso de Residência em Software', 'Programa de residência em software', 'PROGRAMA', TRUE, 2000-05-16, NULL, 'O programa tem como objetivo principal incentivar a formação de recursos humanos com alto grau de especialização em testes de software embarcado e aplicações em computação móvel, com os incentivos e benefícios previstos na Lei de Informática. O foco de atuação desta turma será o planejamento, projeto, automação e execução de diversos tipos de testes, realizados em aplicações para celulares.', 2, 2, NULL, NULL),
        ('Transtorno do Espectro do Autismo e Educação', 'Transtorno do Espectro do Autismo e Educação', 'PROJETO DE PESQUISA', TRUE, 2005-04-29, 'Políticas Públicas e Educação Especial: diagnóstico da realidade do atendimento educacional às Crianças e propostas de Intervenção.', 8, 8, NULL, NULL),
        ('PEG', 'Engenharia de Software', 'PROJETO DE PESQUISA', FALSE, 2013-09-16, 2017-12-01, 'Projeto de Análise em termos de engenharia de software', 8, 8, '52891896025', NULL),
        ('Viajando na maio naise', 'PROJETO SOCIAL', TRUE, 2017-05-30, NULL, 'Projeto do impacto social da ociosidade dos moradores de uma comunidade de baixa renda', 6, 6, '52891896025', '72846394721');

-- TO DO DOCUMENTO

-- TO DO PROJETO_TEM_ALUNO

-- TO DO BENEFICIO

-- TO DO TRABALHO_ACADEMICO

-- TO DO BANCA_EXAMINADORA

-- PARCELA
INSERT INTO PARCELA (cod_pagamento, data_geracao, data_pagamento, valor_pago, data_vencimento, pago, juros)
VALUES 	(1, '2018-12-06', '2018-12-06', 1000.00, '2018-12-10', 1, 2),
		(1, '2018-12-06', '2018-12-08', 1000.00, '2018-12-10', 1, 2),
        (3, '2018-12-13', '2018-12-13', 1200.00, '2018-12-15', 0, 2),
        (4, '2018-10-05', '2018-10-05', 900.00, '2018-10-10', 1, 1),
        (5, '2018-09-10', '2018-09-10', 1100.00, '2018-09-15', 1, 1);
