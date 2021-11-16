CREATE DATABASE Library

CREATE TABLE Types(
Id int PRIMARY KEY IDENTITY,
Type nvarchar(100)
)

INSERT INTO Types
Values('Dram'),
	  ('Dedectiv')

CREATE TABLE Books(
Id int PRIMARY KEY IDENTITY,
Name nvarchar (50) NOT NULL,
Publiction_year int,
TypeId int FOREIGN KEY REFERENCES Types(Id)
)

INSERT INTO Books
Values('YAD',1942,1),
      ('Sefiller',1862,1),
	  ('Uchuncu variant',2007,2),
	  ('Namerdin Uslubu',2018,2)

CREATE TABLE Authors(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(50),
Surname nvarchar(100)
)

INSERT INTO Authors
Values('Alber','Kamu'),
      ('Viktor','Huqo'),
	  ('Chingiz','Abdullayev'),
	  ('Chingiz','Abdullayev')

CREATE TABLE BookAuthors(
Id int PRIMARY KEY IDENTITY,
BookId int FOREIGN KEY REFERENCES Books(Id),
AuthorId int FOREIGN KEY REFERENCES Authors(Id),
)

 INSERT INTO BookAuthors
 Values(1,1),
       (1,2),
	   (2,3),
	   (2,4)

SELECT Books.Id,Books.Name,Books.TypeId,Types.Type 'Type Name' FROM Books INNER JOIN Types ON Books.TypeId=Types.Id

SELECT Books.Id,Books.Name,Books.TypeId,Types.Type 'Type Name' FROM Books LEFT JOIN Types ON Books.TypeId=T

SELECT Books.Id,Books.Name,Books.TypeId,Types.Type 'Type Name' FROM Books RIGHT JOIN Types ON Books.TypeId=Types.Id

SELECT Books.Id,Books.Name,Books.TypeId,Types.Type 'Type Name' FROM Books FULL JOIN Types ON Books.TypeId=Types.Id



