DROP DATABASE IF EXISTS IAF;

CREATE DATABASE IAF
  WITH OWNER = IAF
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese, Brazil'
       LC_CTYPE = 'Portuguese, Brazil'
       CONNECTION LIMIT = -1;
---------------------------------------------------------------
CREATE SEQUENCE sq_usu_in_entidadesdosistema_id
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 2147483647
  START 1
  CACHE 1;
  
CREATE TABLE ENTIDADESDOSISTEMA (in_entidadesdosistema_id integer NOT NULL DEFAULT nextval('sq_usu_in_entidadesdosistema_id')
                                ,va_nome varchar(128) NOT NULL
                                ,sm_tipo smallint NOT NULL
                                ,CONSTRAINT pk_eds PRIMARY KEY (in_entidadesdosistema_id)
                                ,CONSTRAINT uc_eds_va_nome UNIQUE (va_nome));

ALTER SEQUENCE sq_usu_in_entidadesdosistema_id 
      OWNED BY ENTIDADESDOSISTEMA.in_entidadesdosistema_id;
---------------------------------------------------------------
CREATE SEQUENCE sq_usu_sm_usuarios_id
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 32767
          START 1
          CACHE 1;
          
CREATE TABLE usuarios (sm_usuarios_id smallint NOT NULL DEFAULT nextval('sq_usu_sm_usuarios_id')
                      ,va_nome VARCHAR(64) NOT NULL
                      ,va_login VARCHAR(16) NOT NULL
                      ,ch_senha CHAR(128) NOT NULL
                      ,va_email VARCHAR(64)
                      ,CONSTRAINT pk_usu PRIMARY KEY (sm_usuarios_id)
                      ,CONSTRAINT uc_usu_va_email UNIQUE (va_email)
                      ,CONSTRAINT uc_usu_va_login UNIQUE (va_login));

ALTER SEQUENCE sq_usu_sm_usuarios_id 
      OWNED BY USUARIOS.SM_USUARIOS_ID;
---------------------------------------------------------------
CREATE SEQUENCE sq_gru_sm_grupos_id
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 32767
          START 1
          CACHE 1;

CREATE TABLE grupos (sm_grupos_id smallint NOT NULL DEFAULT nextval('sq_gru_sm_grupos_id')
                    ,va_nome VARCHAR(64) NOT NULL
                    ,va_descricao VARCHAR(128) NOT NULL
                    ,CONSTRAINT pk_gru PRIMARY KEY (sm_grupos_id)
                    ,CONSTRAINT uc_gru_va_nome UNIQUE (va_nome));

ALTER SEQUENCE sq_gru_sm_grupos_id 
      OWNED BY GRUPOS.SM_GRUPOS_ID;
---------------------------------------------------------------
CREATE SEQUENCE sq_gdu_in_gruposdosusuarios_id
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 2147483647
  START 1
  CACHE 1;

CREATE TABLE gruposdosusuarios(in_gruposdosusuarios_id integer NOT NULL DEFAULT nextval('sq_gdu_in_gruposdosusuarios_id')
                              ,sm_grupos_id smallint NOT NULL
                              ,sm_usuarios_id smallint NOT NULL
                              ,CONSTRAINT pk_gdu PRIMARY KEY (in_gruposdosusuarios_id )
                              ,CONSTRAINT fk_gdu_gru FOREIGN KEY (sm_grupos_id) REFERENCES grupos (sm_grupos_id) ON UPDATE CASCADE ON DELETE CASCADE
                              ,CONSTRAINT fk_gdu_usu FOREIGN KEY (sm_usuarios_id) REFERENCES usuarios (sm_usuarios_id) ON UPDATE CASCADE ON DELETE CASCADE
                              ,CONSTRAINT uc_gdu_sm_grupos_id_sm_usuarios_id UNIQUE (sm_grupos_id , sm_usuarios_id));

ALTER SEQUENCE sq_gdu_in_gruposdosusuarios_id 
      OWNED BY gruposdosusuarios.in_gruposdosusuarios_id;
---------------------------------------------------------------
CREATE SEQUENCE sq_pdg_in_permissoesdosgrupos_id
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 2147483647
  START 1
  CACHE 1;

