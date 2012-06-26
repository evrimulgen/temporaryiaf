---------------------------------------------------------------
-- EXECUTE ESTE SCRIPT CONECTADO EM QUALQUER DATABASE QUE NÃO 
-- SEJA IAF, POIS A MESMA SERÁ DROPADA E RECRIADA
---------------------------------------------------------------
DROP DATABASE IF EXISTS IAF;

CREATE DATABASE IAF
  WITH OWNER = POSTGRES
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese, Brazil'
       LC_CTYPE = 'Portuguese, Brazil'
       CONNECTION LIMIT = -1;