ALTER PROCEDURE "DBA"."recupCasTot"()
RESULT (nbCas VARCHAR(25))
BEGIN
SELECT count(t.resultTest) FROM dateVisite as v
JOIN tbPersonnes as p ON v.idPers = p.idPers
JOIN tbTest as t ON p.idPers = t.idPers
WHERE t.resultTest='positif' AND t.expiration >=  DATE(NOW())
END