---------------------------------------------------------------
-- EXECUTE ESTE SCRIPT CONECTADO OBRIGATORIAMENTE NA DATABASE 
-- IAF QUE FOI CRIADA PELO SCRIPT ANTERIOR
---------------------------------------------------------------
CREATE EXTENSION pgcrypto
          SCHEMA public
         VERSION "1.0";
---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------
CREATE SEQUENCE SQ_EDS_IN_ENTIDADESDOSISTEMA_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 2147483647
          START 1
          CACHE 1;
  
CREATE TABLE ENTIDADESDOSISTEMA (IN_ENTIDADESDOSISTEMA_ID INTEGER NOT NULL DEFAULT NEXTVAL('SQ_EDS_IN_ENTIDADESDOSISTEMA_ID')
                                ,VA_NOME VARCHAR(128) NOT NULL
                                ,SM_TIPO SMALLINT NOT NULL
                                ,CONSTRAINT PK_EDS PRIMARY KEY (IN_ENTIDADESDOSISTEMA_ID)
                                ,CONSTRAINT UC_EDS_VA_NOME UNIQUE (VA_NOME));

ALTER SEQUENCE SQ_EDS_IN_ENTIDADESDOSISTEMA_ID 
      OWNED BY ENTIDADESDOSISTEMA.IN_ENTIDADESDOSISTEMA_ID;
---------------------------------------------------------------
CREATE SEQUENCE SQ_USU_SM_USUARIOS_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 32767
          START 1
          CACHE 1;
          
CREATE TABLE USUARIOS (SM_USUARIOS_ID SMALLINT NOT NULL DEFAULT NEXTVAL('SQ_USU_SM_USUARIOS_ID')
                      ,VA_NOME VARCHAR(64) NOT NULL
                      ,VA_LOGIN VARCHAR(16) NOT NULL
                      ,CH_SENHA CHAR(128) NOT NULL
                      ,VA_EMAIL VARCHAR(64)
                      ,BO_SUPERUSUARIO boolean NOT NULL DEFAULT FALSE
                      ,CONSTRAINT PK_USU PRIMARY KEY (SM_USUARIOS_ID)
                      ,CONSTRAINT UC_USU_VA_EMAIL UNIQUE (VA_EMAIL)
                      ,CONSTRAINT UC_USU_VA_LOGIN UNIQUE (VA_LOGIN));

ALTER SEQUENCE SQ_USU_SM_USUARIOS_ID 
      OWNED BY USUARIOS.SM_USUARIOS_ID;
---------------------------------------------------------------
CREATE SEQUENCE SQ_GRU_SM_GRUPOS_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 32767
          START 1
          CACHE 1;

CREATE TABLE GRUPOS (SM_GRUPOS_ID SMALLINT NOT NULL DEFAULT NEXTVAL('SQ_GRU_SM_GRUPOS_ID')
                    ,VA_NOME VARCHAR(64) NOT NULL
                    ,VA_DESCRICAO VARCHAR(128) NOT NULL
                    ,CONSTRAINT PK_GRU PRIMARY KEY (SM_GRUPOS_ID)
                    ,CONSTRAINT UC_GRU_VA_NOME UNIQUE (VA_NOME));

ALTER SEQUENCE SQ_GRU_SM_GRUPOS_ID 
      OWNED BY GRUPOS.SM_GRUPOS_ID;
---------------------------------------------------------------
CREATE SEQUENCE SQ_GDU_IN_GRUPOSDOSUSUARIOS_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 2147483647
          START 1
          CACHE 1;

