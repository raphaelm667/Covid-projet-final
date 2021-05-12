ALTER PROCEDURE "DBA"."RecupPers" ()
RESULT (persId VARCHAR(4),nom VARCHAR(50),prenom VARCHAR(50),naissance DATE,test VARCHAR(4),tester VARCHAR(10),expirer date, resultat VARCHAR(10))
BEGIN
SELECT tbPersonnes.idPers,nomPers,prenomPers,dateDeNaiss,tbTest.idTest,tester,expiration,resultTest FROM tbPersonnes 
LEFT JOIN tbTest ON tbPersonnes.idPers = tbTest.idPers
END