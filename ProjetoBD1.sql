-- -----------------------------------------------------
-- Tabela MANTENEDORA
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS MANTENEDORA (
  CO_MANTENEDORA INT NOT NULL,
  NO_MANTENEDORA VARCHAR(100),
  PRIMARY KEY (CO_MANTENEDORA)
);

-- -----------------------------------------------------
-- Tabela CATEGORIA_ADMINISTRATIVA
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CATEGORIA_ADMINISTRATIVA (
  CO_CATEGORIA_ADMINISTRATIVA INT NOT NULL,
  DS_CATEGORIA_ADMINISTRATIVA VARCHAR(30),
  PRIMARY KEY (CO_CATEGORIA_ADMINISTRATIVA)
);

-- -----------------------------------------------------
-- Tabela ORGANIZACAO_ACADEMICA
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ORGANIZACAO_ACADEMICA (
  CO_ORGANIZACAO_ACADEMICA INT NOT NULL,
  DS_ORGANIZACAO_ACADEMICA VARCHAR(55),
  PRIMARY KEY (CO_ORGANIZACAO_ACADEMICA)
);

-- -----------------------------------------------------
-- Tabela UF
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS UF (
  CO_UF INT NOT NULL,
  SGL_UF VARCHAR(3),
  PRIMARY KEY (CO_UF)
);

-- -----------------------------------------------------
-- Tabela MUNICIPIO
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS MUNICIPIO (
  CO_MUNICIPIO INT NOT NULL,
  NO_MUNICIPIO VARCHAR(45),
  PRIMARY KEY (CO_MUNICIPIO)
);



-- -----------------------------------------------------
-- Tabela IES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS IES (
  CO_IES INT NOT NULL,
  NO_IES VARCHAR(100) NOT NULL,
  SGL_IES VARCHAR(45),
  CO_MANTENEDORA INT NOT NULL,
  CO_CATEGORIA_ADMINISTRATIVA INT NOT NULL,
  CO_ORGANIZACAO_ACADEMICA INT NOT NULL,
  CO_MUNICIPIO_IES INT NOT NULL,
  CO_UF_IES INT,
  NO_REGIAO_IES VARCHAR(45),
  IN_CAPITAL_IES INT,
  IN_ACESSO_PORTAL_CAPES INT,
  IN_ACESSO_OUTRAS_BASES INT,
  IN_REPOSITORIO_INSTITUCIONAL INT,
  IN_BUSCA_INTEGRADA INT,
  IN_SERVICO_INTERNET INT,
  IN_PARTICIPA_REDE_SOCIAL INT,
  IN_CATALOGO_ONLINE INT,
  QT_PERIODICO_ELETRONICO INT,
  QT_LIVRO_ELETRONICO INT,
  IN_REFERENTE INT,
  PRIMARY KEY (CO_IES),
    FOREIGN KEY (CO_MANTENEDORA) REFERENCES MANTENEDORA (CO_MANTENEDORA),
    FOREIGN KEY (CO_CATEGORIA_ADMINISTRATIVA) REFERENCES CATEGORIA_ADMINISTRATIVA (CO_CATEGORIA_ADMINISTRATIVA),
    FOREIGN KEY (CO_ORGANIZACAO_ACADEMICA) REFERENCES ORGANIZACAO_ACADEMICA (CO_ORGANIZACAO_ACADEMICA),
    FOREIGN KEY (CO_UF_IES) REFERENCES UF (CO_UF),
    FOREIGN KEY (CO_MUNICIPIO_IES) REFERENCES MUNICIPIO (CO_MUNICIPIO)
);


-- -----------------------------------------------------
-- Tabela COR_RACA
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS COR_RACA (
  CO_COR_RACA INT NOT NULL,
  DS_COR_RACA VARCHAR(30),
  PRIMARY KEY (CO_COR_RACA)
);

-- -----------------------------------------------------
-- Tabela SEXO
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS SEXO (
  IN_SEXO INT NOT NULL,
  DS_SEXO VARCHAR(10),
  PRIMARY KEY (IN_SEXO)
);


