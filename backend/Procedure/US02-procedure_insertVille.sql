ALTER PROCEDURE "DBA"."sp_InsertVilles"(codePost VARCHAR(4),nomVill VARCHAR(50))
BEGIN
INSERT INTO tbVille(idVille,villeLib) VALUES (codePost,nomVill);
END