CREATE TABLE GRUPOSDOSUSUARIOS(IN_GRUPOSDOSUSUARIOS_ID INTEGER NOT NULL DEFAULT NEXTVAL('SQ_GDU_IN_GRUPOSDOSUSUARIOS_ID')
                              ,SM_GRUPOS_ID SMALLINT NOT NULL
                              ,SM_USUARIOS_ID SMALLINT NOT NULL
                              ,CONSTRAINT PK_GDU PRIMARY KEY (IN_GRUPOSDOSUSUARIOS_ID )
                              ,CONSTRAINT FK_GDU_GRU FOREIGN KEY (SM_GRUPOS_ID) REFERENCES GRUPOS (SM_GRUPOS_ID) ON UPDATE CASCADE ON DELETE CASCADE
                              ,CONSTRAINT FK_GDU_USU FOREIGN KEY (SM_USUARIOS_ID) REFERENCES USUARIOS (SM_USUARIOS_ID) ON UPDATE CASCADE ON DELETE CASCADE
                              ,CONSTRAINT UC_GDU_SM_GRUPOS_ID_SM_USUARIOS_ID UNIQUE (SM_GRUPOS_ID , SM_USUARIOS_ID));

ALTER SEQUENCE SQ_GDU_IN_GRUPOSDOSUSUARIOS_ID 
      OWNED BY GRUPOSDOSUSUARIOS.IN_GRUPOSDOSUSUARIOS_ID;
---------------------------------------------------------------
CREATE SEQUENCE SQ_PDG_IN_PERMISSOESDOSGRUPOS_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 2147483647
          START 1
          CACHE 1;

CREATE TABLE PERMISSOESDOSGRUPOS (IN_PERMISSOESDOSGRUPOS_ID INTEGER NOT NULL DEFAULT NEXTVAL('SQ_PDG_IN_PERMISSOESDOSGRUPOS_ID')
                                 ,IN_ENTIDADESDOSISTEMA_ID INTEGER NOT NULL
                                 ,SM_GRUPOS_ID SMALLINT NOT NULL
                                 ,SM_LER SMALLINT NOT NULL DEFAULT 0
                                 ,SM_INSERIR SMALLINT NOT NULL DEFAULT 0
                                 ,SM_ALTERAR SMALLINT NOT NULL DEFAULT 0
                                 ,SM_EXCLUIR SMALLINT NOT NULL DEFAULT 0
                                 ,CONSTRAINT PK_PDG PRIMARY KEY (IN_PERMISSOESDOSGRUPOS_ID )
                                 ,CONSTRAINT FK_PDG_EDS FOREIGN KEY (IN_ENTIDADESDOSISTEMA_ID) REFERENCES ENTIDADESDOSISTEMA (IN_ENTIDADESDOSISTEMA_ID) ON UPDATE CASCADE ON DELETE CASCADE
                                 ,CONSTRAINT FK_PDG_GRU FOREIGN KEY (SM_GRUPOS_ID) REFERENCES GRUPOS (SM_GRUPOS_ID) ON UPDATE CASCADE ON DELETE CASCADE
                                 ,CONSTRAINT UC_PDG_IN_ENTIDADESDOSISTEMA_ID_TI_GRUPOS UNIQUE (IN_ENTIDADESDOSISTEMA_ID, SM_GRUPOS_ID)
);

ALTER SEQUENCE SQ_PDG_IN_PERMISSOESDOSGRUPOS_ID 
      OWNED BY PERMISSOESDOSGRUPOS.IN_PERMISSOESDOSGRUPOS_ID;
---------------------------------------------------------------
CREATE SEQUENCE SQ_PDU_IN_PERMISSOESDOSUSUARIOS_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 2147483647
          START 1
          CACHE 1;

CREATE TABLE PERMISSOESDOSUSUARIOS (IN_PERMISSOESDOSUSUARIOS_ID INTEGER NOT NULL DEFAULT NEXTVAL('SQ_PDU_IN_PERMISSOESDOSUSUARIOS_ID')
                                   ,IN_ENTIDADESDOSISTEMA_ID INTEGER NOT NULL
                                   ,SM_USUARIOS_ID SMALLINT NOT NULL
                                   ,SM_LER SMALLINT NOT NULL DEFAULT 0
                                   ,SM_INSERIR SMALLINT NOT NULL DEFAULT 0
                                   ,SM_ALTERAR SMALLINT NOT NULL DEFAULT 0
                                   ,SM_EXCLUIR SMALLINT NOT NULL DEFAULT 0
                                   ,CONSTRAINT PK_PDU PRIMARY KEY (IN_PERMISSOESDOSUSUARIOS_ID)
                                   ,CONSTRAINT FK_PDU_EDS FOREIGN KEY (IN_ENTIDADESDOSISTEMA_ID) REFERENCES ENTIDADESDOSISTEMA (IN_ENTIDADESDOSISTEMA_ID) ON UPDATE CASCADE ON DELETE CASCADE
                                   ,CONSTRAINT FK_PDU_USU FOREIGN KEY (SM_USUARIOS_ID) REFERENCES USUARIOS (SM_USUARIOS_ID) ON UPDATE CASCADE ON DELETE CASCADE
                                   ,CONSTRAINT UC_PDU_IN_ENTIDADESDOSISTEMA_ID_SM_USUARIOS_ID UNIQUE (IN_ENTIDADESDOSISTEMA_ID , SM_USUARIOS_ID ));

