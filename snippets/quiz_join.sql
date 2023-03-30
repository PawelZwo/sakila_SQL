CREATE TABLE Students
(
    StudentID   INT,
    StudentName VARCHAR(10)
);

CREATE TABLE Classes
(
    ClassID   INT,
    ClassName VARCHAR(10)
);

CREATE TABLE StudentClass
(
    StudentID INT,
    ClassId   INT
);

INSERT INTO Students (StudentID, StudentName)
VALUES (1, 'John'),
       (2, 'Matt'),
       (3, 'James');

INSERT INTO Classes (ClassID, ClassName)
VALUES (1, 'Maths'),
       (2, 'Arts'),
       (3, 'History');

INSERT INTO StudentClass (StudentID, ClassId)
VALUES (1, 1),
       (1, 2),
       (3, 1),
       (3, 2),
       (3, 3);

SELECT *
FROM students;

SELECT *
FROM classes;

SELECT *
FROM studentclass;

-- what will be the best possible join, if we want to retrieve
-- all the students who have signed up for the classes in the summer

SELECT st.StudentName, cl.ClassName
FROM students st
INNER JOIN studentclass sc ON st.studentid = sc.studentid
INNER JOIN Classes cl ON sc.classid = cl.classid;

-- what will be the best possible join, if we want to retrieve
-- all the students who have signed up for no classes in the summer

SELECT st.StudentName
FROM students st
LEFT JOIN studentclass sc ON st.studentid = sc.studentid
WHERE sc.classid IS NULL;