-- -----------------------------------------------------
-- Tabela ALUNO_SITUACAO
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ALUNO_SITUACAO (
  CO_ALUNO_SITUACAO INT NOT NULL,
  DS_ALUNO_SITUACAO VARCHAR(45),
  PRIMARY KEY (CO_ALUNO_SITUACAO)
);

-- -----------------------------------------------------
-- Tabela NACIONALIDADE
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS NACIONALIDADE (
  CO_NACIONALIDADE INT NOT NULL,
  DS_NACIONALIDADE VARCHAR(50),
  PRIMARY KEY (CO_NACIONALIDADE)
);

-- -----------------------------------------------------
-- Tabela TURNO
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS TURNO (
  CO_TURNO INT NOT NULL,
  DS_TURNO VARCHAR(12),
  PRIMARY KEY (CO_TURNO)
);

-- -----------------------------------------------------
-- Tabela ALUNO
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ALUNO (
  CO_IES INT NOT NULL,
  CO_TURNO_ALUNO INT NOT NULL,
  CO_ALUNO BIGINT NOT NULL,
  CO_COR_RACA_ALUNO INT NOT NULL,
  IN_SEXO_ALUNO INT NOT NULL, 
  NU_ANO_ALUNO_NASC INT NULL,
  NU_MES_ALUNO_NASC INT NULL,
  NU_DIA_ALUNO_NASC INT NULL,
  NU_IDADE_ALUNO INT NULL,
  CO_NACIONALIDADE_ALUNO INT NOT NULL,
  CO_PAIS_ORIGEM_ALUNO INT NULL,
  CO_UF_NASCIMENTO INT NOT NULL,
  CO_MUNICIPIO_NASCIMENTO INT NOT NULL,
  IN_ALUNO_DEF_TGD_SUPER VARCHAR(2),
  IN_DEF_AUDITIVA VARCHAR(2),
  IN_DEF_FISICA VARCHAR(2),
  IN_DEF_INTELECTUAL VARCHAR(2),
  IN_DEF_MULTIPLA VARCHAR(2),
  IN_DEF_SURDEZ VARCHAR(2),
  IN_DEF_SURDOCEGUEIRA VARCHAR(2),
  IN_DEF_BAIXA_VISAO VARCHAR(2),
  IN_DEF_CEGUEIRA VARCHAR(2),
  IN_DEF_SUPERDOTACAO VARCHAR(2),
  IN_TGD_AUTISMO_INFANTIL VARCHAR(2),
  IN_TGD_SINDROME_ASPERGER VARCHAR(2),
  IN_TGD_SINDROME_RETT VARCHAR(2),
  IN_TGD_TRANSTOR_DESINTEGRATIVO VARCHAR(2),
  CO_ALUNO_SITUACAO INT NOT NULL,
  QT_CARGA_HORARIA_TOTAL INT,
  QT_CARGA_HORARIA_INTEG INT,
  DT_INGRESSO_CURSO VARCHAR(15),
  IN_ING_VESTIBULAR INT,
  IN_ING_ENEM INT,
  IN_ING_AVALIACAO_SERIADA INT,
  IN_ING_SELECAO_SIMPLIFICADA INT,
  IN_ING_SELECAO_VAGA_REMANESC INT,
  IN_ING_SELECAO_VAGA_PROG_ESPEC INT,
  IN_ING_TRANSF_EXOFFICIO INT,
  IN_ING_DECISAO_JUDICIAL INT,
  IN_ING_CONVENIO_PECG INT,
  IN_RESERVA_VAGAS INT,
  IN_RESERVA_ETNICO INT,
  IN_RESERVA_DEFICIENCIA INT,
  IN_RESERVA_ENSINO_PUBLICO INT,
  IN_RESERVA_RENDA_FAMILIAR INT,
  IN_RESERVA_OUTRA INT,
  IN_FINANC_ESTUDANTIL INT,
  IN_FIN_REEMB_FIES INT,
  IN_FIN_REEMB_ESTADUAL INT,
  IN_FIN_REEMB_MUNICIPAL INT,
  IN_FIN_REEMB_PROG_IES INT,
  IN_FIN_REEMB_ENT_EXTERNA INT,
  IN_FIN_REEMB_OUTRA INT,
  IN_FIN_NAOREEMB_PROUNI_INTEGR INT,
  IN_FIN_NAOREEMB_PROUNI_PARCIAL INT,
  IN_FIN_NAOREEMB_ESTADUAL INT,
  IN_FIN_NAOREEMB_MUNICIPAL INT,
  IN_FIN_NAOREEMB_PROG_IES INT,
  IN_FIN_NAOREEMB_ENT_EXTERNA INT,
  IN_FIN_NAOREEMB_OUTRA INT,
  IN_APOIO_SOCIAL INT,
  IN_APOIO_ALIMENTACAO INT,
  IN_APOIO_BOLSA_PERMANENCIA INT,
  IN_APOIO_BOLSA_TRABALHO INT,
  IN_APOIO_MATERIAL_DIDATICO INT,
  IN_APOIO_MORADIA INT,
  IN_APOIO_TRANSPORTE INT,
  IN_ATIVIDADE_EXTRACURRICULAR INT,
  IN_COMPL_ESTAGIO INT,
  IN_COMPL_EXTENSAO INT,
  IN_COMPL_MONITORIA INT,
  IN_COMPL_PESQUISA INT,
  IN_BOLSA_ESTAGIO INT,
  IN_BOLSA_EXTENSAO INT,
  IN_BOLSA_MONITORIA INT,
  IN_BOLSA_PESQUISA INT,
  CO_TIPO_ESCOLA_ENS_MEDIO INT,
  IN_ALUNO_PARFOR INT,
  CO_SEMESTRE_CONCLUSAO INT,
  CO_SEMESTRE_REFERENCIA INT,
  IN_MOBILIDADE_ACADEMICA INT,
  CO_MOBILIDADE_ACADEMICA INT,
  CO_MOBILIDADE_ACADEMICA_INTERN INT,
  CO_IES_DESTINO INT,
  CO_PAIS_DESTINO INT,
  IN_MATRICULA INT,
  IN_CONCLUINTE INT,
  IN_INGRESSO_TOTAL INT,
  IN_INGRESSO_VAGA_NOVA INT,
  ANO_INGRESSO INT,
  PRIMARY KEY (CO_ALUNO),
    FOREIGN KEY (CO_IES) REFERENCES IES (CO_IES),
    FOREIGN KEY (CO_COR_RACA_ALUNO) REFERENCES COR_RACA (CO_COR_RACA),
    FOREIGN KEY (IN_SEXO_ALUNO) REFERENCES SEXO (IN_SEXO),
    FOREIGN KEY (CO_ALUNO_SITUACAO) REFERENCES ALUNO_SITUACAO (CO_ALUNO_SITUACAO),
    FOREIGN KEY (CO_NACIONALIDADE_ALUNO) REFERENCES NACIONALIDADE (CO_NACIONALIDADE),
    FOREIGN KEY (CO_UF_NASCIMENTO) REFERENCES UF (CO_UF),
    FOREIGN KEY (CO_MUNICIPIO_NASCIMENTO) REFERENCES MUNICIPIO (CO_MUNICIPIO),
    FOREIGN KEY (CO_TURNO_ALUNO) REFERENCES TURNO (CO_TURNO)
);


