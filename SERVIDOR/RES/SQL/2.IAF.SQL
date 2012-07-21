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
CREATE SEQUENCE SQ_AVA_IN_AVALIADOS_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 2147483647
          START 1
          CACHE 1;

CREATE TYPE ORGAOEMISSOR AS ENUM ('ABNC','CGPI/DUREX/DPF','CGPI','CGPMAF','CNIG','CNT','COREN','CRA','CRAS','CRB','CRC','CRE','CREA','CRECI','CREFIT','CRF','CRM','CRN','CRO','CRP','CRPRE','CRQ','CRRC','CRMV','CSC','CTPS','DIC','DIREX','DPMAF','DPT','DST','FGTS','FIPE','FLS','GOVGO','I CLA','IFP','IGP','IICCECF/RO','IIMG','IML','IPC','IPF','MAE','MEX','MMA','OAB','OMB','PCMG','PMMG','POF','DPF','POM','SDS','SNJ','SECC','SEJUSP','SES','EST','SESP','SJS','SJTC','SJTS','SPTC','SSP','ZZZ');
CREATE TYPE UF AS ENUM ('AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO');
CREATE TYPE TIPOLOGRADOURO AS ENUM ('Outros','Aeroporto','Alameda','Área','Avenida','Campo','Chácara','Colônia','Condomínio','Conjunto','Distrito','Esplanada','Estação','Estrada','Favela','Fazenda','Feira','Jardim','Ladeira','Lago','Lagoa','Largo','Loteamento','Morro','Núcleo','Parque','Passarela','Pátio','Praça','Quadra','Recanto','Residencial','Rodovia','Rua','Setor','Sítio','Travessa','Trecho','Trevo','Vale','Vereda','Via','Viaduto','Viela','Vila');
CREATE TYPE GENERO AS ENUM ('Masculino','Feminino');
  
CREATE TABLE AVALIADOS (IN_AVALIADOS_ID INTEGER NOT NULL DEFAULT NEXTVAL('SQ_AVA_IN_AVALIADOS_ID')
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
                       ,CONSTRAINT PK_AVA PRIMARY KEY (IN_AVALIADOS_ID)
                       ,CONSTRAINT UC_AVA_RG_ORGAOEMISSORRG_UFEMISSAORG UNIQUE (VA_RG, EN_ORGAOEMISSORRG, EN_UFEMISSAORG));

COMMENT ON TABLE AVALIADOS IS 'AVALIADOS';

ALTER SEQUENCE SQ_AVA_IN_AVALIADOS_ID 
      OWNED BY AVALIADOS.IN_AVALIADOS_ID;
---------------------------------------------------------------
CREATE SEQUENCE SQ_CBO_IN_CBO_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 2147483647
          START 1
          CACHE 1;
          
CREATE TYPE TIPOCBO AS ENUM ('Ocupação','Sinônimo');

CREATE TABLE CBO (IN_CBO_ID INTEGER NOT NULL DEFAULT NEXTVAL('SQ_CBO_IN_CBO_ID')
                 ,CH_CODIGO CHAR(6) NOT NULL
                 ,VA_TITULO VARCHAR(128) NOT NULL
                 ,EN_TIPO TIPOCBO NOT NULL
                 ,CONSTRAINT PK_CBO PRIMARY KEY (IN_CBO_ID));

COMMENT ON TABLE CBO IS 'Classificação Brasileira de Ocupações. Versão 2002';
COMMENT ON COLUMN CBO.CH_CODIGO IS 'CÓDIGO DO CBO';
COMMENT ON COLUMN CBO.VA_TITULO IS 'NOME DA OCUPAÇÃO';
COMMENT ON COLUMN CBO.EN_TIPO IS 'TIPO DO TÍTULO. PODE SER "OCUPAÇÃO" OU "SINÔNIMO"';

ALTER SEQUENCE SQ_CBO_IN_CBO_ID 
      OWNED BY CBO.IN_CBO_ID;
---------------------------------------------------------------
CREATE SEQUENCE SQ_DSD_IN_DADOSSOCIODEMOGRAFICOS_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 2147483647
          START 1
          CACHE 1;

