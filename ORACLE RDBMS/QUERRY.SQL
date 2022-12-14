CREATE TABLE EMPLOYE
(
    EMP_ID NUMBER(10),
    EMP_NAME VARCHAR2(20),
    DEPARTMENT VARCHAR2(20),
    SALARY NUMBER(10,2)
    
);
DESC EMPLOYE;
INSERT ALL
INTO EMPLOYE VALUES(1,'ABHISHEK','CSE',60000)
INTO EMPLOYE VALUES(2,'MONIKA','BIO',50000)
INTO EMPLOYE VALUES(3,'ABHINAV','MATH',40000)
INTO EMPLOYE VALUES(4,'AMARJEET','CSE',30000)
INTO EMPLOYE VALUES(5,'ABHIJEET','MATH',20000)
INTO EMPLOYE VALUES(6,'BIPIN','BIO',10000)
SELECT * FROM DUAL;
SELECT * FROM EMPLOYE;

                             --PRACTICE SET--

-- Q.1}Write a SQL Querry to display the maximum and minimum salary from EMPLOYEE Table.
SELECT MAX(SALARY) FROM EMPLOYE;    -- For maximum salary

SELECT MIN(SALARY) FROM EMPLOYE;    -- For minimum salary

-- Q.2}Write a SQL Querry to display the Employe name who is taking maximum and minimum salary.
--For maximum salary employe...
SELECT EMP_NAME
FROM EMPLOYE
WHERE SALARY =(SELECT MAX(SALARY) FROM EMPLOYE);

--For minimum salary employe...
SELECT EMP_NAME
FROM EMPLOYE
WHERE SALARY =(SELECT MIN(SALARY) FROM EMPLOYE);

-- Q.3}Write a SQL Querry to display the second highest salary from employe table.

SELECT MAX(SALARY) FROM EMPLOYE
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYE);
 
--  Q.4}Write a SQL Querry to display the Employe name who is taking second highest salary.

SELECT EMP_NAME FROM EMPLOYE
WHERE SALARY IN (SELECT MAX(SALARY) FROM EMPLOYE
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYE));


-- Q.5} Third highest salary..
SELECT MAX(SALARY) FROM EMPLOYE
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYE
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYE)
 );