-- -----------------------------------------------------
-- Tabela TECNICO
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS TECNICO (
  CO_IES INT NOT NULL,
  QT_TEC_TOTAL INT,
  QT_TEC_FUND_INCOMP_FEM INT,
  QT_TEC_FUND_INCOMP_MASC INT,
  QT_TEC_FUND_COMP_FEM INT,
  QT_TEC_FUND_COMP_MASC INT,
  QT_TEC_MEDIO_FEM INT,
  QT_TEC_MEDIO_MASC INT,
  QT_TEC_SUPERIOR_FEM INT,
  QT_TEC_SUPERIOR_MASC INT,
  QT_TEC_ESPECIALIZACAO_FEM INT,
  QT_TEC_ESPECIALIZACAO_MASC INT,
  QT_TEC_MESTRADO_FEM INT,
  QT_TEC_MESTRADO_MASC INT,
  QT_TEC_DOUTORADO_FEM INT,
  QT_TEC_DOUTORADO_MASC INT,
  PRIMARY KEY (CO_IES),
    FOREIGN KEY (CO_IES) REFERENCES IES (CO_IES)
);

-- -----------------------------------------------------
-- Tabela VALORES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS VALORES (
  CO_IES INT NOT NULL,
  VL_RECEITA_PROPRIA FLOAT,
  VL_TRANSFERENCIA FLOAT,
  VL_OUTRA_RECEITA FLOAT,
  VL_DES_PESSOAL_REM_DOCENTE FLOAT,
  VL_DES_PESSOAL_REM_TECNICO FLOAT,
  VL_DES_PESSOAL_ENCARGO FLOAT,
  VL_DES_CUSTEIO FLOAT,
  VL_DES_INVESTIMENTO FLOAT,
  VL_DES_PESQUISA FLOAT,
  VL_DES_OUTRAS FLOAT,
  PRIMARY KEY (CO_IES),
    FOREIGN KEY (CO_IES) REFERENCES IES (CO_IES)
);

