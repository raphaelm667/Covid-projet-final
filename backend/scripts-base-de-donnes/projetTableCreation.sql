CREATE TABLE tbPersonnes(
idPers VARCHAR(4) NOT NULL DEFAULT AUTOINCREMENT,
nomPers VARCHAR(50) NOT NULL,
prenomPers VARCHAR(50) NOT NULL,
dateDeNaiss DATE NOT NULL,
sexePers VARCHAR(1) NOT NULL,
CONSTRAINT pkPersonnes PRIMARY KEY (idPers),
)

CREATE TABLE tbTest(
idTest VARCHAR(4) NOT NULL,
tester VARCHAR(10) NOT NULL,
expiration DATE NOT NULL,
resultTest VARCHAR(10) NOT NULL,
idPers VARCHAR(4) NOT NULL,
CONSTRAINT pkTest PRIMARY KEY (idTest),
CONSTRAINT testToPers FOREIGN KEY (idPers) REFERENCES tbPersonnes(idPers)
)

CREATE TABLE tbVille(
idVille VARCHAR(4) NOT NULL,
villeLib VARCHAR(50) NOT NULL,
CONSTRAINT pkVille PRIMARY KEY (idVille),
)


CREATE TABLE dateVisite(
idPers VARCHAR(4) NOT NULL,
idTest VARCHAR(4) NOT NULL,
idVille VARCHAR(4) NOT NULL,
dateVisite DATE,
CONSTRAINT pkpersToTest PRIMARY KEY (idPers,idTest,idVille),
CONSTRAINT fkpersToTest FOREIGN KEY (idPers) REFERENCES tbPersonnes(idPers),
CONSTRAINT fktestToTest FOREIGN KEY (idTest) REFERENCES tbTest(idTest),
CONSTRAINT fkvilleToTest FOREIGN KEY (idVille) REFERENCES tbVille(idVille)
)