ALTER PROCEDURE "DBA"."sp_insertPers"(prenom VARCHAR(50),nom VARCHAR(50),naissance DATE,sexe VARCHAR(1))
BEGIN 
INSERT INTO tbPersonnes (nomPers,prenomPers,dateDeNaiss,sexePers) VALUES (nom,prenom,naissance,sexe);
END