-- -----------------------------------------------------
-- Tabela CURSO
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CURSO (
  CO_IES INT NOT NULL,
  CO_MUNICIPIO_CURSO INT,
  CO_UF_CURSO INT,
  NO_REGIAO_CURSO VARCHAR(45),
  IN_CAPITAL_CURSO INT,
  CO_CURSO INT NOT NULL,
  NO_CURSO VARCHAR(100),
  CO_SITUACAO_CURSO INT,
  DS_SITUACAO_CURSO VARCHAR(45),
  CO_OCDE VARCHAR(20),
  NO_OCDE VARCHAR(45),
  CO_OCDE_AREA_GERAL INT,
  NO_OCDE_AREA_GERAL VARCHAR(45),
  CO_OCDE_AREA_ESPECIFICA INT,
  NO_OCDE_AREA_ESPECIFICA VARCHAR(45),
  CO_OCDE_AREA_DETALHADA INT,
  NO_OCDE_AREA_DETALHADA VARCHAR(45),
  CO_GRAU_ACADEMICO INT,
  DS_GRAU_ACADEMICO VARCHAR(45),
  CO_MODALAIDADE_ENSINO INT,
  DS_MODALIDADE_ENSINO VARCHAR(45),
  CO_NIVEL_ACADEMICO INT,
  DS_NIVEL_ACADEMICO VARCHAR(45),
  IN_GRATUITO INT,
  TP_ATRIBUTO_INGRESSO INT,
  NU_CARGA_HORARIA INT,
  DT_INICIO_FUNCIONAMENTO VARCHAR(15),
  DT_AUTORIZACAO_CURSO VARCHAR(15),
  IN_AJUDA_DEFICIENTE INT,
  IN_MATERIAL_DIGITAL INT,
  IN_MATERIAL_AMPLIADO INT,
  IN_MATERIAL_TATIL INT,
  IN_MATERIAL_IMPRESSO INT,
  IN_MATERIAL_AUDIO INT,
  IN_MATERIAL_BRAILLE INT,
  IN_MATERIAL_LIBRAS INT,
  IN_DISCIPLINA_LIBRAS INT,
  IN_TRADUTOR_LIBRAS INT,
  IN_GUIA_INTERPRETE INT,
  IN_RECURSOS_COMUNICACAO INT,
  IN_RECURSOS_INFORMATICA INT,
  IN_INTEGRAL_CURSO INT,
  IN_MATUTINO_CURSO INT,
  IN_VESPERTINO_CURSO INT,
  IN_NOTURNO_CURSO INT,
  NU_INTEGRALIZACAO_INTEGRAL VARCHAR(10),
  NU_INTEGRALIZACAO_MATUTINO VARCHAR(10),
  NU_INTEGRALIZACAO_VESPERTINO VARCHAR(10),
  NU_INTEGRALIZACAO_NOTURNO VARCHAR(10),
  NU_INTEGRALIZACAO_EAD VARCHAR(10),
  IN_OFERECE_DISC_SEMI_PRES INT,
  NU_PERC_CAR_HOR_SEMI_PRES VARCHAR(10),
  IN_POSSUI_LABORATORIO INT,
  QT_INSC_VAGAS_NOVAS_INT VARCHAR(10),
  QT_INSC_VAGAS_NOVAS_MAT VARCHAR(10),
  QT_INSC_VAGAS_NOVAS_VESP VARCHAR(10),
  QT_INSC_VAGAS_NOVAS_NOT VARCHAR(10),
  QT_INSC_VAGAS_NOVAS_EAD VARCHAR(10),
  QT_INSC_VAGAS_REMAN_INT VARCHAR(10),
  QT_INSC_VAGAS_REMAN_MAT VARCHAR(10),
  QT_INSC_VAGAS_REMAN_VESP VARCHAR(10),
  QT_INSC_VAGAS_REMAN_NOT VARCHAR(10),
  QT_INSC_VAGAS_REMAN_EAD VARCHAR(10),
  QT_INSC_VAGAS_PROG_ESP_INT VARCHAR(10),
  QT_INSC_VAGAS_PROG_ESP_MAT VARCHAR(10),
  QT_INSC_VAGAS_PROG_ESP_VESP VARCHAR(10),
  QT_INSC_VAGAS_PROG_ESP_NOT VARCHAR(10),
  QT_INSC_VAGAS_PROG_ESP_EAD VARCHAR(10),
  QT_VAGAS_NOVAS_INTEGRAL VARCHAR(15),
  QT_VAGAS_NOVAS_MATUTINO VARCHAR(15),
  QT_VAGAS_NOVAS_VESPERTINO VARCHAR(15),
  QT_VAGAS_NOVAS_NOTURNO VARCHAR(15),
  QT_VAGAS_NOVAS_EAD VARCHAR(15),
  QT_VAGAS_REMANESC_INTEGRAL VARCHAR(15),
  QT_VAGAS_REMANESC_MATUTINO VARCHAR(15),
  QT_VAGAS_REMANESC_VESPERTINO VARCHAR(15),
  QT_VAGAS_REMANESC_NOTURNO VARCHAR(15),
  QT_VAGAS_REMANESC_EAD VARCHAR(15),
  QT_VAGAS_PROG_ESP_INTEGRAL VARCHAR(15),
  QT_VAGAS_PROG_ESP_MATUTINO VARCHAR(15),
  QT_VAGAS_PROG_ESP_VESPERTINO VARCHAR(15),
  QT_VAGAS_PROG_ESP_NOTURNO VARCHAR(15),
  QT_VAGAS_PROG_ESP_EAD VARCHAR(15),
  QT_MATRICULA_CURSO VARCHAR(15),
  QT_CONCLUINTE_CURSO VARCHAR(15),
  QT_INGRESSO_CURSO VARCHAR(15),
  QT_INGRESSO_VAGAS_NOVAS VARCHAR(15),
  QT_VAGAS_TOTAIS VARCHAR(15),
  PRIMARY KEY (CO_CURSO),
    FOREIGN KEY (CO_IES) REFERENCES IES (CO_IES),
    FOREIGN KEY (CO_UF_CURSO) REFERENCES UF (CO_UF),
    FOREIGN KEY (CO_MUNICIPIO_CURSO) REFERENCES MUNICIPIO (CO_MUNICIPIO)
);

