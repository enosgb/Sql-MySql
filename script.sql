(1) CREATE DATABASE  AulaDB;

(2) CREATE TABLE  Aluno(


        Id  INT AUTO_INCREMENT, 

        Nome  VARCHAR(100)  NOT NULL ,

        Email  VARCHAR(100)  NOT NULL UNIQUE,

        Nascimento DATE NOT NULL 

);

(3)
INSERT INTO Aluno (Id, Nome Email)

 VALUES (2, 

                ‘Aluno 2’, 

                ‘aluno2@teste.com’);

                 2000/07/02

)


INSERT INTO Aluno (Id, Nome Email)

 VALUES (3, 

                ‘Aluno 3’, 

                ‘aluno3@teste.com’);

                 2000/07/03

)


INSERT INTO Aluno (Id, Nome Email)

 VALUES (4, 

                ‘Aluno 4’, 

                ‘aluno4@teste.com’);

                 2000/07/04

)


INSERT INTO Aluno (Id, Nome Email)

 VALUES (5, 

                ‘Aluno 5’, 

                ‘aluno5@teste.com’);

                 2000/07/05

)


INSERT INTO Aluno (Id, Nome Email)

 VALUES (6, 

                ‘Aluno 6’, 

                ‘aluno6@teste.com’);

                 2000/07/06

)

INSERT INTO Aluno (Id, Nome Email)

 VALUES (7, 

                ‘Aluno 7’, 

                ‘aluno7@teste.com’);

                 2000/07/07

)

INSERT INTO Aluno (Id, Nome Email)

 VALUES (8, 

                ‘Aluno 8’, 

                ‘aluno8@teste.com’);

                 2000/07/08

)


 INSERT INTO Aluno (Id, Nome Email)

 VALUES (9, 

                ‘Aluno 9’, 

                ‘aluno9@teste.com’);

                 2000/07/09

)


INSERT INTO Aluno (Id, Nome Email)

 VALUES (10, 

                ‘Aluno 10’, 

                ‘aluno10@teste.com’);

                 2000/07/10

)


 INSERT INTO Aluno (Id, Nome Email)

 VALUES (11, 

                ‘Aluno 11’, 

                ‘aluno11@teste.com’);

                 2000/07/11

)


4 UPDATE Aluno
    SET Nome = 'teste'

     WHERE  Id%2  =0 

5 UPDATE Aluno

    SET Nome = 'teste2'

    WHERE  Id%2  =1

6 SELECT * FROM Aluno

   order by Nascimento desc