CREATE TABLE DADOSSOCIODEMOGRAFICOS (IN_DADOSSOCIODEMOGRAFICOS_ID INTEGER NOT NULL DEFAULT NEXTVAL('SQ_DSD_IN_DADOSSOCIODEMOGRAFICOS_ID')
                                    ,IN_AVALIADOS_ID INTEGER NOT NULL
                                    ,SM_CORRACA SMALLINT NOT NULL
                                    ,SM_ESTADOCIVIL SMALLINT NOT NULL
                                    ,SM_GRAUDEINSTRUCAO SMALLINT NOT NULL
                                    ,IN_CBO_ID INTEGER NOT NULL
                                    ,BO_APOSENTADO BOOLEAN NOT NULL DEFAULT FALSE
                                    ,SM_TELEVISOR SMALLINT NOT NULL DEFAULT 0
                                    ,SM_RADIO SMALLINT NOT NULL DEFAULT 0
                                    ,SM_BANHEIRO SMALLINT NOT NULL DEFAULT 0
                                    ,SM_AUTOMOVEL SMALLINT NOT NULL DEFAULT 0
                                    ,SM_MENSALISTA SMALLINT NOT NULL DEFAULT 0
                                    ,SM_MAQUINALAVAR SMALLINT NOT NULL DEFAULT 0
                                    ,SM_VCRDVD SMALLINT NOT NULL DEFAULT 0
                                    ,SM_GELADEIRA SMALLINT NOT NULL DEFAULT 0
                                    ,SM_FREEZER SMALLINT NOT NULL DEFAULT 0
                                    ,BO_CHEFEDEFAMILIA BOOLEAN NOT NULL
                                    ,SM_GRAUINSTRCHEFEDEFAMILIA SMALLINT
                                    ,CONSTRAINT PK_DSD PRIMARY KEY (IN_DADOSSOCIODEMOGRAFICOS_ID)
                                    ,CONSTRAINT FK_DSD_AVA FOREIGN KEY (IN_AVALIADOS_ID) REFERENCES AVALIADOS (IN_AVALIADOS_ID) ON UPDATE CASCADE ON DELETE CASCADE
                                    ,CONSTRAINT FK_DSD_CBO FOREIGN KEY (IN_CBO_ID) REFERENCES CBO (IN_CBO_ID) ON UPDATE CASCADE ON DELETE RESTRICT);

COMMENT ON TABLE DADOSSOCIODEMOGRAFICOS IS 'DADOS SÓCIO-DEMOGRÁFICOS DOS AVALIADOS';
COMMENT ON COLUMN DADOSSOCIODEMOGRAFICOS.IN_CBO_ID IS 'PROFISSÃO (CBO)';

ALTER SEQUENCE SQ_DSD_IN_DADOSSOCIODEMOGRAFICOS_ID 
      OWNED BY DADOSSOCIODEMOGRAFICOS.IN_DADOSSOCIODEMOGRAFICOS_ID;
---------------------------------------------------------------
CREATE SEQUENCE SQ_SES_IN_SINAISESINTOMAS_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 2147483647
          START 1
          CACHE 1;

CREATE TABLE SINAISESINTOMAS (IN_SINAISESINTOMAS_ID INTEGER NOT NULL DEFAULT NEXTVAL('SQ_SES_IN_SINAISESINTOMAS_ID')
                             ,IN_AVALIADOS_ID INTEGER NOT NULL
                             ,BO_DORPEIPESMANBRA BOOLEAN DEFAULT FALSE
                             ,BO_BATCARIRRRAPPALREP BOOLEAN DEFAULT FALSE
                             ,BO_DIFRESDEISON BOOLEAN DEFAULT FALSE
                             ,BO_GRAPERPESSEMMOTCON BOOLEAN DEFAULT FALSE
                             ,BO_INFACOFEB BOOLEAN DEFAULT FALSE
                             ,BO_FEBDESBATCARACE BOOLEAN DEFAULT FALSE
                             ,BO_DORPERCAM BOOLEAN DEFAULT FALSE
                             ,BO_HERABDINCO BOOLEAN DEFAULT FALSE
                             ,BO_LESPESTORNAOSAR BOOLEAN DEFAULT FALSE
                             ,BO_TORINC BOOLEAN DEFAULT FALSE
                             ,BO_QUERECDEIDIFCAMDORPER BOOLEAN DEFAULT FALSE
                             ,BO_PROALGCIROLH BOOLEAN DEFAULT FALSE
                             ,BO_JUNINC BOOLEAN DEFAULT FALSE
                             ,BO_CANINCFALARATIHAB BOOLEAN DEFAULT FALSE
                             ,BO_DIFRESREP BOOLEAN DEFAULT FALSE
                             ,BO_TONDES BOOLEAN DEFAULT FALSE
                             ,BO_ALGCIRMEN90DIA BOOLEAN DEFAULT FALSE
                             ,CONSTRAINT PK_SES PRIMARY KEY (IN_SINAISESINTOMAS_ID)
                             ,CONSTRAINT FK_SES_AVA FOREIGN KEY (IN_AVALIADOS_ID) REFERENCES AVALIADOS (IN_AVALIADOS_ID) ON UPDATE CASCADE ON DELETE CASCADE);

