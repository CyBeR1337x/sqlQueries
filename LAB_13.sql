--1:
SELECT * FROM student WHERE age IN(SELECT MIN(age) FROM student)

--2:
SELECT fname FROM student 
WHERE sid IN(SELECT sid FROM enrollment 
WHERE cid IN(SELECT cid FROM course WHERE category = 'CS'))

--3:
SELECT * FROM student 
WHERE sid IN(SELECT sid FROM enrollment
WHERE cid IN(SELECT cid FROM course WHERE category = 'MATH'))

--4:
SELECT fname FROM student 
WHERE sid IN(SELECT sid FROM enrollment 
WHERE cid IN(SELECT cid FROM course WHERE category = 'MANAGEMENT') AND city != 'RWP')

--5:
SELECT title FROM course 
WHERE cid IN(SELECT cid FROM enrollment
WHERE sid IN(SELECT sid FROM student WHERE fname = 'Kaleem'))

--6:
SELECT title FROM course
WHERE cid IN(SELECT cid FROM enrollment
WHERE sid IN(SELECT sid FROM student WHERE fname IN('ALI', 'BASIT')))

--7:
CREATE VIEW std_VIEW AS
SELECT * FROM student
WHERE sid IN(SELECT sid FROM student
WHERE city = 'RWP')

--8:
CREATE VIEW std_VIEW2 AS 
SELECT sid, fname, city FROM student


--9:
CREATE VIEW std_VIEW3 AS 
SELECT sid, fname, city FROM student
WHERE sid IN(SELECT sid FROM student 
WHERE city = 'ISB')

--10:
CREATE VIEW cgpa_VIEW AS 
SELECT sid, fname, cgpa FROM student 
WHERE sid IN(SELECT sid FROM student WHERE cgpa > 3)

