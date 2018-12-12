-- To acquire permissions to use this database execute as root user:
-- GRANT ALL ON faculdade_privada.* TO 'your_username'@'host_address_ip(localhost)';

CREATE DATABASE IF NOT EXISTS faculdade_privada;
USE faculdade_privada;

-- SHOW TABLES;


-- MER_Faculdade_Privada_1_Final

CREATE TABLE IF NOT EXISTS ENDERECO (
	cep			VARCHAR(8) NOT NULL,
    cidade		VARCHAR(30),
    estado		VARCHAR(30),
    edicicio	VARCHAR(50),
    logradouro	TEXT,
    PRIMARY KEY(cep)
);

CREATE TABLE IF NOT EXISTS LOCALIZACAO (
	id			INTEGER NOT NULL AUTO_INCREMENT,
    predio		TEXT,
    andar		VARCHAR(2),
    num_sala	INT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS AREA_CONHECIMENTO (
	codigo		INTEGER NOT NULL AUTO_INCREMENT,
    descricao	VARCHAR(1500),
    PRIMARY KEY (codigo)
);

CREATE TABLE IF NOT EXISTS SUBAREA_CONHECIMENTO (
	codigo		INTEGER NOT NULL AUTO_INCREMENT,
    descricao	TEXT,
    codigo_area	INTEGER,
    PRIMARY KEY(codigo),
    FOREIGN KEY(codigo_area) REFERENCES AREA_CONHECIMENTO(codigo)
);

CREATE TABLE IF NOT EXISTS FACULDADE (
	cnpj				VARCHAR(14) NOT NULL,
    nome_fantasia		VARCHAR(50),
    possui_biblioteca	BOOLEAN,
    telefone_1			VARCHAR(15), 
    telefone_2			VARCHAR(15),
    email				VARCHAR(50),
    cep					VARCHAR(8) NOT NULL,
    num_end				VARCHAR(5),
    PRIMARY KEY(cnpj),
    FOREIGN KEY(cep) REFERENCES ENDERECO(cep)
);

CREATE TABLE IF NOT EXISTS CALENDARIO_ACADEMICO (
	data_ref	 		DATE NOT NULL,		 
    data_evento 		DATE,
    data_inicio			DATE,
    data_fim			DATE,
    local_id			INTEGER,
    e_feriado			BOOLEAN,
    descricao_feriado	TEXT,
    descricao_item		TEXT,
    evento				VARCHAR(100),
    cnpj_faculdade		VARCHAR(14),
    PRIMARY KEY(data_ref),
    FOREIGN KEY(local_id) REFERENCES LOCALIZACAO(id),
    FOREIGN KEY(cnpj_faculdade) REFERENCES FACULDADE(cnpj)
);

CREATE TABLE IF NOT EXISTS USUARIO (
	cpf				VARCHAR(11) NOT NULL,
    login			VARCHAR(50),	
    senha			VARCHAR(50),	
    email			VARCHAR(50),
    nome			VARCHAR(80), 
    cv_lattes		BLOB, 
    dt_nasc			DATE, 
    idade			INT(3), 
    sexo			ENUM('F','M'), 
    RG				VARCHAR(20), 
    telefone		VARCHAR(15), 
    cep_endereco	VARCHAR(8) NOT NULL,  
    num_end			VARCHAR(5),
    PRIMARY KEY(cpf),
    FOREIGN KEY(cep_endereco) REFERENCES ENDERECO(cep)
);

CREATE TABLE IF NOT EXISTS ALUNO (
	cpf_usuario			VARCHAR(11) NOT NULL,
    numero_matricula	TEXT,
    data_matricula		DATE,
    ano_sem_entrada		YEAR,
    e_bolsista			BOOLEAN,
    org_finan_bolsa		VARCHAR(50),
    data_inic			DATE,
    data_fim			DATE,
    valor_bolsa			DOUBLE(37, 2),
    situacao			VARCHAR(50),
    PRIMARY KEY(cpf_usuario),
    FOREIGN KEY(cpf_usuario) REFERENCES USUARIO(cpf)
);

CREATE TABLE IF NOT EXISTS DEPARTAMENTO (
	codigo					INTEGER NOT NULL AUTO_INCREMENT,
    nome					VARCHAR(80),
    telefone				VARCHAR(15),
    email					VARCHAR(50),
    sigla					VARCHAR(10),
    cnpj_faculdade			VARCHAR(14),
    data_inicio_professor	DATE,
    data_fim_professor		DATE,
    PRIMARY KEY(codigo),
    FOREIGN KEY(cnpj_faculdade) REFERENCES FACULDADE(cnpj)
);

CREATE TABLE IF NOT EXISTS PROFESSOR (
	cpf_usuario			VARCHAR(11) NOT NULL,
    numero_registro		VARCHAR(10),
    salario				DOUBLE(37, 2),
    especialidade		VARCHAR(50),
    data_admissao		DATE,
    codigo_area			INTEGER,
    nivel				INT,
    classe				VARCHAR(30),
    cod_dept			INTEGER,
    e_diretor			BOOLEAN,
    PRIMARY KEY(cpf_usuario),
    FOREIGN KEY(cpf_usuario) REFERENCES USUARIO(cpf),
    FOREIGN KEY(codigo_area) REFERENCES AREA_CONHECIMENTO(codigo),
    FOREIGN KEY(cod_dept) REFERENCES DEPARTAMENTO(codigo)
);

CREATE TABLE IF NOT EXISTS CURSO (
	codigo					INTEGER NOT NULL AUTO_INCREMENT,	
    descricao				TEXT,
    email					VARCHAR(50),
    turno					ENUM(	'MATUTINO',
									'VESPERTINO',
									'NOTURNO',
                                    'INTEGRAL'),
    duracao					INT,
    especialidade			VARCHAR(50),
    vagas					INT,
    carga_horaria			INT,
    codigo_departamento		INTEGER,
    professor_coordenador	VARCHAR(11) NOT NULL UNIQUE,
    data_inicio_coordenacao	DATE,
    data_fim_coordenacao	DATE,
    PRIMARY KEY(codigo),
    FOREIGN KEY(codigo_departamento) REFERENCES DEPARTAMENTO(codigo),
    FOREIGN KEY(professor_coordenador) REFERENCES PROFESSOR(cpf_usuario)
);

CREATE TABLE IF NOT EXISTS TRILHA (
	id				INTEGER NOT NULL AUTO_INCREMENT,
    descricao		TEXT,
    codigo_area		INTEGER,
    PRIMARY KEY(id),
    FOREIGN KEY(codigo_area) REFERENCES AREA_CONHECIMENTO(codigo)
);

CREATE TABLE IF NOT EXISTS DISCIPLINA (
	codigo				INTEGER NOT NULL AUTO_INCREMENT,
    nome				VARCHAR(80),
    descricao			TEXT,
    ementa				TEXT,	-- talvez colocar um BLOB para arquivo
    e_graduacao			BOOLEAN,
    e_pos_graduacao		BOOLEAN,
    creditos			INT,
    periodo_indicado	INT,
    tipo				ENUM(	'OPTATIVA',
								'OBRIGATORIA'),
	carga_horaria		INT,
    cod_trilha			INTEGER,
    cod_curso			INTEGER,
    PRIMARY KEY(codigo),
    FOREIGN KEY(cod_trilha) REFERENCES TRILHA(id),
    FOREIGN KEY(cod_curso) REFERENCES CURSO(codigo)
);

CREATE TABLE IF NOT EXISTS PRE_REQUISITO (
	disciplina_principal		INTEGER NOT NULL,
	disciplina_pre_requisito	INTEGER NOT NULL,
    FOREIGN KEY(disciplina_principal) REFERENCES DISCIPLINA(codigo),
    FOREIGN KEY(disciplina_pre_requisito) REFERENCES DISCIPLINA(codigo),
    CONSTRAINT pk_pre_requisito PRIMARY KEY(disciplina_principal, disciplina_pre_requisito)
);

CREATE TABLE IF NOT EXISTS CO_REQUISITO (
	disciplina_principal		INTEGER NOT NULL,
	disciplina_co_requisito		INTEGER NOT NULL,
    FOREIGN KEY(disciplina_principal) REFERENCES DISCIPLINA(codigo),
    FOREIGN KEY(disciplina_co_requisito) REFERENCES DISCIPLINA(codigo),
    CONSTRAINT pk_co_requisito PRIMARY KEY(disciplina_principal, disciplina_co_requisito)
);

CREATE TABLE IF NOT EXISTS OFERTA (
	codigo_disciplina	INTEGER NOT NULL,
    sequencial			INT NOT NULL,			
    ano					YEAR,
    vagas				INT,
    semestre			ENUM('1', '2'),
    local_id			INTEGER,
    cpf_professor		VARCHAR(11),
    FOREIGN KEY(codigo_disciplina) REFERENCES DISCIPLINA(codigo),
    FOREIGN KEY(local_id) REFERENCES LOCALIZACAO(id),
    FOREIGN KEY(cpf_professor) REFERENCES PROFESSOR(cpf_usuario),
    CONSTRAINT pk_oferta PRIMARY KEY(codigo_disciplina, sequencial),
    UNIQUE INDEX (sequencial)
);

CREATE TABLE IF NOT EXISTS DIA (
	codigo	INTEGER NOT NULL AUTO_INCREMENT,
    dia		ENUM (	'Domingo',
					'Segunda',
                    'Terça',
                    'Quarta',
					'Quinta',
					'Sexta',
					'Sábado'),
	PRIMARY KEY(codigo)
);

CREATE TABLE IF NOT EXISTS HORARIO_OFERTA (
	cod_disciplina	INTEGER NOT NULL,
    sequencial		INT NOT NULL,
    hr_inicio		TIME NOT NULL,
    hr_fim			TIME,
    dia				INTEGER,
    FOREIGN KEY(cod_disciplina) REFERENCES DISCIPLINA(codigo),
    FOREIGN KEY(dia) REFERENCES DIA(codigo),
	CONSTRAINT pk_horario_oferta PRIMARY KEY(cod_disciplina, sequencial, hr_inicio)
);

CREATE TABLE IF NOT EXISTS ALUNO_OFERTA (
	cpf_aluno			VARCHAR(11),
    sequencial_oferta	INT,
    frequencia			INT,
    nota_1				DOUBLE(2, 2),
    nota_2				DOUBLE(2, 2),
	final				DOUBLE(2, 2),
    FOREIGN KEY(cpf_aluno) REFERENCES ALUNO(cpf_usuario),
    FOREIGN KEY(sequencial_oferta) REFERENCES OFERTA(sequencial),
    CONSTRAINT pk_aluno_oferta PRIMARY KEY(cpf_aluno, sequencial_oferta)
);

CREATE TABLE IF NOT EXISTS BIBLIOTECA (
	codigo			INTEGER NOT NULL AUTO_INCREMENT,
    faculdade		VARCHAR(14),
    nome			VARCHAR(80),
    data_criacao	DATE,
    PRIMARY KEY(codigo),
    FOREIGN KEY(faculdade) REFERENCES FACULDADE(cnpj)
);

CREATE TABLE IF NOT EXISTS TIPO_EMPRESTIMO (
	codigo				INTEGER NOT NULL AUTO_INCREMENT,
    descricao			TEXT,
	valor_multa_diaria	DOUBLE(37,2),
    PRIMARY KEY(codigo)
);

CREATE TABLE IF NOT EXISTS SALA_BIBLIOTECA (
	numero				INTEGER NOT NULL AUTO_INCREMENT,			-- PK
    descricao			TEXT,
    estado				ENUM(	'LIVRE',
								'OCUPADA',
								'RESERVADA',
								'FECHADA' ),
	codigo_biblioteca	INTEGER,
    tipo				ENUM(	'EVENTO',
								'ESTUDO'),
    PRIMARY KEY(numero),
    FOREIGN KEY(codigo_biblioteca) REFERENCES BIBLIOTECA(codigo)
);

CREATE TABLE IF NOT EXISTS LIVRO (
	codigo				INTEGER NOT NULL AUTO_INCREMENT,
    titulo				VARCHAR(80),
    genero				VARCHAR(50),
    isbn				VARCHAR(13),
    ano_publicacao		YEAR,
    editora				VARCHAR(80),
    edicao				INT,
    autor				VARCHAR(80),
    numero_exemplares	INT,
    codigo_area			INTEGER,		-- FK
    codigo_biblioteca	INTEGER,
    PRIMARY KEY(codigo),
    FOREIGN KEY(codigo_area) REFERENCES AREA_CONHECIMENTO(codigo),
    FOREIGN KEY(codigo_biblioteca) REFERENCES BIBLIOTECA(codigo)
);

CREATE TABLE IF NOT EXISTS PRATELEIRA (
	codigo		INTEGER NOT NULL AUTO_INCREMENT,
	nivel		INT,
    descricao	TEXT,
    PRIMARY KEY(codigo)
);

CREATE TABLE IF NOT EXISTS EXEMPLAR (
	codigo_livro		INTEGER NOT NULL,
    sequencial			INT NOT NULL,
    esta_emprestado		BOOLEAN,
    codigo_prateleira	INTEGER,
    FOREIGN KEY(codigo_livro) REFERENCES LIVRO(codigo),
    FOREIGN KEY(codigo_prateleira) REFERENCES PRATELEIRA(codigo),
    CONSTRAINT pk_exemplar PRIMARY KEY(codigo_livro, sequencial)
);

CREATE TABLE IF NOT EXISTS RESERVA (
	cpf_usuario			VARCHAR(11) NOT NULL,
    numero_sala			INTEGER NOT NULL,
    data_reserva		DATE NOT NULL,
    hora_inicio			TIME,
    hora_fim			TIME,
    FOREIGN KEY(cpf_usuario) REFERENCES USUARIO(cpf),
    FOREIGN KEY(numero_sala) REFERENCES SALA_BIBLIOTECA(numero),
    CONSTRAINT pk_reserva PRIMARY KEY(cpf_usuario, numero_sala, data_reserva)
);

CREATE TABLE IF NOT EXISTS EMPRESTIMO (
	codigo_livro		INTEGER NOT NULL,
    sequencial			INT NOT NULL,
    cpf_usuario			VARCHAR(11) NOT NULL UNIQUE,
    cod_tipo			INTEGER NOT NULL UNIQUE,
    data_emprestimo		DATE,
    data_devolucao		DATE,
    valor_total_multa	DOUBLE(37,2),
    foi_pago			BOOLEAN,
    esta_atrasado		BOOLEAN,
    FOREIGN KEY(codigo_livro, sequencial) REFERENCES EXEMPLAR(codigo_livro, sequencial),
    FOREIGN KEY(cpf_usuario) REFERENCES USUARIO(cpf),
    FOREIGN KEY(cod_tipo) REFERENCES TIPO_EMPRESTIMO(codigo),
    CONSTRAINT pk_emprestimo PRIMARY KEY(codigo_livro, sequencial, cpf_usuario, cod_tipo)
);

-- MER_Faculdade_Privada_2_Final

CREATE TABLE IF NOT EXISTS CANDIDATO (
	cpf		VARCHAR(11) NOT NULL,
	FOREIGN KEY(cpf) REFERENCES USUARIO(cpf),
    PRIMARY KEY(cpf)
);

CREATE TABLE IF NOT EXISTS INSCRICAO (
	codigo_curso		INTEGER NOT NULL,
    cpf_candidato		VARCHAR(11) NOT NULL,
    valor				DOUBLE(37,2),
    data_pagamento		DATE,
    situacao			BOOLEAN,
    data_inscricao		DATE,
    FOREIGN KEY(codigo_curso) REFERENCES CURSO(codigo),
    FOREIGN KEY(cpf_candidato) REFERENCES CANDIDATO(cpf),
    CONSTRAINT pk_inscricao PRIMARY KEY(codigo_curso, cpf_candidato)
);

CREATE TABLE IF NOT EXISTS LOCAL_PROVA (
	codigo			INTEGER NOT NULL AUTO_INCREMENT,
    capacidade		INT,
    numero			INT,
    descricao		TEXT,
    referencia		TEXT,
    tipo			VARCHAR(50),
    cep_endereco	VARCHAR(8) NOT NULL,
    PRIMARY KEY(codigo),
    FOREIGN KEY(cep_endereco) REFERENCES ENDERECO(cep)
);

CREATE TABLE IF NOT EXISTS PROVA (
	codigo			INTEGER NOT NULL AUTO_INCREMENT,
    materia			VARCHAR(50),
    data_realizacao	DATE,
    codigo_area		INTEGER,
    codigo_local	INTEGER,
    PRIMARY KEY(codigo),
    FOREIGN KEY(codigo_area) REFERENCES AREA_CONHECIMENTO(codigo),
    FOREIGN KEY(codigo_local) REFERENCES LOCAL_PROVA(codigo)
);

CREATE TABLE IF NOT EXISTS CANDIDATO_REALIZA_PROVA (
	cpf_candidato	VARCHAR(11) NOT NULL,
    codigo_prova	INTEGER NOT NULL,
    nota			DOUBLE(2,2),
    situacao		BOOLEAN,
    FOREIGN KEY(cpf_candidato) REFERENCES CANDIDATO(cpf),
    FOREIGN KEY(codigo_prova) REFERENCES PROVA(codigo),
    CONSTRAINT pk_candidato_realiza_prova PRIMARY KEY(cpf_candidato, codigo_prova)
);

CREATE TABLE IF NOT EXISTS PAGAMENTO (
	codigo				INTEGER NOT NULL AUTO_INCREMENT,
    foi_pago			BOOLEAN,
    data_geracao		DATE,
    desconto			DOUBLE(37,2),
    valor_desconto		DOUBLE(37,2),
    valor_total_final	DOUBLE(37,2),
    PRIMARY KEY(codigo)
);

CREATE TABLE IF NOT EXISTS MENSALIDADE (
	sequencial			INT NOT NULL AUTO_INCREMENT,
    valor				DOUBLE(37,2),
    data_emissao		DATE,
    data_vencimento		DATE,
    situacao			BOOLEAN,
    codigo_aluno		VARCHAR(11),
    codigo_pagamento	INTEGER UNIQUE,
    PRIMARY KEY(sequencial),
    FOREIGN KEY(codigo_aluno) REFERENCES ALUNO(cpf_usuario),
    FOREIGN KEY(codigo_pagamento) REFERENCES PAGAMENTO(codigo)
);

CREATE TABLE IF NOT EXISTS FUNCIONARIO (
	cpf				VARCHAR(11),
    nome			VARCHAR(80),
    telefone		VARCHAR(15),
    rg				VARCHAR(20),
    sexo			ENUM('F', 'M'),
    idade			INT(3),
    dt_nasc			DATE,
    salario			DOUBLE(37,2),
    em_ferias		BOOLEAN,
    horas_semana	INT,
    grau_formacao	VARCHAR(50),
    tipo			ENUM(	'FISCAL DE PROVA',
							'SEGURANCA',
                            'FAXINEIRO',
                            'SECRETARIO'),
    descricao_ativ	TEXT,
    turno			ENUM(	'MATUTINO',
							'VESPERTINO',
							'NOTURNO',
                            'INTEGRAL'),
	escala_incio	TIME,
    escala_fim		TIME,
    cep_endereco	VARCHAR(8) NOT NULL,
    PRIMARY KEY(cpf),
    FOREIGN KEY(cep_endereco) REFERENCES ENDERECO(cep)
);

CREATE TABLE IF NOT EXISTS DEPENDENTE (
	cpf_funcionario		VARCHAR(11) NOT NULL,
    sequencial			INT NOT NULL,
    tipo				ENUM(	'PAI',
								'MAE',
                                'IRMAO',
                                'CONJUGE',
                                'FILHO',
                                'OUTRO'),
	nome				VARCHAR(80),
    FOREIGN KEY(cpf_funcionario) REFERENCES FUNCIONARIO(cpf),
    CONSTRAINT pk_dependente PRIMARY KEY(cpf_funcionario, sequencial)
);

CREATE TABLE IF NOT EXISTS JURO (
	codigo		INTEGER NOT NULL AUTO_INCREMENT,
    taxa		DOUBLE(37,2),
    tipo		ENUM('SIMPLES', 'COMPOSTO'),
    descricao	TEXT,
    PRIMARY KEY(codigo)
);

CREATE TABLE IF NOT EXISTS PROJETO (
	codigo			INTEGER NOT NULL AUTO_INCREMENT,
    titulo			VARCHAR(80),
    tema			VARCHAR(80),
    tipo			VARCHAR(50),
    situacao		BOOLEAN,
    data_inicio		DATE,
    data_fim		DATE,
    resumo			TEXT,
    area			INTEGER NOT NULL,	-- FK
    subarea			INTEGER NOT NULL,	-- FK
    orientado_por	VARCHAR(11),	-- FK
    coorientado_por	VARCHAR(11),
    PRIMARY KEY(codigo),
    FOREIGN KEY(area) REFERENCES AREA_CONHECIMENTO(codigo),
    FOREIGN KEY(subarea) REFERENCES SUBAREA_CONHECIMENTO(codigo),
    FOREIGN KEY(orientado_por) REFERENCES PROFESSOR(cpf_usuario),
    FOREIGN KEY(coorientado_por) REFERENCES PROFESSOR(cpf_usuario)
);

CREATE TABLE IF NOT EXISTS DOCUMENTO (
	codigo		INTEGER NOT NULL AUTO_INCREMENT,
    tipo		VARCHAR(20),
    titulo		VARCHAR(80),
    dt_criacao	DATE,
    num_folhas	INT,
    cod_proj	INTEGER,
    documento	BLOB,
    PRIMARY KEY(codigo),
    FOREIGN KEY(cod_proj) REFERENCES PROJETO(codigo)
);

CREATE TABLE IF NOT EXISTS PROJETO_TEM_ALUNO (
	codigo_projeto		INTEGER NOT NULL,
    cpf_aluno			VARCHAR(11) NOT NULL,
    FOREIGN KEY(codigo_projeto) REFERENCES PROJETO(codigo),
    FOREIGN KEY(cpf_aluno) REFERENCES ALUNO(cpf_usuario),
    CONSTRAINT pk_projeto_tem_aluno PRIMARY KEY(codigo_projeto, cpf_aluno)
);

CREATE TABLE IF NOT EXISTS BENEFICIO (
	codigo				INTEGER NOT NULL AUTO_INCREMENT,
    taxa				DOUBLE(37,2),
    descricao			TEXT,
    valor				DOUBLE(37,2),
    ano_mes				DATE,
    cpf_funcionario		VARCHAR(11),
    PRIMARY KEY(codigo),
    FOREIGN KEY(cpf_funcionario) REFERENCES FUNCIONARIO(cpf)
);

CREATE TABLE IF NOT EXISTS TRABALHO_ACADEMICO (
	codigo			INTEGER NOT NULL AUTO_INCREMENT,
    titulo			VARCHAR(80),
	resumo			TEXT,
    area			INTEGER,
    subarea			INTEGER,
    tipo			ENUM(	'TCC',
							'DISSERTACAO'),
	cpf_aluno		VARCHAR(11),
    PRIMARY KEY(codigo),
    FOREIGN KEY(area) REFERENCES AREA_CONHECIMENTO(codigo),
    FOREIGN KEY(subarea) REFERENCES SUBAREA_CONHECIMENTO(codigo),
    FOREIGN KEY(cpf_aluno) REFERENCES ALUNO(cpf_usuario)
);

CREATE TABLE IF NOT EXISTS BANCA_EXAMINADORA (
	codigo_trabalho_academico	INTEGER NOT NULL UNIQUE,
    nome_prof_1					VARCHAR(80),
    nome_prof_2					VARCHAR(80),
    nome_prof_3					VARCHAR(80),
    PRIMARY KEY(codigo_trabalho_academico)
);

CREATE TABLE IF NOT EXISTS PARCELA (
	sequencial		INT NOT NULL AUTO_INCREMENT,
    cod_pagamento	INTEGER NOT NULL,
    data_geracao	DATE,
    data_pagamento	DATE,
    valor_pago		DOUBLE(37,2),
    data_vencimento	DATE,
    pago			BOOLEAN,
    juros			INTEGER,
    FOREIGN KEY(cod_pagamento) REFERENCES PAGAMENTO(codigo),
    FOREIGN KEY(juros) REFERENCES JURO(codigo),
    CONSTRAINT pk_parcela PRIMARY KEY(sequencial, cod_pagamento)
);