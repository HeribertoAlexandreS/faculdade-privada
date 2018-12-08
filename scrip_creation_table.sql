-- To acquire permissions to use this database execute as root user:
-- GRANT ALL ON faculdade_privada.* TO 'your_username'@'host_address_ip(localhost)';

USE faculdade_privada;

SHOW TABLES;


-- MER_Faculdade_Privada_1_Final

CREATE TABLE area_conhecimento (
	codigo		INT,		-- PK
    descricao	VARCHAR(200)
);

CREATE TABLE subarea_conhecimento (
	codigo		INT(10),	-- PK
    descricao	VARCHAR(200),
    codigo_area	INT(10)		-- FK
);

CREATE TABLE faculdade (
	cnpj				VARCHAR(14),	-- PK
    nome				VARCHAR(50),
    codigo_biblioteca	INT,			-- FK
    telefone			VARCHAR(10),
    email				VARCHAR(50),
    cep					VARCHAR(8)		-- FK
);

CREATE TABLE calendario_academico (
	data_ref	 		DATE,		-- PK 
    data_evento 		DATE,
    data_inicio			DATE,
    data_fim			DATE,
    localizacao			VARCHAR(50),
    e_feriado			BOOLEAN,
    descricao_feriado	VARCHAR(100),
    descricao_item		VARCHAR(100),	-- nao entendi
    evento				VARCHAR(100),
    cnpj_faculdade		VARCHAR(14)		-- FK
);

CREATE TABLE endereco (
	cep			VARCHAR(8),		-- PK
    cidade		VARCHAR(30),
    estado		VARCHAR(30),
    edicicio	VARCHAR(30),
    logradouro	VARCHAR(30)
);

CREATE TABLE aluno (
    numero_matricula	INT,		-- PK
    data_matricula		DATE,
	codigo_usuario		INT,		-- FK
    e_bolsista			BOOLEAN,
    descricao_bolsa		VARCHAR(200),
    situacao			VARCHAR(50)
);

CREATE TABLE professor (
    numero_registro		INT,		-- PK
    salario				FLOAT,
    especialidade		VARCHAR(50),
    data_admissao		DATE,
    codigo_area			INT,		-- FK
    nivel				INT,
    classe				VARCHAR(30)
);

CREATE TABLE departamento (
	codigo					INT,		-- PK
    nome					VARCHAR(50),
    telefone				VARCHAR(10),
    email					VARCHAR(50),
    sigla					VARCHAR(15),
    cnpj_faculdade			VARCHAR(14),	-- FK
    professor_diretor		INT,		-- FK
    data_inicio_professor	DATE,
    data_fim_professor		DATE
);

CREATE TABLE curso (
	codigo					INT,	-- PK
    descricao				VARCHAR(100),
    email					VARCHAR(50),
    turno					ENUM(	'manhã',
									'tarde',
									'noite' ),
    duracao					INT,
    especialidade			VARCHAR(50),
    vagas					INT,
    carga_horaria			INT,
    codigo_departamento		INT,		-- FK
    professor_coordenador	INT,	-- FK
    data_inicio_coordenacao	DATE,
    data_fim_coordenacao	DATE
);

CREATE TABLE disciplina (
	codigo				INT,			-- PK
    nome				VARCHAR(50),
    descricao			VARCHAR(150),
    ementa				VARCHAR(2000),	-- talvez colocar um BLOB para arquivo
    e_graduacao			BOOLEAN,
    e_pos_graduacao		BOOLEAN,
    creditos			INT,
    periodo_indicado	INT
);

CREATE TABLE dependencia_disciplina (
	disciplina_pre_requisito	INT,	-- PK | FK
    disciplina_co_requisito		INT		-- PK | FK
);

CREATE TABLE oferta (
    sequencial			INT,			-- PK
	codigo_disciplina	INT,			-- FK
    ano					INT,
    vagas				INT,
    semestre			INT,
    horario_inicio		TIME,
    horario_fim			TIME,
    localizacao			VARCHAR(30),
    codigo_professor	INT				-- FK
);

CREATE TABLE dia (
	sequencial_oferta	INT,			-- PK | FK
    dia					ENUM (	'Domingo',
								'Segunda',
                                'Terça',
                                'Quarta',
                                'Quinta',
                                'Sexta',
                                'Sábado')
);

CREATE TABLE aluno_oferta (
	codigo_aluno		INT,		-- PK | FK
    sequencial_oferta	INT, 		-- PK | FK
    frequencia			FLOAT,
    nota_1				FLOAT,
    nota_2				FLOAT,
	final				FLOAT
);

