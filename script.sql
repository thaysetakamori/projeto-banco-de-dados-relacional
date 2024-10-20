CREATE TABLE ALUNO (
id_aluno	INTEGER PRIMARY KEY,
nome		VARCHAR(30),
idade		INTEGER,
email		VARCHAR(60)
);

CREATE TABLE CURSO (
id_curso	INTEGER PRIMARY KEY,
nome_curso	VARCHAR(30),
descricao	VARCHAR(255),
carga_horaria	INTEGER
);

CREATE TABLE MODULO (
id_modulo		INTEGER PRIMARY KEY,
id_curso		INTEGER,
nome_modulo		VARCHAR(30),
descricao_modulo	VARCHAR(60),
FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

CREATE TABLE INSCRICAO (
id_inscricao	INTEGER PRIMARY KEY,
id_aluno	INTEGER,
id_curso	INTEGER,
data_inscricao	DATE,
FOREIGN KEY (id_aluno) REFERENCES ALUNO(id_aluno),
FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);


INSERT INTO ALUNO VALUES (1, 'Francisco Soares', 25, 'cladio.soares@gmail.com');
INSERT INTO ALUNO VALUES (2, 'Maria Eduarda Brito', 22, 'mariae.brito@gmail.com');
INSERT INTO ALUNO VALUES (3, 'Camila Schmidt', 29, 'camila.schmidt@gmail.com');

INSERT INTO CURSO VALUES (1, 'Administração', 'Gestão, contabilidade, marketing, finanças, recursos humanos e estratégia empresarial', 3240);
INSERT INTO CURSO VALUES (2, 'Matemática', 'Estudo de números e operações, formas geométricas, medidas, interpretação de dados, estudo de variação e raciocínio lógico', 3360);
INSERT INTO CURSO VALUES (3, 'Sistemas para Internet', 'Desenvolvimento, implementação e gestão de soluções tecnológicas', 218);

INSERT INTO MODULO VALUES (1, 2, 'Módulo 51', 'Álgebra linear e vetorial');
INSERT INTO MODULO VALUES (2, 2, 'Módulo 52', 'Geometria analítica');
INSERT INTO MODULO VALUES (3, 3, 'Módulo 51', 'Análise e projeto orientado a objetos');

INSERT INTO INSCRICAO VALUES (1, 1, 3, '15/02/2018');
INSERT INTO INSCRICAO VALUES (2, 2, 1, '08/02/2023');
INSERT INTO INSCRICAO VALUES (3, 3, 2, '16/03/2023');

SELECT * FROM CURSO;

SELECT NOME
FROM ALUNO
INNER JOIN INSCRICAO ON ALUNO.ID_ALUNO = ID_INSCRICAO
WHERE INSCRICAO.ID_CURSO = 3;

SELECT NOME
FROM ALUNO
INNER JOIN INSCRICAO ON ALUNO.ID_ALUNO = INSCRICAO.ID_ALUNO
WHERE INSCRICAO.ID_CURSO = (SELECT ID_CURSO FROM CURSO WHERE NOME_CURSO = 'Sistemas para Internet');

SELECT * FROM INSCRICAO;