CREATE TABLE permissoesdosgrupos (in_permissoesdosgrupos_id integer NOT NULL DEFAULT nextval('sq_pdg_in_permissoesdosgrupos_id')
                                 ,in_entidadesdosistema_id integer NOT NULL
                                 ,sm_grupos_id smallint NOT NULL
                                 ,sm_ler smallint NOT NULL DEFAULT 0
                                 ,sm_inserir smallint NOT NULL DEFAULT 0
                                 ,sm_alterar smallint NOT NULL DEFAULT 0
                                 ,sm_excluir smallint NOT NULL DEFAULT 0
                                 ,CONSTRAINT pk_pdg PRIMARY KEY (in_permissoesdosgrupos_id )
                                 ,CONSTRAINT fk_pdg_eds FOREIGN KEY (in_entidadesdosistema_id) REFERENCES entidadesdosistema (in_entidadesdosistema_id) ON UPDATE CASCADE ON DELETE CASCADE
                                 ,CONSTRAINT fk_pdg_gru FOREIGN KEY (sm_grupos_id) REFERENCES grupos (sm_grupos_id) ON UPDATE CASCADE ON DELETE CASCADE
                                 ,CONSTRAINT uc_pdg_in_entidadesdosistema_id_ti_grupos UNIQUE (in_entidadesdosistema_id, sm_grupos_id)
);

ALTER SEQUENCE sq_pdg_in_permissoesdosgrupos_id 
      OWNED BY permissoesdosgrupos.in_permissoesdosgrupos_id;
---------------------------------------------------------------
CREATE SEQUENCE sq_pdu_in_permissoesdosusuarios_id
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 2147483647
  START 1
  CACHE 1;

CREATE TABLE permissoesdosusuarios (in_permissoesdosusuarios_id integer NOT NULL DEFAULT nextval('sq_pdu_in_permissoesdosusuarios_id')
                                   ,in_entidadesdosistema_id integer NOT NULL
                                   ,sm_usuarios_id smallint NOT NULL
                                   ,sm_ler smallint NOT NULL DEFAULT 0
                                   ,sm_inserir smallint NOT NULL DEFAULT 0
                                   ,sm_alterar smallint NOT NULL DEFAULT 0
                                   ,sm_excluir smallint NOT NULL DEFAULT 0
                                   ,CONSTRAINT pk_pdu PRIMARY KEY (in_permissoesdosusuarios_id )
                                   ,CONSTRAINT fk_pdu_eds FOREIGN KEY (in_entidadesdosistema_id) REFERENCES entidadesdosistema (in_entidadesdosistema_id) ON UPDATE CASCADE ON DELETE CASCADE
                                   ,CONSTRAINT fk_pdu_usu FOREIGN KEY (sm_usuarios_id) REFERENCES usuarios (sm_usuarios_id) ON UPDATE CASCADE ON DELETE CASCADE
                                   ,CONSTRAINT uc_pdu_in_entidadesdosistema_id_sm_usuarios_id UNIQUE (in_entidadesdosistema_id , sm_usuarios_id ));

ALTER SEQUENCE sq_pdu_in_permissoesdosusuarios_id 
      OWNED BY permissoesdosusuarios.in_permissoesdosusuarios_id;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_USUARIOS(IN pModo           CHAR(1) 
                                       ,IN pSM_USUARIOS_ID USUARIOS.SM_USUARIOS_ID%TYPE = NULL
                                       ,IN pVA_NOME        USUARIOS.VA_NOME%TYPE        = NULL
                                       ,IN pVA_LOGIN       USUARIOS.VA_LOGIN%TYPE       = NULL
                                       ,IN pCH_SENHA       USUARIOS.CH_SENHA%TYPE       = NULL
                                       ,IN pVA_EMAIL       USUARIOS.VA_EMAIL%TYPE       = NULL)
RETURNS BIGINT AS 
$BODY$
DECLARE
	vRETURN BIGINT = 0;
BEGIN
  CASE pModo
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO USUARIOS (VA_NOME
                           ,VA_LOGIN
                           ,CH_SENHA
                           ,VA_EMAIL)
                    VALUES (pVA_NOME
                           ,pVA_LOGIN
                           ,pCH_SENHA
                           ,pVA_EMAIL);
    GET DIAGNOSTICS integer_var = ROW_COUNT
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
    NULL; 
    GET DIAGNOSTICS integer_var = ROW_COUNT
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
    NULL;
    ---------------------------------------------------------------------------------------
  END CASE;
END;
$BODY$
LANGUAGE PLPGSQL;
---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------