CREATE TABLE biblioteca (
	codigo			INT,	-- PK
    faculdade		INT,	-- FK
    nome			VARCHAR(50),
    data_criacao	DATE
);

CREATE TABLE tipo_emprestimo (
	codigo				INT,	-- PK
    descricao			VARCHAR(50),
	valor_multa_diaria	FLOAT
);

CREATE TABLE sala_biblioteca (
	numero				INT,			-- PK
    descricao			VARCHAR(100),
    estado				ENUM(	'livre',
								'ocupada',
								'agendada',
								'fechada' ),
	codigo_biblioteca	INT			-- FK
);

CREATE TABLE livro (
	codigo				INT,		-- PK
    titulo				VARCHAR(50),
    genero				VARCHAR(50),
    isbn				VARCHAR(13),
    ano_publicacao		DATE,
    editora				VARCHAR(50),
    edicao				INT,
    autor				VARCHAR(50),
    numero_exemplares	INT,
    codigo_area			INT,		-- FK
    codigo_biblioteca	INT			-- FK
);

CREATE TABLE tipo_emprestimo (
	codigo				INT,		-- PK
    descricao			VARCHAR(100),
    valor_multa_diaria	FLOAT
);

CREATE TABLE prateleira (
	codigo		INT,	-- PK
	nivel		INT,
    descricao	VARCHAR(50)
);

CREATE TABLE exemplar (
	codigo_livro		INT,	-- PK
    sequencial			INT,	-- PK
    esta_emprestado		BOOLEAN,
    codigo_prateleira	INT		-- FK	
);

CREATE TABLE reserva (
	codigo_usuario		INT,	-- PK
    numero_sala			INT,	-- PK | FK
    data_reserva		DATE,
    hora_inicio			TIME,
    hora_fim			TIME
);

CREATE TABLE emprestimo (
	codigo_exemplar		INT,	-- PK
    codigo_livro		INT,	-- PK
    codigo_usuario		INT,	-- PK
    data_emprestimo		DATE,
    data_devolucao		DATE,
    valor_total_multa	FLOAT,
    foi_pago			BOOLEAN,
    esta_atrasado		BOOLEAN
);

CREATE TABLE trilha (
	identificador	INT,	-- PK
    descricao		VARCHAR(50),
    codigo_area		INT	-- FK
);

-- MER_Faculdade_Privada_2_Final

CREATE TABLE candidato (
	cpf		VARCHAR(11)		-- PK
);

CREATE TABLE inscricao (
	codigo_curso		INT,			-- PK | FK
    cpf_candidato		VARCHAR(11),	-- PK | FK
    valor				FLOAT,
    data_pagamento		DATE,
    situacao			VARCHAR(50),
    data_inscricao		DATE
);

CREATE TABLE prova (
	codigo			INT,	-- PK
    materia			VARCHAR(50),
    data_realizacao	DATE,
    codigo_area		INT,	-- FK
    codigo_local	INT	-- FK
);

CREATE TABLE local_prova (
	codigo			INT,		-- PK
    capacidade		INT,
    numero			INT,
    descricao		VARCHAR(100),
    referencia		VARCHAR(200),
    tipo			VARCHAR(50),
    cep_endereco	VARCHAR(8)	-- FK
);

CREATE TABLE candidato_realiza_prova (
	cpf_candidato	VARCHAR(11),	-- PK | FK
    codigo_prova	INT,			-- PK | FK
    nota			FLOAT,
    situacao		VARCHAR(50)
);

CREATE TABLE mensalidade (
	sequencial			INT,	-- PK
    valor				FLOAT,
    data_emissao		DATE,
    data_vencimento		DATE,
    situacao			VARCHAR(50),
    codigo_aluno		INT,	-- FK
    codigo_pagamento	INT	-- FK
);

CREATE TABLE pagamento (
	codigo				INT,	-- PK
    situacao			VARCHAR(50),
    data_geracao		DATE,
    desconto			FLOAT,
    valor_desconto		FLOAT,
    valor_total_final	FLOAT
);

CREATE TABLE dependente (
	codigo_funcionario	VARCHAR(11),	-- PK | FK
    sequencial			INT,			-- PK
    tipo				ENUM(	'Pai',
								'Mãe',
                                'Irmão',
                                'Cônjuge',
                                'Filho',
                                'Outro'),
	nome				VARCHAR(100)	-- talvez herdar isto de PESSOA
);