ALTER SEQUENCE SQ_PDU_IN_PERMISSOESDOSUSUARIOS_ID 
      OWNED BY PERMISSOESDOSUSUARIOS.IN_PERMISSOESDOSUSUARIOS_ID;
---------------------------------------------------------------
CREATE SEQUENCE SQ_PAC_IN_PACIENTES_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 2147483647
          START 1
          CACHE 1;

CREATE TYPE ORGAOEMISSOR AS ENUM ('ABNC','CGPI/DUREX/DPF','CGPI','CGPMAF','CNIG','CNT','COREN','CRA','CRAS','CRB','CRC','CRE','CREA','CRECI','CREFIT','CRF','CRM','CRN','CRO','CRP','CRPRE','CRQ','CRRC','CRMV','CSC','CTPS','DIC','DIREX','DPMAF','DPT','DST','FGTS','FIPE','FLS','GOVGO','I CLA','IFP','IGP','IICCECF/RO','IIMG','IML','IPC','IPF','MAE','MEX','MMA','OAB','OMB','PCMG','PMMG','POF','DPF','POM','SDS','SNJ','SECC','SEJUSP','SES','EST','SESP','SJS','SJTC','SJTS','SPTC','SSP','ZZZ');
CREATE TYPE UF AS ENUM ('AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO');
CREATE TYPE TIPOLOGRADOURO AS ENUM ('Outros','Aeroporto','Alameda','Área','Avenida','Campo','Chácara','Colônia','Condomínio','Conjunto','Distrito','Esplanada','Estação','Estrada','Favela','Fazenda','Feira','Jardim','Ladeira','Lago','Lagoa','Largo','Loteamento','Morro','Núcleo','Parque','Passarela','Pátio','Praça','Quadra','Recanto','Residencial','Rodovia','Rua','Setor','Sítio','Travessa','Trecho','Trevo','Vale','Vereda','Via','Viaduto','Viela','Vila');
CREATE TYPE GENERO AS ENUM ('Masculino','Feminino');
  
CREATE TABLE PACIENTES (IN_PACIENTES_ID INTEGER NOT NULL DEFAULT NEXTVAL('SQ_PAC_IN_PACIENTES_ID')
                       ,VA_NOME VARCHAR(128) NOT NULL
                       ,EN_GENERO GENERO NOT NULL
                       ,DA_DATANASCIMENTO DATE NOT NULL
                       ,VA_RG VARCHAR(10) NOT NULL
                       ,EN_ORGAOEMISSORRG ORGAOEMISSOR NOT NULL
                       ,EN_UFEMISSAORG UF NOT NULL
                       ,EN_TIPOLOGRADOURO TIPOLOGRADOURO NOT NULL
                       ,VA_NOMELOGRADOURO VARCHAR(128) NOT NULL
                       ,VA_IDLOGRADOURO VARCHAR(10) NOT NULL DEFAULT 'S/N'
                       ,VA_COMPLEMENTOLOGRADOURO VARCHAR(20)
                       ,VA_BAIRROLOGRADOURO VARCHAR(20) NOT NULL
                       ,VA_CIDADE VARCHAR(30) NOT NULL
                       ,EN_UF UF NOT NULL
                       ,CH_FONERESIDENCIAL CHAR(10)
                       ,CH_FONECELULAR CHAR(10)
                       ,TX_OBSERVACOES TEXT
                       ,CONSTRAINT PK_PAC PRIMARY KEY (IN_PACIENTES_ID)
                       ,CONSTRAINT UC_PAC_RG_ORGAOEMISSORRG_UFEMISSAORG UNIQUE (VA_RG, EN_ORGAOEMISSORRG, EN_UFEMISSAORG));                       