COMMENT ON TABLE SINAISESINTOMAS IS 'CHECAGEM DE SINAIS E SINTOMAS DOS AVALIADOS';
COMMENT ON COLUMN SINAISESINTOMAS.BO_DORPEIPESMANBRA IS 'DOR OU DESCONFORTO NO PEITO, PESCOÇO, MANDÍBULA, BRAÇO(S) OU ÁREA PRÓXIMA';
COMMENT ON COLUMN SINAISESINTOMAS.BO_BATCARIRRRAPPALREP IS 'BATIMENTOS CARDÍACOS IRREGULARES E RÁPIDOS OU PALPITAÇÕES EM REPOUSO';
COMMENT ON COLUMN SINAISESINTOMAS.BO_DIFRESDEISON IS 'DIFICULDADE NA RESPIRAÇÃO QUANDO SE DEITA OU DURANTE O SONO';
COMMENT ON COLUMN SINAISESINTOMAS.BO_GRAPERPESSEMMOTCON IS 'GRANDE PERDA DE PESO SEM MOTIVO CONHECIDO';
COMMENT ON COLUMN SINAISESINTOMAS.BO_INFACOFEB IS 'INFECÇÃO ACOMPANHADA DE FEBRE';
COMMENT ON COLUMN SINAISESINTOMAS.BO_FEBDESBATCARACE IS 'FEBRE COM DESIDRATAÇÃO E BATIMENTOS CARDÍACOS ACELERADOS';
COMMENT ON COLUMN SINAISESINTOMAS.BO_DORPERCAM IS 'DOR NA PERNA AO CAMINHAR';
COMMENT ON COLUMN SINAISESINTOMAS.BO_HERABDINCO IS 'HÉRNIA ABDOMINAL INCOMODANDO';
COMMENT ON COLUMN SINAISESINTOMAS.BO_LESPESTORNAOSAR IS 'LESÕES NOS PÉS OU TORNOZELOS QUE NÃO SARAM';
COMMENT ON COLUMN SINAISESINTOMAS.BO_TORINC IS 'TORNOZELOS INCHADOS';
COMMENT ON COLUMN SINAISESINTOMAS.BO_QUERECDEIDIFCAMDORPER IS 'QUEDA RECENTE DEIXANDO DIFICULDADE PARA CAMINHAR E DOR PERSISTENTE';
COMMENT ON COLUMN SINAISESINTOMAS.BO_PROALGCIROLH IS 'PROBLEMAS OU ALGUMA CIRURGIA NOS OLHOS';
COMMENT ON COLUMN SINAISESINTOMAS.BO_JUNINC IS 'JUNTAS INCHADAS';
COMMENT ON COLUMN SINAISESINTOMAS.BO_CANINCFALARATIHAB IS 'CANSAÇO INCOMUM OU FALTA DE AR EM ATIVIDADES HABITUAIS';
COMMENT ON COLUMN SINAISESINTOMAS.BO_DIFRESREP IS 'DIFICULDADE NA RESPIRAÇÃO EM REPOUSO';
COMMENT ON COLUMN SINAISESINTOMAS.BO_TONDES IS 'TONTURA OU DESMAIO';
COMMENT ON COLUMN SINAISESINTOMAS.BO_TONDES IS 'ALGUMA CIRURGIA A MENOS DE 90 DIAS';

ALTER SEQUENCE SQ_SES_IN_SINAISESINTOMAS_ID 
      OWNED BY SINAISESINTOMAS.IN_SINAISESINTOMAS_ID;
---------------------------------------------------------------
CREATE SEQUENCE SQ_PAF_IN_PARAMETROSFISIOLOGICOS_ID
      INCREMENT 1
       MINVALUE 1
       MAXVALUE 2147483647
          START 1
          CACHE 1;
          
CREATE TABLE PARAMETROSFISIOLOGICOS (IN_PARAMETROSFISIOLOGICOS_ID INTEGER NOT NULL DEFAULT NEXTVAL('SQ_PAF_IN_PARAMETROSFISIOLOGICOS_ID')
                                    ,IN_AVALIADOS_ID INTEGER NOT NULL
                                    ,TS_MOMAFE TIMESTAMP NOT NULL DEFAULT LOCALTIMESTAMP
                                    ,SM_FREPUL SMALLINT NOT NULL
                                    ,BO_PULRIT BOOLEAN NOT NULL
                                    ,SM_PRESIS SMALLINT NOT NULL
                                    ,SM_PREDIA SMALLINT NOT NULL
                                    ,CONSTRAINT PK_PAF PRIMARY KEY (IN_PARAMETROSFISIOLOGICOS_ID)
                                    ,CONSTRAINT FK_PAF_AVA FOREIGN KEY (IN_AVALIADOS_ID) REFERENCES AVALIADOS (IN_AVALIADOS_ID) ON UPDATE CASCADE ON DELETE CASCADE);