-- -----------------------------------------------------
-- Tabela LOCAL_OFERTA
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS LOCAL_OFERTA (
  CO_LOCAL_OFERTA INT NOT NULL,
  NO_LOCAL_OFERTA VARCHAR(100),
  IES_CO_IES INT NOT NULL,
  CO_UF_LOCAL_OFERTA INT,
  CO_MUNICIPIO_LOCAL_OFERTA INT,
  IN_SEDE INT,
  CO_CURSO_POLO VARCHAR(20),
  CO_CURSO INT NOT NULL,
  IN_LOCAL_OFERTA_NEAD INT,
  IN_LOCAL_OFERTA_UAB INT,
  IN_LOCAL_OFERTA_REITORIA INT,
  IN_LOCAL_OFERTA_POLO INT,
  IN_LOCAL_OFERTA_UNID_ACADEMICA INT,
  DT_INICIO_FUNCIONAMENTO VARCHAR(15),
  PRIMARY KEY (CO_LOCAL_OFERTA, CO_CURSO),
    FOREIGN KEY (IES_CO_IES) REFERENCES IES (CO_IES),
    FOREIGN KEY (CO_UF_LOCAL_OFERTA) REFERENCES UF (CO_UF),
    FOREIGN KEY (CO_CURSO) REFERENCES CURSO (CO_CURSO),
    FOREIGN KEY (CO_MUNICIPIO_LOCAL_OFERTA) REFERENCES MUNICIPIO (CO_MUNICIPIO)
);

