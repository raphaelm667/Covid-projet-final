ALTER PROCEDURE "DBA"."RecupVille"( )
RESULT(codePostale varchar(4),nomVille varchar(25) )
BEGIN
	SELECT idVille,villeLib FROM tbVille
    ORDER BY villeLib ASC 
END