ALTER PROCEDURE "DBA"."recupCasVille" ()
RESULT (nbCas VARCHAR(25),codeVille VARCHAR(4))
BEGIN
SELECT count(t.resultTest),v.idVille 
FROM dateVisite as v
JOIN tbPersonnes as p ON v.idPers = p.idPers
JOIN tbTest as t ON p.idPers = t.idPers
WHERE t.resultTest='positif' AND t.expiration >=  DATE(NOW()) AND  v.dateVisite < DATE( NOW())
GROUP BY v.idVille
END