-- -----------------------------------------------------
-- Tabela CURSO_ALUNO
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CURSO_ALUNO (
  CO_CURSO INT NOT NULL,
  NO_CURSO VARCHAR(100) NOT NULL,
  CO_ALUNO_CURSO INT,
  CO_ALUNO_CURSO_ORIGEM INT,
  CO_ALUNO BIGINT NOT NULL,
  PRIMARY KEY (CO_ALUNO,CO_CURSO), 
    FOREIGN KEY (CO_CURSO) REFERENCES CURSO (CO_CURSO),
    FOREIGN KEY (CO_ALUNO) REFERENCES ALUNO (CO_ALUNO)
);

-- -----------------------------------------------------
-- Tabela SITUACAO_DOCENTE
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS SITUACAO_DOCENTE (
  CO_SITUACAO_DOCENTE INT NOT NULL,
  DS_SITUACAO_DOCENTE VARCHAR(55),
  PRIMARY KEY (CO_SITUACAO_DOCENTE)
);

-- -----------------------------------------------------
-- Tabela ESCOLARIDADE_DOCENTE
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ESCOLARIDADE_DOCENTE (
  CO_ESCOLARIDADE_DOCENTE INT NOT NULL,
  DS_ESCOLARIDADE_DOCENTE VARCHAR(15),
  PRIMARY KEY (CO_ESCOLARIDADE_DOCENTE)
);

-- -----------------------------------------------------
-- Tabela REGIME_TRABALHO
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS REGIME_TRABALHO (
  CO_REGIME_TRABALHO INT NOT NULL,
  DS_REGIME_TRABALHO VARCHAR(45),
  PRIMARY KEY (CO_REGIME_TRABALHO)
);

-- -----------------------------------------------------
-- Tabela DOCENTE
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS DOCENTE (
  CO_DOCENTE BIGINT NOT NULL,
  CO_SITUACAO_DOCENTE INT NOT NULL,
  CO_ESCOLARIDADE_DOCENTE INT NOT NULL,
  CO_REGIME_TRABALHO INT NOT NULL,
  IN_SEXO_DOCENTE INT NOT NULL,
  NU_ANO_DOCENTE_NASC INT NULL,
  NU_MES_DOCENTE_NASC INT NULL,
  NU_DIA_DOCENTE_NASC INT NULL,
  NU_IDADE_DOCENTE INT,
  CO_COR_RACA_DOCENTE INT NOT NULL,
  CO_PAIS_DOCENTE INT,
  CO_NACIONALIDADE_DOCENTE INT NOT NULL,
  CO_UF_NASCIMENTO INT NOT NULL,
  CO_MUNICIPIO_NASCIMENTO INT NOT NULL,
  IN_DOCENTE_DEFICIENCIA VARCHAR(2),
  IN_DEF_CEGUEIRA VARCHAR(2),
  IN_DEF_BAIXA_VISAO VARCHAR(2),
  IN_DEF_SURDEZ VARCHAR(2),
  IN_DEF_AUDITIVA VARCHAR(2),
  IN_DEF_FISICA VARCHAR(2),
  IN_DEF_SURDOCEGUEIRA VARCHAR(2),
  IN_DEF_MULTIPLA VARCHAR(2),
  IN_DEF_INTELECTUAL VARCHAR(2),
  IN_ATU_EAD VARCHAR(2),
  IN_ATU_EXTENSAO VARCHAR(2),
  IN_ATU_GESTAO VARCHAR(2),
  IN_ATU_GRAD_PRESENCIAL VARCHAR(2),
  IN_ATU_POS_EAD VARCHAR(2),
  IN_ATU_POS_PRESENCIAL VARCHAR(2),
  IN_ATU_SEQUENCIAL VARCHAR(2),
  IN_ATU_PESQUISA VARCHAR(2),
  IN_BOLSA_PESQUISA VARCHAR(2),
  IN_SUBSTITUTO VARCHAR(2),
  IN_EXERCICIO_DT_REF VARCHAR(2),
  IN_VISITANTE VARCHAR(2),
  IN_VISITANTE_IFES_VINCULO VARCHAR(2),
  PRIMARY KEY (CO_DOCENTE),
    FOREIGN KEY (CO_SITUACAO_DOCENTE) REFERENCES SITUACAO_DOCENTE (CO_SITUACAO_DOCENTE),
    FOREIGN KEY (IN_SEXO_DOCENTE) REFERENCES SEXO (IN_SEXO),
    FOREIGN KEY (CO_NACIONALIDADE_DOCENTE) REFERENCES NACIONALIDADE (CO_NACIONALIDADE),
    FOREIGN KEY (CO_COR_RACA_DOCENTE) REFERENCES COR_RACA (CO_COR_RACA),
    FOREIGN KEY (CO_UF_NASCIMENTO) REFERENCES UF (CO_UF),
    FOREIGN KEY (CO_MUNICIPIO_NASCIMENTO) REFERENCES MUNICIPIO (CO_MUNICIPIO),
    FOREIGN KEY (CO_ESCOLARIDADE_DOCENTE) REFERENCES ESCOLARIDADE_DOCENTE (CO_ESCOLARIDADE_DOCENTE),
    FOREIGN KEY (CO_REGIME_TRABALHO) REFERENCES REGIME_TRABALHO (CO_REGIME_TRABALHO)
);