ALTER SEQUENCE SQ_PAC_IN_PACIENTES_ID 
      OWNED BY PACIENTES.IN_PACIENTES_ID;
---------------------------------------------------------------
CREATE SEQUENCE SQ_CBO_IN_CBO_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 2147483647
          START 1
          CACHE 1;
          
CREATE TYPE TIPOCBO AS ENUM ('Ocupação','Sinônimo');

CREATE TABLE CBO (IN_CBO_ID INTEGER NOT NULL DEFAULT NEXTVAL('SQ_CBO_IN_CBO_ID')
                 ,CH_CODIGO CHAR(7) NOT NULL
                 ,VA_TITULO VARCHAR(128) NOT NULL
                 ,EN_TIPO TIPOCBO NOT NULL
                 ,CONSTRAINT PK_CBO PRIMARY KEY (IN_CBO_ID));

COMMENT ON COLUMN CBO.CH_CODIGO IS 'CÓDIGO DO CBO';
COMMENT ON COLUMN CBO.VA_TITULO IS 'NOME DA OCUPAÇÃO';
COMMENT ON COLUMN CBO.EN_TIPO IS 'TIPO DO TÍTULO. PODE SER "OCUPAÇÃO" OU "SINÔNIMO"';
COMMENT ON TABLE CBO IS 'Classificação Brasileira de Ocupações. Versão 2002';

ALTER SEQUENCE SQ_CBO_IN_CBO_ID 
      OWNED BY CBO.IN_CBO_ID;
---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_USUARIOS(IN pMODO           CHAR
                                       ,IN pSM_USUARIOS_ID  USUARIOS.SM_USUARIOS_ID%TYPE  = NULL
                                       ,IN pVA_NOME         USUARIOS.VA_NOME%TYPE         = NULL
                                       ,IN pVA_LOGIN        USUARIOS.VA_LOGIN%TYPE        = NULL
                                       ,IN pCH_SENHA        USUARIOS.CH_SENHA%TYPE        = NULL
                                       ,IN pVA_EMAIL        USUARIOS.VA_EMAIL%TYPE        = NULL
                                       ,IN pBO_SUPERUSUARIO USUARIOS.BO_SUPERUSUARIO%TYPE = NULL)
