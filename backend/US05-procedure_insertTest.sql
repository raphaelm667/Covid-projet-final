ALTER PROCEDURE "DBA"."sp_insertTest" (dateTest varchar(10),expireTest DATE,resultaTest VARCHAR(10),idePers VARCHAR(4))
BEGIN 
DECLARE idDeTest VARCHAR(4);
SET idDeTest = (SELECT string(cast((substr(idTest,1,1)+1) as DECIMAL(2,0)),'T') FROM tbTest WHERE idTest IN (SELECT string(cast((MAX(substr(idTest,1,1))) as DECIMAL(2,0)),'T') FROM tbTest ));
INSERT INTO tbTest(idTest,tester,expiration,resultTest,idPers) VALUES (idDeTest,dateTest,expireTest,resultaTest,idePers);
END