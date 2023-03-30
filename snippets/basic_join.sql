CREATE table tabl1(
    ID INT, Value VARCHAR(10)
);

CREATE table tabl2(
    ID INT, Value VARCHAR(10)
);

INSERT INTO tabl1( ID, Value)
VALUES (1, 'First'),
       (2, 'Second'),
       (3, 'Third'),
       (4, 'Fourth'),
       (5, 'Fifth');

INSERT INTO tabl2( ID, Value)
VALUES (1, 'First'),
       (2, 'Second'),
       (3, 'Third'),
       (6, 'Sixth'),
       (7, 'Seventh'),
       (8, 'Eighth');

SELECT *
FROM tabl1 t1
INNER JOIN tabl2 t2 ON t1.ID = t2.ID;

SELECT t1.ID AS t1ID, t2.ID AS t2ID, t1.Value AS t1Value,t2.Value AS t2Value
FROM tabl1 t1
INNER JOIN tabl2 t2 ON t1.ID = t2.ID;

SELECT *
FROM tabl1 t1
LEFT JOIN tabl2 t2 ON t1.ID = t2.ID;

SELECT *
FROM tabl2 t2
LEFT JOIN tabl1 t1 ON t2.ID = t1.ID;

SELECT *
FROM tabl1 t1
RIGHT JOIN tabl2 t2 ON t1.ID = t2.ID;

SELECT *
FROM tabl1 t1
FULL JOIN tabl2 t2 ON t1.ID = t2.ID;

SELECT *
FROM tabl1 t1
RIGHT JOIN tabl2 t2 ON t1.ID = t2.ID
WHERE t1.ID IS NULL;

SELECT *
FROM tabl1 t1
CROSS JOIN tabl2 t2;