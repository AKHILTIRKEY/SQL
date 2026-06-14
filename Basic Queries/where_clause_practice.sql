CREATE DATABASE student_record;
USE student_record;

CREATE TABLE children (
id INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(10),
city VARCHAR(50)
);

INSERT INTO children
(id, name, marks, grade, city)
VALUES
(101, "Olivia Barrett", 49, "C", "Ploand"),
(102, "Ethan  Sinclair", 51, "B", "Miami"),
(103, "Maya Harandez", 70, "B", "Seattle"),
(104, "Liam Donovan", 89, "A", "Denver"),
(105, "Sophia Ngayen", 99, "A", "New Orleans"),
(106, "Caleb Foster", 65, "B", "Minneapolis");

-- Practice with whare constraint

-- 1. Show all students whose marks are greater than 70
SELECT * FROM children
WHERE marks > 70;

-- 2. Show all students who got grade A.
SELECT * FROM children
WHERE grade = "A";

-- 3. Show all students from Miami.
SELECT * FROM children
WHERE city = "Miami";

-- 4. Show all students whose marks are less than 60.
SELECT * FROM children
WHERE marks > 69;

-- 5. Show the name and city of the student named Olivia Barrett.
SELECT name, city FROM children
WHERE name = "Olivia Barrett";

-- 6. Show all students whose marks are between 50 and 80.
SELECT * FROM children
WHERE marks BETWEEN 50 AND 80;

-- 7. Show all students who are from Denver or Seattle.
SELECT * FROM children
WHERE city = "Denver" OR city = "Seattle";

-- Another method 
SELECT * FROM children
WHERE city IN ("Denver", "Seattle");

-- 8. Show all students whose grade is not A.
SELECT * FROM children
WHERE grade != "A";

-- 9. Show all students whose marks are greater than 50 and whose grade is B.
SELECT * FROM children
WHERE marks > 50 AND grade = "B";

-- 10. Show all students whose names start with the letter 'M'.
SELECT * FROM children
WHERE name LIKE "M%";


SELECT * FROM children;


