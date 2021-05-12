INSERT INTO tbVille(idVille,villeLib) VALUES (1300,'Wavre'),(1340,'louvain-la-neuve'),(5000,'Namur');
INSERT INTO tbPersonnes(idPers,nomPers,prenomPers,dateDeNaiss,sexePers) VALUES (1,'Henrikz','Jack','1970-4-2','M');
INSERT INTO tbTest(idTest,tester,expiration,resultTest,idPers) VALUES ('1T','2021-08-21','2021-09-05','positif',1);
INSERT INTO dateTest(idPers,idTest,idVille,dateVisite) VALUES (1,'1T',1300,'2021-07-05');