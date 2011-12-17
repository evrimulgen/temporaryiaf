DROP DATABASE IF EXISTS IAF;

CREATE DATABASE IAF
  WITH OWNER = POSTGRES
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese, Brazil'
       LC_CTYPE = 'Portuguese, Brazil'
       CONNECTION LIMIT = -1;
       
---------------------------------------------------------------
CREATE EXTENSION pgcrypto
          SCHEMA public
         VERSION "1.0";
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
                                   ,CONSTRAINT PK_PDU PRIMARY KEY (IN_PERMISSOESDOSUSUARIOS_ID )
                                   ,CONSTRAINT FK_PDU_EDS FOREIGN KEY (IN_ENTIDADESDOSISTEMA_ID) REFERENCES ENTIDADESDOSISTEMA (IN_ENTIDADESDOSISTEMA_ID) ON UPDATE CASCADE ON DELETE CASCADE
                                   ,CONSTRAINT FK_PDU_USU FOREIGN KEY (SM_USUARIOS_ID) REFERENCES USUARIOS (SM_USUARIOS_ID) ON UPDATE CASCADE ON DELETE CASCADE
                                   ,CONSTRAINT UC_PDU_IN_ENTIDADESDOSISTEMA_ID_SM_USUARIOS_ID UNIQUE (IN_ENTIDADESDOSISTEMA_ID , SM_USUARIOS_ID ));

ALTER SEQUENCE SQ_PDU_IN_PERMISSOESDOSUSUARIOS_ID 
      OWNED BY PERMISSOESDOSUSUARIOS.IN_PERMISSOESDOSUSUARIOS_ID;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_USUARIOS(IN pMODO           CHAR
                                       ,IN pSM_USUARIOS_ID USUARIOS.SM_USUARIOS_ID%TYPE = NULL
                                       ,IN pVA_NOME        USUARIOS.VA_NOME%TYPE        = NULL
                                       ,IN pVA_LOGIN       USUARIOS.VA_LOGIN%TYPE       = NULL
                                       ,IN pCH_SENHA       USUARIOS.CH_SENHA%TYPE       = NULL
                                       ,IN pVA_EMAIL       USUARIOS.VA_EMAIL%TYPE       = NULL)
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
                           ,VA_EMAIL)
                    VALUES (pVA_NOME
                           ,pVA_LOGIN
                           ,pCH_SENHA
                           ,pVA_EMAIL);

    vRETURN := CURRVAL('SQ_USU_SM_USUARIOS_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM USUARIOS
            WHERE SM_USUARIOS_ID = pSM_USUARIOS_ID;
            
    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE USUARIOS
         SET VA_NOME = pVA_NOME
           , VA_LOGIN = pVA_LOGIN
           , CH_SENHA = pCH_SENHA
           , VA_EMAIL = pVA_EMAIL
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
         SET IN_ENTIDADESDOSISTEMA_ID = pIN_ENTIDADESDOSISTEMA_ID
           , SM_USUARIOS_ID           = pSM_USUARIOS_ID
           , SM_LER                   = pSM_LER
           , SM_INSERIR               = pSM_INSERIR
           , SM_ALTERAR               = pSM_ALTERAR
           , SM_EXCLUIR               = pSM_EXCLUIR
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
         SET IN_ENTIDADESDOSISTEMA_ID = pIN_ENTIDADESDOSISTEMA_ID
           , SM_GRUPOS_ID             = pSM_GRUPOS_ID
           , SM_LER                   = pSM_LER
           , SM_INSERIR               = pSM_INSERIR
           , SM_ALTERAR               = pSM_ALTERAR
           , SM_EXCLUIR               = pSM_EXCLUIR
       WHERE IN_PERMISSOESDOSGRUPOS_ID = pIN_PERMISSOESDOSGRUPOS_ID;

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
---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------
SELECT IDU_ENTIDADESDOSISTEMA('I'::CHAR,NULL::INTEGER,'DAMOPrincipal.ACTNConfiguracoes'::VARCHAR,1::SMALLINT);
SELECT IDU_ENTIDADESDOSISTEMA('I'::CHAR,NULL::INTEGER,'DAMOPrincipal.ACTNSegurancaEPermissoes'::VARCHAR,1::SMALLINT);
SELECT IDU_ENTIDADESDOSISTEMA('I'::CHAR,NULL::INTEGER,'USUARIOS'::VARCHAR,0::SMALLINT);
SELECT IDU_ENTIDADESDOSISTEMA('I'::CHAR,NULL::INTEGER,'GRUPOS'::VARCHAR,0::SMALLINT);
SELECT IDU_ENTIDADESDOSISTEMA('I'::CHAR,NULL::INTEGER,'PERMISSOESDOSUSUARIOS'::VARCHAR,0::SMALLINT);
SELECT IDU_ENTIDADESDOSISTEMA('I'::CHAR,NULL::INTEGER,'PERMISSOESDOSGRUPOS'::VARCHAR,0::SMALLINT);
SELECT IDU_ENTIDADESDOSISTEMA('I'::CHAR,NULL::INTEGER,'ENTIDADESDOSISTEMA'::VARCHAR,0::SMALLINT);
SELECT IDU_ENTIDADESDOSISTEMA('I'::CHAR,NULL::INTEGER,'GRUPOSDOSUSUARIOS'::VARCHAR,0::SMALLINT);