COMMENT ON TABLE PARAMETROSFISIOLOGICOS IS 'PARÂMETROS FISIOLÓGICOS DOS AVALIADOS';
COMMENT ON COLUMN PARAMETROSFISIOLOGICOS.IN_AVALIADOS_ID IS 'ID DO AVALIADO';
COMMENT ON COLUMN PARAMETROSFISIOLOGICOS.TS_MOMAFE IS 'MOMENTO DA AFERIÇÃO';
COMMENT ON COLUMN PARAMETROSFISIOLOGICOS.SM_FREPUL IS 'FREQUÊNCIA DO PULSO (BPM)';
COMMENT ON COLUMN PARAMETROSFISIOLOGICOS.BO_PULRIT IS 'PULSO RÍTMICO (TRUE) OU ARRÍTMICO (FALSE)';
COMMENT ON COLUMN PARAMETROSFISIOLOGICOS.SM_PRESIS IS 'PRESSÃO SISTÓLICA (mmHg)';
COMMENT ON COLUMN PARAMETROSFISIOLOGICOS.SM_PREDIA IS 'PRESSÃO DIASTÓLICA (mmHg)';

ALTER SEQUENCE SQ_PAF_IN_PARAMETROSFISIOLOGICOS_ID 
      OWNED BY PARAMETROSFISIOLOGICOS.IN_PARAMETROSFISIOLOGICOS_ID;
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
                           ,COALESCE(pBO_SUPERUSUARIO,FALSE));

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
                                        ,COALESCE(pSM_LER,0)
                                        ,COALESCE(pSM_INSERIR,0)
                                        ,COALESCE(pSM_ALTERAR,0)
                                        ,COALESCE(pSM_EXCLUIR,0));

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
                                      ,COALESCE(pSM_LER,0)
                                      ,COALESCE(pSM_INSERIR,0)
                                      ,COALESCE(pSM_ALTERAR,0)
                                      ,COALESCE(pSM_EXCLUIR,0));

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
CREATE OR REPLACE FUNCTION IDU_AVALIADOS(IN pMODO                     CHAR
                                        ,IN pIN_AVALIADOS_ID          AVALIADOS.IN_AVALIADOS_ID%TYPE          = NULL
                                        ,IN pVA_NOME                  AVALIADOS.VA_NOME%TYPE                  = NULL
                                        ,IN pEN_GENERO                AVALIADOS.EN_GENERO%TYPE                = NULL
                                        ,IN pDA_DATANASCIMENTO        AVALIADOS.DA_DATANASCIMENTO%TYPE        = NULL
                                        ,IN pVA_RG                    AVALIADOS.VA_RG%TYPE                    = NULL
                                        ,IN pEN_ORGAOEMISSORRG        AVALIADOS.EN_ORGAOEMISSORRG%TYPE        = NULL
                                        ,IN pEN_UFEMISSAORG           AVALIADOS.EN_UFEMISSAORG%TYPE           = NULL
                                        ,IN pEN_TIPOLOGRADOURO        AVALIADOS.EN_TIPOLOGRADOURO%TYPE        = NULL
                                        ,IN pVA_NOMELOGRADOURO        AVALIADOS.VA_NOMELOGRADOURO%TYPE        = NULL
                                        ,IN pVA_IDLOGRADOURO          AVALIADOS.VA_IDLOGRADOURO%TYPE          = NULL
                                        ,IN pVA_COMPLEMENTOLOGRADOURO AVALIADOS.VA_COMPLEMENTOLOGRADOURO%TYPE = NULL
                                        ,IN pVA_BAIRROLOGRADOURO      AVALIADOS.VA_BAIRROLOGRADOURO%TYPE      = NULL
                                        ,IN pVA_CIDADE                AVALIADOS.VA_CIDADE%TYPE                = NULL
                                        ,IN pEN_UF                    AVALIADOS.EN_UF%TYPE                    = NULL
                                        ,IN pCH_FONERESIDENCIAL       AVALIADOS.CH_FONERESIDENCIAL%TYPE       = NULL
                                        ,IN pCH_FONECELULAR           AVALIADOS.CH_FONECELULAR%TYPE           = NULL
                                        ,IN pTX_OBSERVACOES           AVALIADOS.TX_OBSERVACOES%TYPE           = NULL)
