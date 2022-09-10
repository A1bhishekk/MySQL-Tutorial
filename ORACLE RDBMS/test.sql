        -- **************CREATING A TABLE***************

CREATE TABLE EMP
       (EMPNO NUMBER(4) NOT NULL,
        ENAME VARCHAR2(10),
        JOB VARCHAR2(9),
        MGR NUMBER(4),
        HIREDATE DATE,
        SAL NUMBER(7,2),
        COMM NUMBER(7,2),
        DEPTNO NUMBER(2));

    --    ********** INSERT VALUE IN TABLE***********

INSERT INTO EMP VALUES
        (7369,'SMITH','CLERK',7902,'17-DEC-80',800,NULL,20);
INSERT INTO EMP VALUES
        (7499,'ALLEN','SALESMAN',7698,'20-FEB-81',1600,300,30);
INSERT INTO EMP VALUES
        (7521,'WARD','SALESMAN',7698,'22-FEB-81',1250,500,30);
INSERT INTO EMP VALUES
        (7566,'JONES','MANAGER',7839,'2-APR-81',2975,NULL,20);
INSERT INTO EMP VALUES
        (7654,'MARTIN','SALESMAN',7698,'28-SEP-81',1250,1400,30);
INSERT INTO EMP VALUES
        (7698,'BLAKE','MANAGER',7839,'1-MAY-81',2850,NULL,30);
INSERT INTO EMP VALUES
        (7782,'CLARK','MANAGER',7839,'9-JUN-81',2450,NULL,10);
INSERT INTO EMP VALUES
        (7788,'SCOTT','ANALYST',7566,'09-DEC-82',3000,NULL,20);
INSERT INTO EMP VALUES
        (7839,'KING','PRESIDENT',NULL,'17-NOV-81',5000,NULL,10);
INSERT INTO EMP VALUES
        (7844,'TURNER','SALESMAN',7698,'8-SEP-81',1500,0,30);
INSERT INTO EMP VALUES
        (7876,'ADAMS','CLERK',7788,'12-JAN-83',1100,NULL,20);
INSERT INTO EMP VALUES
        (7900,'JAMES','CLERK',7698,'3-DEC-81',950,NULL,30);
INSERT INTO EMP VALUES
        (7902,'FORD','ANALYST',7566,'3-DEC-81',3000,NULL,20);
INSERT INTO EMP VALUES
        (7934,'MILLER','CLERK',7782,'23-JAN-82',1300,NULL,10);

        -- *************DISPLAYING TABLE CONTENT**************

SELECT * FROM EMP;

            -- ******************************

 CREATE TABLE DEPT
       (DEPTNO NUMBER(2),
        DNAME VARCHAR2(14),
        LOC VARCHAR2(13) );

        -- **********************

INSERT INTO DEPT VALUES
        (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES
        (30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES
        (40,'OPERATIONS','BOSTON');           

                -- ************
SELECT * FROM DEPT;

--              **************

CREATE TABLE BONUS
        (
        ENAME VARCHAR2(10),
        JOB VARCHAR2(9),
        SAL NUMBER,
        COMM NUMBER
        );

CREATE TABLE SALGRADE
      ( GRADE NUMBER,
        LOSAL NUMBER,
        HISAL NUMBER );

INSERT INTO SALGRADE VALUES (1,700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);

CREATE TABLE DUMMY
      ( DUMMY NUMBER );

INSERT INTO DUMMY VALUES (0);
SELECT * FROM DUMMY;

-- *********************ADD COLUMN IN A TABLE********************************

ALTER TABLE DEPT
ADD CITY VARCHAR2(30);
DESC DEPT;

--     **********REMOVE COLUMN IN A TABLE***********
ALTER TABLE DEPT
DROP COLUMN CITY;
DESC DEPT;

--   *********MODIFY TABLE*************

ALTER TABLE DEPT
MODIFY LOC VARCHAR2(15);
DESC DEPT;

--    **********RENAME COLUMN NAME**********
ALTER TABLE DEPT
RENAME COLUMN LOC TO CITY;
DESC DEPT;

--    *********RENAME TABLE NAME************
ALTER TABLE DEPT 
RENAME TO DEPARTMENT;
DESC DEPARTMENT;

-- *********delete a table****************
DELETE FROM BONUS;
ROLLBACK;
DESC BONUS;

--  *********drop a table********

DROP TABLE DUMMY;

--  ********delete all tupples or rows simultaniously************

TRUNCATE TABLE DEPT;
SELECT * FROM DEPT;

--         ******permanent delete table*******

PURGE TABLE IES;


-- *******************************OPERATORS IN SQL**************************************************

-- OPERATORS     DESCRIPTION

-- =             EQUAL
-- <> / !=       NOT EQUAL
-- >             GREATER  
-- <             SMALLER
-- >=            GREATER THAN OR EQUAL
-- <=            LESS THAN OR EQUAL
-- BETWEEN       BETWEEN an inclusive range.
-- LIKE          Search for a pattern.
-- IN            To specify multiple possible value for a column.
 

-- Q.1} Write a query to display employe name whose salary more than 1000.

SELECT ENAME,SAL
FROM EMP
WHERE SAL>1000;

-- Q.2}  Write a query to display employee name whose not get salary.