-- -----------------------------------------------------
-- Table IES_DOCENTE
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS IES_DOCENTE (
  CO_IES INT NOT NULL,
  CO_DOCENTE_IES INT,
  CO_DOCENTE BIGINT NOT NULL,
  PRIMARY KEY (CO_IES, CO_DOCENTE),
    FOREIGN KEY (CO_IES) REFERENCES IES (CO_IES),
    FOREIGN KEY (CO_DOCENTE) REFERENCES DOCENTE (CO_DOCENTE)
);

-- -----------------------------------------------------------------------------------------------------------
-- LOADs, View, Trigger e Procedure
-- Alterar os caminhos que estao como /home/eric/Documentos/BD/Projeto/ para o caminho dos arquivos CSV no PC
-- -----------------------------------------------------------------------------------------------------------
SET FOREIGN_KEY_CHECKS = 0;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/MANTENEDORA.CSV'
INTO TABLE MANTENEDORA
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/CATEGORIA_ADMINISTRATIVA.CSV'
INTO TABLE CATEGORIA_ADMINISTRATIVA
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/ORGANIZACAO_ACADEMICA.CSV'
INTO TABLE ORGANIZACAO_ACADEMICA
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/UF.CSV'
INTO TABLE UF
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/MUNICIPIO.CSV'
INTO TABLE MUNICIPIO
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/IES.CSV'
INTO TABLE IES
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/COR_RACA.CSV'
INTO TABLE COR_RACA
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/SEXO.CSV'
INTO TABLE SEXO
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/SITUACAO_ALUNO.CSV'
INTO TABLE ALUNO_SITUACAO
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/NACIONALIDADE.CSV'
INTO TABLE NACIONALIDADE
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/TURNO.CSV'
INTO TABLE TURNO
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/ALUNO.CSV'
INTO TABLE ALUNO
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/TECNICO.CSV'
INTO TABLE TECNICO
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/VALORES.CSV'
INTO TABLE VALORES
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/LOCAL_OFERTA.CSV'
INTO TABLE LOCAL_OFERTA
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/CURSO.CSV'
INTO TABLE CURSO
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/CURSO_ALUNO.CSV'
INTO TABLE CURSO_ALUNO
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/SITUACAO_DOCENTE.CSV'
INTO TABLE SITUACAO_DOCENTE
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/ESCOLARIDADE_DOCENTE.CSV'
INTO TABLE ESCOLARIDADE_DOCENTE
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/REGIME_TRABALHO.CSV'
INTO TABLE REGIME_TRABALHO
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/DOCENTE.CSV'
INTO TABLE DOCENTE
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/home/eric/Documentos/BD/Projeto/IES_DOCENTE.CSV'
INTO TABLE IES_DOCENTE
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SET FOREIGN_KEY_CHECKS = 1;