RETURNS BIGINT AS
$BODY$
DECLARE
  vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO AVALIADOS (VA_NOME
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
                            ,COALESCE(pVA_IDLOGRADOURO,'S/N')
                            ,pVA_COMPLEMENTOLOGRADOURO
                            ,pVA_BAIRROLOGRADOURO
                            ,pVA_CIDADE
                            ,pEN_UF
                            ,pCH_FONERESIDENCIAL
                            ,pCH_FONECELULAR
                            ,pTX_OBSERVACOES);

      vRETURN := CURRVAL('SQ_AVA_IN_AVALIADOS_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM AVALIADOS
            WHERE IN_AVALIADOS_ID = pIN_AVALIADOS_ID;

      GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE AVALIADOS
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
       WHERE IN_AVALIADOS_ID = pIN_AVALIADOS_ID;

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
CREATE OR REPLACE FUNCTION IDU_DADOSSOCIODEMOGRAFICOS(IN pMODO                         CHAR
                                                     ,IN pIN_DADOSSOCIODEMOGRAFICOS_ID DADOSSOCIODEMOGRAFICOS.IN_DADOSSOCIODEMOGRAFICOS_ID%TYPE = NULL
                                                     ,IN pIN_AVALIADOS_ID              DADOSSOCIODEMOGRAFICOS.IN_AVALIADOS_ID%TYPE              = NULL
                                                     ,IN pSM_CORRACA                   DADOSSOCIODEMOGRAFICOS.SM_CORRACA%TYPE                   = NULL
                                                     ,IN pSM_ESTADOCIVIL               DADOSSOCIODEMOGRAFICOS.SM_ESTADOCIVIL%TYPE               = NULL
                                                     ,IN pSM_GRAUDEINSTRUCAO           DADOSSOCIODEMOGRAFICOS.SM_GRAUDEINSTRUCAO%TYPE           = NULL
                                                     ,IN pIN_CBO_ID                    DADOSSOCIODEMOGRAFICOS.IN_CBO_ID%TYPE                    = NULL
                                                     ,IN pBO_APOSENTADO                DADOSSOCIODEMOGRAFICOS.BO_APOSENTADO%TYPE                = NULL
                                                     ,IN pSM_TELEVISOR                 DADOSSOCIODEMOGRAFICOS.SM_TELEVISOR%TYPE                 = NULL
                                                     ,IN pSM_RADIO                     DADOSSOCIODEMOGRAFICOS.SM_RADIO%TYPE                     = NULL
                                                     ,IN pSM_BANHEIRO                  DADOSSOCIODEMOGRAFICOS.SM_BANHEIRO%TYPE                  = NULL
                                                     ,IN pSM_AUTOMOVEL                 DADOSSOCIODEMOGRAFICOS.SM_AUTOMOVEL%TYPE                 = NULL
                                                     ,IN pSM_MENSALISTA                DADOSSOCIODEMOGRAFICOS.SM_MENSALISTA%TYPE                = NULL
                                                     ,IN pSM_MAQUINALAVAR              DADOSSOCIODEMOGRAFICOS.SM_MAQUINALAVAR%TYPE              = NULL
                                                     ,IN pSM_VCRDVD                    DADOSSOCIODEMOGRAFICOS.SM_VCRDVD%TYPE                    = NULL
                                                     ,IN pSM_GELADEIRA                 DADOSSOCIODEMOGRAFICOS.SM_GELADEIRA%TYPE                 = NULL
                                                     ,IN pSM_FREEZER                   DADOSSOCIODEMOGRAFICOS.SM_FREEZER%TYPE                   = NULL
                                                     ,IN pBO_CHEFEDEFAMILIA            DADOSSOCIODEMOGRAFICOS.BO_CHEFEDEFAMILIA%TYPE            = NULL
                                                     ,IN pSM_GRAUINSTRCHEFEDEFAMILIA   DADOSSOCIODEMOGRAFICOS.SM_GRAUINSTRCHEFEDEFAMILIA%TYPE   = NULL)
RETURNS BIGINT AS
$BODY$
DECLARE
  vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO DADOSSOCIODEMOGRAFICOS (IN_AVALIADOS_ID
                                         ,SM_CORRACA
                                         ,SM_ESTADOCIVIL
                                         ,SM_GRAUDEINSTRUCAO
                                         ,IN_CBO_ID
                                         ,BO_APOSENTADO
                                         ,SM_TELEVISOR
                                         ,SM_RADIO
                                         ,SM_BANHEIRO
                                         ,SM_AUTOMOVEL
                                         ,SM_MENSALISTA
                                         ,SM_MAQUINALAVAR
                                         ,SM_VCRDVD
                                         ,SM_GELADEIRA
                                         ,SM_FREEZER
                                         ,BO_CHEFEDEFAMILIA
                                         ,SM_GRAUINSTRCHEFEDEFAMILIA)
                                  VALUES (pIN_AVALIADOS_ID
                                         ,pSM_CORRACA
                                         ,pSM_ESTADOCIVIL
                                         ,pSM_GRAUDEINSTRUCAO
                                         ,pIN_CBO_ID
                                         ,COALESCE(pBO_APOSENTADO,FALSE)
                                         ,COALESCE(pSM_TELEVISOR,0)
                                         ,COALESCE(pSM_RADIO,0)
                                         ,COALESCE(pSM_BANHEIRO,0)
                                         ,COALESCE(pSM_AUTOMOVEL,0)
                                         ,COALESCE(pSM_MENSALISTA,0)
                                         ,COALESCE(pSM_MAQUINALAVAR,0)
                                         ,COALESCE(pSM_VCRDVD,0)
                                         ,COALESCE(pSM_GELADEIRA,0)
                                         ,COALESCE(pSM_FREEZER,0)
                                         ,pBO_CHEFEDEFAMILIA
                                         ,pSM_GRAUINSTRCHEFEDEFAMILIA);

      vRETURN := CURRVAL('SQ_DSD_IN_DADOSSOCIODEMOGRAFICOS_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM DADOSSOCIODEMOGRAFICOS
            WHERE IN_DADOSSOCIODEMOGRAFICOS_ID = pIN_DADOSSOCIODEMOGRAFICOS_ID;

      GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE DADOSSOCIODEMOGRAFICOS
         SET IN_AVALIADOS_ID            = pIN_AVALIADOS_ID
           , SM_CORRACA                 = pSM_CORRACA
           , SM_ESTADOCIVIL             = pSM_ESTADOCIVIL
           , SM_GRAUDEINSTRUCAO         = pSM_GRAUDEINSTRUCAO
           , IN_CBO_ID                  = pIN_CBO_ID
           , BO_APOSENTADO              = pBO_APOSENTADO
           , SM_TELEVISOR               = pSM_TELEVISOR
           , SM_RADIO                   = pSM_RADIO
           , SM_BANHEIRO                = pSM_BANHEIRO
           , SM_AUTOMOVEL               = pSM_AUTOMOVEL
           , SM_MENSALISTA              = pSM_MENSALISTA
           , SM_MAQUINALAVAR            = pSM_MAQUINALAVAR
           , SM_VCRDVD                  = pSM_VCRDVD
           , SM_GELADEIRA               = pSM_GELADEIRA
           , SM_FREEZER                 = pSM_FREEZER
           , BO_CHEFEDEFAMILIA          = pBO_CHEFEDEFAMILIA
           , SM_GRAUINSTRCHEFEDEFAMILIA = pSM_GRAUINSTRCHEFEDEFAMILIA
       WHERE IN_DADOSSOCIODEMOGRAFICOS_ID = pIN_DADOSSOCIODEMOGRAFICOS_ID;

    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
  END CASE;

  RETURN vRETURN;
END;
$BODY$
LANGUAGE PLPGSQL;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_SINAISESINTOMAS(IN pMODO                     CHAR
                                              ,IN pIN_SINAISESINTOMAS_ID    SINAISESINTOMAS.IN_SINAISESINTOMAS_ID%TYPE    = NULL
                                              ,IN pIN_AVALIADOS_ID          SINAISESINTOMAS.IN_AVALIADOS_ID%TYPE          = NULL
                                              ,IN pBO_DORPEIPESMANBRA       SINAISESINTOMAS.BO_DORPEIPESMANBRA%TYPE       = NULL
                                              ,IN pBO_BATCARIRRRAPPALREP    SINAISESINTOMAS.BO_BATCARIRRRAPPALREP%TYPE    = NULL
                                              ,IN pBO_DIFRESDEISON          SINAISESINTOMAS.BO_DIFRESDEISON%TYPE          = NULL
                                              ,IN pBO_GRAPERPESSEMMOTCON    SINAISESINTOMAS.BO_GRAPERPESSEMMOTCON%TYPE    = NULL
                                              ,IN pBO_INFACOFEB             SINAISESINTOMAS.BO_INFACOFEB%TYPE             = NULL
                                              ,IN pBO_FEBDESBATCARACE       SINAISESINTOMAS.BO_FEBDESBATCARACE%TYPE       = NULL
                                              ,IN pBO_DORPERCAM             SINAISESINTOMAS.BO_DORPERCAM%TYPE             = NULL
                                              ,IN pBO_HERABDINCO            SINAISESINTOMAS.BO_HERABDINCO%TYPE            = NULL
                                              ,IN pBO_LESPESTORNAOSAR       SINAISESINTOMAS.BO_LESPESTORNAOSAR%TYPE       = NULL
                                              ,IN pBO_TORINC                SINAISESINTOMAS.BO_TORINC%TYPE                = NULL
                                              ,IN pBO_QUERECDEIDIFCAMDORPER SINAISESINTOMAS.BO_QUERECDEIDIFCAMDORPER%TYPE = NULL
                                              ,IN pBO_PROALGCIROLH          SINAISESINTOMAS.BO_PROALGCIROLH%TYPE          = NULL
                                              ,IN pBO_JUNINC                SINAISESINTOMAS.BO_JUNINC%TYPE                = NULL
                                              ,IN pBO_CANINCFALARATIHAB     SINAISESINTOMAS.BO_CANINCFALARATIHAB%TYPE     = NULL
                                              ,IN pBO_DIFRESREP             SINAISESINTOMAS.BO_DIFRESREP%TYPE             = NULL
                                              ,IN pBO_TONDES                SINAISESINTOMAS.BO_TONDES%TYPE                = NULL
                                              ,IN pBO_ALGCIRMEN90DIA        SINAISESINTOMAS.BO_ALGCIRMEN90DIA%TYPE        = NULL)
RETURNS BIGINT AS
$BODY$
DECLARE
  vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO SINAISESINTOMAS (IN_AVALIADOS_ID
                                  ,BO_DORPEIPESMANBRA
                                  ,BO_BATCARIRRRAPPALREP
                                  ,BO_DIFRESDEISON
                                  ,BO_GRAPERPESSEMMOTCON
                                  ,BO_INFACOFEB
                                  ,BO_FEBDESBATCARACE
                                  ,BO_DORPERCAM
                                  ,BO_HERABDINCO
                                  ,BO_LESPESTORNAOSAR
                                  ,BO_TORINC
                                  ,BO_QUERECDEIDIFCAMDORPER
                                  ,BO_PROALGCIROLH
                                  ,BO_JUNINC
                                  ,BO_CANINCFALARATIHAB
                                  ,BO_DIFRESREP
                                  ,BO_TONDES
                                  ,BO_ALGCIRMEN90DIA)
                           VALUES (pIN_AVALIADOS_ID
                                  ,COALESCE(pBO_DORPEIPESMANBRA,FALSE)
                                  ,COALESCE(pBO_BATCARIRRRAPPALREP,FALSE)
                                  ,COALESCE(pBO_DIFRESDEISON,FALSE)
                                  ,COALESCE(pBO_GRAPERPESSEMMOTCON,FALSE)
                                  ,COALESCE(pBO_INFACOFEB,FALSE)
                                  ,COALESCE(pBO_FEBDESBATCARACE,FALSE)
                                  ,COALESCE(pBO_DORPERCAM,FALSE)
                                  ,COALESCE(pBO_HERABDINCO,FALSE)
                                  ,COALESCE(pBO_LESPESTORNAOSAR,FALSE)
                                  ,COALESCE(pBO_TORINC,FALSE)
                                  ,COALESCE(pBO_QUERECDEIDIFCAMDORPER,FALSE)
                                  ,COALESCE(pBO_PROALGCIROLH,FALSE)
                                  ,COALESCE(pBO_JUNINC,FALSE)
                                  ,COALESCE(pBO_CANINCFALARATIHAB,FALSE)
                                  ,COALESCE(pBO_DIFRESREP,FALSE)
                                  ,COALESCE(pBO_TONDES,FALSE)
                                  ,COALESCE(pBO_ALGCIRMEN90DIA,FALSE));

      vRETURN := CURRVAL('SQ_SES_IN_SINAISESINTOMAS_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM SINAISESINTOMAS
            WHERE IN_SINAISESINTOMAS_ID = pIN_SINAISESINTOMAS_ID;

      GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE SINAISESINTOMAS
         SET IN_AVALIADOS_ID          = pIN_AVALIADOS_ID
           , BO_DORPEIPESMANBRA       = pBO_DORPEIPESMANBRA
           , BO_BATCARIRRRAPPALREP    = pBO_BATCARIRRRAPPALREP
           , BO_DIFRESDEISON          = pBO_DIFRESDEISON
           , BO_GRAPERPESSEMMOTCON    = pBO_GRAPERPESSEMMOTCON
           , BO_INFACOFEB             = pBO_INFACOFEB
           , BO_FEBDESBATCARACE       = pBO_FEBDESBATCARACE
           , BO_DORPERCAM             = pBO_DORPERCAM
           , BO_HERABDINCO            = pBO_HERABDINCO
           , BO_LESPESTORNAOSAR       = pBO_LESPESTORNAOSAR
           , BO_TORINC                = pBO_TORINC
           , BO_QUERECDEIDIFCAMDORPER = pBO_QUERECDEIDIFCAMDORPER
           , BO_PROALGCIROLH          = pBO_PROALGCIROLH
           , BO_JUNINC                = pBO_JUNINC
           , BO_CANINCFALARATIHAB     = pBO_CANINCFALARATIHAB
           , BO_DIFRESREP             = pBO_DIFRESREP
           , BO_TONDES                = pBO_TONDES
           , BO_ALGCIRMEN90DIA        = pBO_ALGCIRMEN90DIA
       WHERE IN_SINAISESINTOMAS_ID = pIN_SINAISESINTOMAS_ID;

    GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
  END CASE;

  RETURN vRETURN;
END;
$BODY$
LANGUAGE PLPGSQL;
---------------------------------------------------------------
CREATE OR REPLACE FUNCTION IDU_PARAMETROSFISIOLOGICOS(IN pMODO                         CHAR
                                                     ,IN pIN_PARAMETROSFISIOLOGICOS_ID PARAMETROSFISIOLOGICOS.IN_PARAMETROSFISIOLOGICOS_ID%TYPE = NULL
                                                     ,IN pIN_AVALIADOS_ID              PARAMETROSFISIOLOGICOS.IN_AVALIADOS_ID%TYPE              = NULL
                                                     ,IN pTS_MOMAFE                    PARAMETROSFISIOLOGICOS.TS_MOMAFE%TYPE                    = NULL
                                                     ,IN pSM_FREPUL                    PARAMETROSFISIOLOGICOS.SM_FREPUL%TYPE                    = NULL
                                                     ,IN pBO_PULRIT                    PARAMETROSFISIOLOGICOS.BO_PULRIT%TYPE                    = NULL
                                                     ,IN pSM_PRESIS                    PARAMETROSFISIOLOGICOS.SM_PRESIS%TYPE                    = NULL
                                                     ,IN pSM_PREDIA                    PARAMETROSFISIOLOGICOS.SM_PREDIA%TYPE                    = NULL)
RETURNS BIGINT AS
$BODY$
DECLARE
  vRETURN BIGINT := 0;
BEGIN
  CASE pMODO
    WHEN 'I' THEN ----------------------------------------------------------- [ INSERT ] --
      INSERT INTO PARAMETROSFISIOLOGICOS (IN_AVALIADOS_ID
                                         ,TS_MOMAFE
                                         ,SM_FREPUL
                                         ,BO_PULRIT
                                         ,SM_PRESIS
                                         ,SM_PREDIA)
                                  VALUES (pIN_AVALIADOS_ID
                                         ,COALESCE(pTS_MOMAFE,LOCALTIMESTAMP)
                                         ,pSM_FREPUL
                                         ,pBO_PULRIT
                                         ,pSM_PRESIS
                                         ,pSM_PREDIA);

      vRETURN := CURRVAL('SQ_PAF_IN_PARAMETROSFISIOLOGICOS_ID');
    ---------------------------------------------------------------------------------------
    WHEN 'D' THEN ----------------------------------------------------------- [ DELETE ] --
      DELETE FROM PARAMETROSFISIOLOGICOS
            WHERE IN_PARAMETROSFISIOLOGICOS_ID = pIN_PARAMETROSFISIOLOGICOS_ID;

      GET DIAGNOSTICS vRETURN := ROW_COUNT;
    ---------------------------------------------------------------------------------------
    WHEN 'U' THEN ----------------------------------------------------------- [ UPDATE ] --
      UPDATE PARAMETROSFISIOLOGICOS
         SET IN_AVALIADOS_ID = pIN_AVALIADOS_ID
           , TS_MOMAFE       = pTS_MOMAFE
           , SM_FREPUL       = pSM_FREPUL
           , BO_PULRIT       = pBO_PULRIT
           , SM_PRESIS       = pSM_PRESIS
           , SM_PREDIA       = pSM_PREDIA
       WHERE IN_PARAMETROSFISIOLOGICOS_ID = pIN_PARAMETROSFISIOLOGICOS_ID;

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