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
VALUES (7, 1);

-- CO REQUISITO

-- OFERTA
INSERT INTO OFERTA
VALUES (7, 3, 2018, 40, '2', 3, '52891896025');
INSERT INTO OFERTA
VALUES (7, 2, 2018, 40, '1', 3, '52891896025');
INSERT INTO OFERTA
VALUES (6, 4, 2016, 20, '1', 5, '85875388021');
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
VALUES (7, 3, '16:00', '18:00', 3);
INSERT INTO HORARIO_OFERTA
VALUES (7, 2, '10:00', '12:00', 2);
INSERT INTO HORARIO_OFERTA
VALUES (1, 1, '08:00', '10:00', 1);
INSERT INTO HORARIO_OFERTA
VALUES (6, 4, '18:00', '20:00', 2);