CREATE TABLE faxineiro (
	codigo_funcionario		VARCHAR(11),	-- PK | FK
    area_responsabilidade	VARCHAR(100)
);

CREATE TABLE fiscal_prova (
	codigo_funcionario	VARCHAR(11),	-- PK | FK
    curriculo			VARCHAR(2000)	-- talvez ser um BLOB pra armazenar arquivo
);

CREATE TABLE seguranca (
	codigo_funcionario	VARCHAR(11),	-- PK | FK
    turno				ENUM(	'manhã',
								'tarde',
								'noite' )
);

CREATE TABLE escala_securanca (
	codigo_seguranca	VARCHAR(11),	-- PK | FK
    dia					DATE,
    horario_inicio		TIME,
    horario_fim			TIME
);

CREATE TABLE secretario (
	codigo_funcionario	VARCHAR(11),	-- PK | FK
    local_atual			VARCHAR(100),
    descricao_atividade	VARCHAR(200)
);

CREATE TABLE juros (
	codigo		INT,	-- PK
    taxa		FLOAT,
    tipo		ENUM('simples', 'composto'),
    descricao	VARCHAR(200)
);

CREATE TABLE projeto (
	codigo			INT,	-- PK
    titulo			VARCHAR(50),
    tema			VARCHAR(100),
    tipo			VARCHAR(50),
    situacao		VARCHAR(50),
    data_inicio		DATE,
    data_fim		DATE,
    resumo			VARCHAR(300),
    area			INT,	-- FK
    subarea			INT,	-- FK
    orientado_por	INT,	-- FK
    coorientado_por	INT		-- FK
);

CREATE TABLE docs (
	codigo		INT,	-- PK
    documento	BLOB
);

CREATE TABLE bolsista (
	codigo_aluno		INT,	-- PK | FK
    ano_inicio			DATE,
    ano_fim				DATE,
    valor_bolsa			FLOAT,
    orgao_financiador	VARCHAR(100)
);

CREATE TABLE voluntario (
	codigo_aluno		INT,	-- PK | FK
    carga_horaria		FLOAT
);

CREATE TABLE projeto_tem_aluno (
	codigo_projeto		INT,	-- PK | FK
    codigo_faluno		INT		-- PK | FK
);

CREATE TABLE pessoa_fisica (
	cpf					VARCHAR(11),	-- PK
    nome				VARCHAR(100),
    data_nascimento		DATE,
    telefone_fixo		VARCHAR(11),
    telefone_movel		VARCHAR(12),
    rg					VARCHAR(7),
    uf					VARCHAR(2),
    orgao_expedidor		VARCHAR(50),
    idade				INT,
    sexo				VARCHAR(1),
    endereco			VARCHAR(8)		-- FK
);

CREATE TABLE usuario (
	codigo_pessoa	VARCHAR(11),	-- PK | FK
    login			VARCHAR(50),	-- PK
    senha			VARCHAR(50),	-- PK
    email			VARCHAR(50)
);

CREATE TABLE funcionario (
	codigo_pessoa	VARCHAR(11),	-- PK | FK
    salario			FLOAT,
    em_ferias		BOOLEAN,
    horas_semana	INT,
    grau_formacao	VARCHAR(50)
);

CREATE TABLE beneficio (
	codigo				INT,		-- PK
    taxa				FLOAT,
    descricao			VARCHAR(200),
    valor				FLOAT,
    ano_mes				DATE,
    codigo_funcionario	VARCHAR(11)	-- FK
);

CREATE TABLE trabalho_academico (
	codigo			INT,	-- PK
    titulo			VARCHAR(50),
	resumo			VARCHAR(300),
    area			INT,	-- FK
    subarea			INT	-- FK
);

CREATE TABLE banca_examinadora (
	codigo_trabalho_academico	INT,	-- PK | FK
    descricao					VARCHAR(200)
);

CREATE TABLE tcc (
	codigo_trabalho_academico	INT	-- PK | FK
);

CREATE TABLE dissertacao (
	codigo_trabalho_academico	INT	-- PK | FK
);

CREATE TABLE parcela (
	sequencial		INT,	-- PK
    pagamento		INT,	-- PK | FK
    data_geracao	DATE,
    data_pagamento	DATE,
    valor_pago		FLOAT,
    data_vencimento	DATE,
    pago			BOOLEAN,
    juros			INT		-- FK
);