SELECT ENAME,SAL
FROM EMP
WHERE SAL = NULL;

--Q.3}Display the empployee name working in 10th department salary more than 1000.

SELECT ENAME , DEPTNO,SAL 
FROM EMP
WHERE SAL>1000 AND DEPTNO = 10;

-- Q.4} Write a querry to display employee name whose not working in 10th department.

SELECT ENAME,DEPTNO FROM EMP
WHERE DEPTNO != 10;

-- Q.5}Display the employee name whose workin 10th or 20th department and salary more than 1000.

SELECT ENAME ,DEPTNO,SAL
FROM EMP
WHERE (DEPTNO=10 OR DEPTNO=20) AND SAL>1000;

-- Q.6}display the employee name who work in 10th,20th,30th department.

SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO IN (10,20,30);

-- Q.7}display the employee name who not work in 10th,20th,30th department.

SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO NOT IN (10,20);



SELECT ENAME ,SAL
FROM EMP
WHERE ENAME='SMITH';


SELECT ENAME,JOB
FROM EMP
WHERE JOB='MANAGER';


SELECT ENAME,SAL*12
FROM EMP;


SELECT JOB,SAL
FROM EMP
WHERE SAL>2000;

SELECT ENAME , JOB
FROM EMP
WHERE JOB!='CLERK';





-- ***********************BETWEEN AND FOR NUMBER DATA TYPE*************************

SELECT ENAME,SAL
FROM EMP
WHERE SAL   BETWEEN 1000 AND 5000;


SELECT ENAME,SAL,DEPTNO
FROM EMP
WHERE (SAL  BETWEEN 1000 AND 5000) AND DEPTNO IN (10,20);



SHOW USER

SELECT  SYSTIMESTAMP FROM DUAL;
SELECT SYSDATE FROM DUAL;


SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%LL%';

desc emp;
SELECT * FROM EMP;
SELECT ENAME,JOB,SAL FROM EMP 
WHERE SAL IN
(SELECT MAX(SAL) FROM EMP 
GROUP BY JOB );


-- *********CREATE USER ********CREATE USER***************

 CREATE USER MONIKA IDENTIFIED BY ABHISHEK;

--  *************GRANT PERMISSION TO USER***************

 GRANT CONNECT TO MONIKA;

-- **************GIVE DATABASE ACCESS TO USER******************

 GRANT SELECT ON EMP TO MONIKA;

--  ***************USER ACCES COLUMN****************

SELECT ENAME FROM SYSTEM.EMP;

-- Q.}Give permision  to insert only salary,ENAME,JOB?

GRANT INSERT (SAL,ENAME,JOB)
ON EMP TO MONIKA;

-- ************REVOKE  COMMAND*************

REVOKE SELECT ON EMP FROM MONIKA;

-- *************UPDATE  PASSWORD**************

ALTER USER MONIKA IDENTIFIED BY abhishek;





