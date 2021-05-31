ALTER PROCEDURE "DBA"."sp_insertVisit" (pers VARCHAR(4),ville VARCHAR(4),dateVis DATE)
BEGIN
INSERT INTO dateVisite(idPers,idVille,dateVisite) VALUES (pers,ville,dateVis);
END