RETURNS BIGINT AS 
$BODY$
DECLARE
	vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO USUARIOS (VA_NOME
                           ,VA_LOGIN
                           ,CH_SENHA
                           ,VA_EMAIL
                           ,BO_SUPERUSUARIO)
                    VALUES (pVA_NOME
                           ,pVA_LOGIN
                           ,sha512('') -- todo novo usuário tem de criar sua própria senha.
                           ,pVA_EMAIL
                           ,pBO_SUPERUSUARIO);

    vRETURN := CURRVAL('SQ_USU_SM_USUARIOS_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM USUARIOS
            WHERE SM_USUARIOS_ID = pSM_USUARIOS_ID;
            
    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE USUARIOS
         SET VA_NOME         = pVA_NOME
           , VA_LOGIN        = pVA_LOGIN
           , CH_SENHA        = pCH_SENHA
           , VA_EMAIL        = pVA_EMAIL
           , BO_SUPERUSUARIO = pBO_SUPERUSUARIO
       WHERE SM_USUARIOS_ID = pSM_USUARIOS_ID;

    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
  END CASE;
  
  RETURN vRETURN;
END;
$BODY$
LANGUAGE PLPGSQL;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_ENTIDADESDOSISTEMA(IN pMODO                     CHAR
                                                 ,IN pIN_ENTIDADESDOSISTEMA_ID ENTIDADESDOSISTEMA.IN_ENTIDADESDOSISTEMA_ID%TYPE = NULL
                                                 ,IN pVA_NOME                  ENTIDADESDOSISTEMA.VA_NOME%TYPE                  = NULL
                                                 ,IN pSM_TIPO                  ENTIDADESDOSISTEMA.SM_TIPO%TYPE                  = NULL)
RETURNS BIGINT AS 
$BODY$
DECLARE
	vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO ENTIDADESDOSISTEMA (VA_NOME
                                     ,SM_TIPO)
                              VALUES (pVA_NOME
                                     ,pSM_TIPO);

    vRETURN := CURRVAL('SQ_EDS_IN_ENTIDADESDOSISTEMA_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM ENTIDADESDOSISTEMA
            WHERE IN_ENTIDADESDOSISTEMA_ID = pIN_ENTIDADESDOSISTEMA_ID;
            
    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE ENTIDADESDOSISTEMA
         SET VA_NOME = pVA_NOME
           , SM_TIPO = pSM_TIPO
       WHERE IN_ENTIDADESDOSISTEMA_ID = pIN_ENTIDADESDOSISTEMA_ID;

    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
  END CASE;
  
  RETURN vRETURN;
END;
$BODY$
LANGUAGE PLPGSQL;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_PERMISSOESDOSUSUARIOS(IN pMODO                        CHAR
                                                    ,IN pIN_PERMISSOESDOSUSUARIOS_ID PERMISSOESDOSUSUARIOS.IN_PERMISSOESDOSUSUARIOS_ID%TYPE = NULL
                                                    ,IN pIN_ENTIDADESDOSISTEMA_ID    PERMISSOESDOSUSUARIOS.IN_ENTIDADESDOSISTEMA_ID%TYPE    = NULL
                                                    ,IN pSM_USUARIOS_ID              PERMISSOESDOSUSUARIOS.SM_USUARIOS_ID%TYPE              = NULL
                                                    ,IN pSM_LER                      PERMISSOESDOSUSUARIOS.SM_LER%TYPE                      = NULL
                                                    ,IN pSM_INSERIR                  PERMISSOESDOSUSUARIOS.SM_INSERIR%TYPE                  = NULL
                                                    ,IN pSM_ALTERAR                  PERMISSOESDOSUSUARIOS.SM_ALTERAR%TYPE                  = NULL
                                                    ,IN pSM_EXCLUIR                  PERMISSOESDOSUSUARIOS.SM_EXCLUIR%TYPE                  = NULL)
RETURNS BIGINT AS 
$BODY$
DECLARE
	vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO PERMISSOESDOSUSUARIOS (IN_ENTIDADESDOSISTEMA_ID
                                        ,SM_USUARIOS_ID
                                        ,SM_LER
                                        ,SM_INSERIR
                                        ,SM_ALTERAR
                                        ,SM_EXCLUIR)
                                 VALUES (pIN_ENTIDADESDOSISTEMA_ID
                                        ,pSM_USUARIOS_ID
                                        ,pSM_LER
                                        ,pSM_INSERIR
                                        ,pSM_ALTERAR
                                        ,pSM_EXCLUIR);

    vRETURN := CURRVAL('SQ_PDU_IN_PERMISSOESDOSUSUARIOS_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM PERMISSOESDOSUSUARIOS
            WHERE IN_PERMISSOESDOSUSUARIOS_ID = pIN_PERMISSOESDOSUSUARIOS_ID;
            
    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE PERMISSOESDOSUSUARIOS
         SET IN_ENTIDADESDOSISTEMA_ID    = pIN_ENTIDADESDOSISTEMA_ID
           , SM_USUARIOS_ID              = pSM_USUARIOS_ID
           , SM_LER                      = pSM_LER
           , SM_INSERIR                  = pSM_INSERIR
           , SM_ALTERAR                  = pSM_ALTERAR
           , SM_EXCLUIR                  = pSM_EXCLUIR
       WHERE IN_PERMISSOESDOSUSUARIOS_ID = pIN_PERMISSOESDOSUSUARIOS_ID;

    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
  END CASE;
  
  RETURN vRETURN;
END;
$BODY$
LANGUAGE PLPGSQL;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_PERMISSOESDOSGRUPOS(IN pMODO                      CHAR
                                                  ,IN pIN_PERMISSOESDOSGRUPOS_ID PERMISSOESDOSGRUPOS.IN_PERMISSOESDOSGRUPOS_ID%TYPE = NULL
                                                  ,IN pIN_ENTIDADESDOSISTEMA_ID  PERMISSOESDOSGRUPOS.IN_ENTIDADESDOSISTEMA_ID%TYPE  = NULL
                                                  ,IN pSM_GRUPOS_ID              PERMISSOESDOSGRUPOS.SM_GRUPOS_ID%TYPE              = NULL
                                                  ,IN pSM_LER                    PERMISSOESDOSGRUPOS.SM_LER%TYPE                    = NULL
                                                  ,IN pSM_INSERIR                PERMISSOESDOSGRUPOS.SM_INSERIR%TYPE                = NULL
                                                  ,IN pSM_ALTERAR                PERMISSOESDOSGRUPOS.SM_ALTERAR%TYPE                = NULL
                                                  ,IN pSM_EXCLUIR                PERMISSOESDOSGRUPOS.SM_EXCLUIR%TYPE                = NULL)
RETURNS BIGINT AS 
$BODY$
DECLARE
	vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO PERMISSOESDOSGRUPOS (IN_ENTIDADESDOSISTEMA_ID
                                      ,SM_GRUPOS_ID
                                      ,SM_LER
                                      ,SM_INSERIR
                                      ,SM_ALTERAR
                                      ,SM_EXCLUIR)
                               VALUES (pIN_ENTIDADESDOSISTEMA_ID
                                      ,pSM_GRUPOS_ID
                                      ,pSM_LER
                                      ,pSM_INSERIR
                                      ,pSM_ALTERAR
                                      ,pSM_EXCLUIR);

    vRETURN := CURRVAL('SQ_PDG_IN_PERMISSOESDOSGRUPOS_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM PERMISSOESDOSGRUPOS
            WHERE IN_PERMISSOESDOSGRUPOS_ID = pIN_PERMISSOESDOSGRUPOS_ID;
            
    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE PERMISSOESDOSGRUPOS
         SET IN_ENTIDADESDOSISTEMA_ID  = pIN_ENTIDADESDOSISTEMA_ID
           , SM_GRUPOS_ID              = pSM_GRUPOS_ID
           , SM_LER                    = pSM_LER
           , SM_INSERIR                = pSM_INSERIR
           , SM_ALTERAR                = pSM_ALTERAR
           , SM_EXCLUIR                = pSM_EXCLUIR
       WHERE IN_PERMISSOESDOSGRUPOS_ID = pIN_PERMISSOESDOSGRUPOS_ID;

    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
  END CASE;
  
  RETURN vRETURN;
END;
$BODY$
LANGUAGE PLPGSQL;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_GRUPOS(IN pMODO         CHAR
                                     ,IN pSM_GRUPOS_ID GRUPOS.SM_GRUPOS_ID%TYPE = NULL
                                     ,IN pVA_NOME      GRUPOS.VA_NOME%TYPE      = NULL
                                     ,IN pVA_DESCRICAO GRUPOS.VA_DESCRICAO%TYPE = NULL)
RETURNS BIGINT AS 
$BODY$
DECLARE
	vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO GRUPOS (VA_NOME
                         ,VA_DESCRICAO)
                  VALUES (pVA_NOME
                         ,pVA_DESCRICAO);

    vRETURN := CURRVAL('SQ_GRU_SM_GRUPOS_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM GRUPOS
            WHERE SM_GRUPOS_ID = pSM_GRUPOS_ID;
            
    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE GRUPOS
         SET VA_NOME      = pVA_NOME
           , VA_DESCRICAO = pVA_DESCRICAO
       WHERE SM_GRUPOS_ID = pSM_GRUPOS_ID;

    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
  END CASE;
  
  RETURN vRETURN;
END;
$BODY$
LANGUAGE PLPGSQL;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_GRUPOSDOSUSUARIOS(IN pMODO                    CHAR
                                                ,IN pIN_GRUPOSDOSUSUARIOS_ID GRUPOSDOSUSUARIOS.IN_GRUPOSDOSUSUARIOS_ID%TYPE = NULL
                                                ,IN pSM_GRUPOS_ID            GRUPOSDOSUSUARIOS.SM_GRUPOS_ID%TYPE = NULL
                                                ,IN pSM_USUARIOS_ID          GRUPOSDOSUSUARIOS.SM_USUARIOS_ID%TYPE = NULL)
RETURNS BIGINT AS 
$BODY$
DECLARE
	vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO GRUPOSDOSUSUARIOS (SM_GRUPOS_ID
                                    ,SM_USUARIOS_ID)
                             VALUES (pSM_GRUPOS_ID
                                    ,pSM_USUARIOS_ID);

    vRETURN := CURRVAL('SQ_GDU_IN_GRUPOSDOSUSUARIOS_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM GRUPOSDOSUSUARIOS
            WHERE IN_GRUPOSDOSUSUARIOS_ID = pIN_GRUPOSDOSUSUARIOS_ID;
            
    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE GRUPOSDOSUSUARIOS
         SET SM_GRUPOS_ID            = pSM_GRUPOS_ID
           , SM_USUARIOS_ID          = pSM_USUARIOS_ID
       WHERE IN_GRUPOSDOSUSUARIOS_ID = pIN_GRUPOSDOSUSUARIOS_ID;

    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
  END CASE;
  
  RETURN vRETURN;
END;
$BODY$
LANGUAGE PLPGSQL;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_PACIENTES(IN pMODO                     CHAR
                                        ,IN pIN_PACIENTES_ID          PACIENTES.IN_PACIENTES_ID%TYPE          = NULL
                                        ,IN pVA_NOME                  PACIENTES.VA_NOME%TYPE                  = NULL
                                        ,IN pEN_GENERO                PACIENTES.EN_GENERO%TYPE                = NULL
                                        ,IN pDA_DATANASCIMENTO        PACIENTES.DA_DATANASCIMENTO%TYPE        = NULL
                                        ,IN pVA_RG                    PACIENTES.VA_RG%TYPE                    = NULL
                                        ,IN pEN_ORGAOEMISSORRG        PACIENTES.EN_ORGAOEMISSORRG%TYPE        = NULL
                                        ,IN pEN_UFEMISSAORG           PACIENTES.EN_UFEMISSAORG%TYPE           = NULL
                                        ,IN pEN_TIPOLOGRADOURO        PACIENTES.EN_TIPOLOGRADOURO%TYPE        = NULL
                                        ,IN pVA_NOMELOGRADOURO        PACIENTES.VA_NOMELOGRADOURO%TYPE        = NULL
                                        ,IN pVA_IDLOGRADOURO          PACIENTES.VA_IDLOGRADOURO%TYPE          = NULL
                                        ,IN pVA_COMPLEMENTOLOGRADOURO PACIENTES.VA_COMPLEMENTOLOGRADOURO%TYPE = NULL
                                        ,IN pVA_BAIRROLOGRADOURO      PACIENTES.VA_BAIRROLOGRADOURO%TYPE      = NULL
                                        ,IN pVA_CIDADE                PACIENTES.VA_CIDADE%TYPE                = NULL
                                        ,IN pEN_UF                    PACIENTES.EN_UF%TYPE                    = NULL
                                        ,IN pCH_FONERESIDENCIAL       PACIENTES.CH_FONERESIDENCIAL%TYPE       = NULL
                                        ,IN pCH_FONECELULAR           PACIENTES.CH_FONECELULAR%TYPE           = NULL
                                        ,IN pTX_OBSERVACOES           PACIENTES.TX_OBSERVACOES%TYPE           = NULL)
RETURNS BIGINT AS
$BODY$
DECLARE
  vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO PACIENTES (VA_NOME
                            ,EN_GENERO
                            ,DA_DATANASCIMENTO
                            ,VA_RG
                            ,EN_ORGAOEMISSORRG
                            ,EN_UFEMISSAORG
                            ,EN_TIPOLOGRADOURO
                            ,VA_NOMELOGRADOURO
                            ,VA_IDLOGRADOURO
                            ,VA_COMPLEMENTOLOGRADOURO
                            ,VA_BAIRROLOGRADOURO
                            ,VA_CIDADE
                            ,EN_UF
                            ,CH_FONERESIDENCIAL
                            ,CH_FONECELULAR
                            ,TX_OBSERVACOES)
                     VALUES (pVA_NOME
                            ,pEN_GENERO
                            ,pDA_DATANASCIMENTO
                            ,pVA_RG
                            ,pEN_ORGAOEMISSORRG
                            ,pEN_UFEMISSAORG
                            ,pEN_TIPOLOGRADOURO
                            ,pVA_NOMELOGRADOURO
                            ,pVA_IDLOGRADOURO
                            ,pVA_COMPLEMENTOLOGRADOURO
                            ,pVA_BAIRROLOGRADOURO
                            ,pVA_CIDADE
                            ,pEN_UF
                            ,pCH_FONERESIDENCIAL
                            ,pCH_FONECELULAR
                            ,pTX_OBSERVACOES);

      vRETURN := CURRVAL('SQ_PAC_IN_PACIENTES_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM PACIENTES
            WHERE IN_PACIENTES_ID = pIN_PACIENTES_ID;

      GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE PACIENTES
         SET VA_NOME                  = pVA_NOME
           , EN_GENERO                = pEN_GENERO
           , DA_DATANASCIMENTO        = pDA_DATANASCIMENTO
           , VA_RG                    = pVA_RG
           , EN_ORGAOEMISSORRG        = pEN_ORGAOEMISSORRG
           , EN_UFEMISSAORG           = pEN_UFEMISSAORG
           , EN_TIPOLOGRADOURO        = pEN_TIPOLOGRADOURO
           , VA_NOMELOGRADOURO        = pVA_NOMELOGRADOURO
           , VA_IDLOGRADOURO          = pVA_IDLOGRADOURO
           , VA_COMPLEMENTOLOGRADOURO = pVA_COMPLEMENTOLOGRADOURO
           , VA_BAIRROLOGRADOURO      = pVA_BAIRROLOGRADOURO
           , VA_CIDADE                = pVA_CIDADE
           , EN_UF                    = pEN_UF
           , CH_FONERESIDENCIAL       = pCH_FONERESIDENCIAL
           , CH_FONECELULAR           = pCH_FONECELULAR
           , TX_OBSERVACOES           = pTX_OBSERVACOES
       WHERE IN_PACIENTES_ID = pIN_PACIENTES_ID;

    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
  END CASE;

  RETURN vRETURN;
END;
$BODY$
LANGUAGE PLPGSQL;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_CBO(IN pMODO      CHAR
                                  ,IN pIN_CBO_ID CBO.IN_CBO_ID%TYPE = NULL
                                  ,IN pCH_CODIGO CBO.CH_CODIGO%TYPE = NULL
                                  ,IN pVA_TITULO CBO.VA_TITULO%TYPE = NULL
                                  ,IN pEN_TIPO   CBO.EN_TIPO%TYPE   = NULL)
RETURNS BIGINT AS
$BODY$
DECLARE
  vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO CBO (CH_CODIGO
                      ,VA_TITULO
                      ,EN_TIPO)
               VALUES (pCH_CODIGO
                      ,pVA_TITULO
                      ,pEN_TIPO);

      vRETURN := CURRVAL('SQ_CBO_IN_CBO_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM CBO
            WHERE IN_CBO_ID = pIN_CBO_ID;

      GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE CBO
         SET CH_CODIGO = pCH_CODIGO
           , VA_TITULO = pVA_TITULO
           , EN_TIPO   = pEN_TIPO
       WHERE IN_CBO_ID = pIN_CBO_ID;

    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
  END CASE;

  RETURN vRETURN;
END;
$BODY$
LANGUAGE PLPGSQL;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION SHA512(VARCHAR) 
RETURNS CHAR AS
$BODY$
	SELECT UPPER(ENCODE(DIGEST($1, 'sha512'), 'hex'))
$BODY$
LANGUAGE SQL;