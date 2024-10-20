# Projeto de Banco de Dados Relacional

Projeto desenvolvido para criação de banco de dados relacional.

Inicialmente foram feitas as análises das seguintes entidades e seus relacionamentos:

**Aluno**
- id_aluno (PK)
- nome
- idade
- email

**Curso**
- id_curso (PK)
- nome_curso
- descricao
- carga_horaria

**Modulo**
- id_modulo (PK)
- id_curso (FK)
- nome_modulo
- descricao_modulo

**Inscricao**
- id_inscricao (PK)
- id_aluno (FK)
- id_curso (FK)
- data_inscricao

Em seguida foi criado um DER (Diagrama de Entidade e Relacionamento) com seus relacionamentos, cardinalidades e atributos e por fim os scripts contendo os comandos de criação das tabelas e inserção de dados.<br><br>

### Ferramentas utilizadas:
<p align="left">- brModelo<br>- PostgreSQL</p>