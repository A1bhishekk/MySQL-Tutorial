
-- INT OR INTEGER
-- A medium integer. Signed range is from -2147483648 to 2147483647. Unsigned range is from 0 to 4294967295. The size parameter specifies the maximum display width (which is 255)


-- DECIMAL OR DEC
-- An exact fixed-point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter. The maximum number for size is 65. The maximum number for d is 30. The default value for size is 10. The default value for d is 0.



-- CHAR
-- A FIXED length string (can contain letters, numbers, and special characters). The size parameter specifies the column length in characters - can be from 0 to 255. Default is 1

-- VARCHAR
-- A VARIABLE length string (can contain letters, numbers, and special characters). The size parameter specifies the maximum column length in characters - can be from 0 to 65535


-- TEXT
-- Holds a string with a maximum length of 65,535 bytes


-- DATETIME(fsp)	
-- A date and time combination. Format: YYYY-MM-DD hh:mm:ss. The supported range is from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'. Adding DEFAULT and ON UPDATE in the column definition to get automatic initialization and updating to the current date and time

-- TIMESTAMP(fsp)	
-- A timestamp. TIMESTAMP values are stored as the number of seconds since the Unix epoch ('1970-01-01 00:00:00' UTC). Format: YYYY-MM-DD hh:mm:ss. The supported range is from '1970-01-01 00:00:01' UTC to '2038-01-09 03:14:07' UTC. Automatic initialization and updating to the current date and time can be specified using DEFAULT CURRENT_TIMESTAMP and ON UPDATE CURRENT_TIMESTAMP in the column definition

-- TIME(fsp)	
-- A time. Format: hh:mm:ss. The supported range is from '-838:59:59' to '838:59:59'
-- YEAR	A year in four-digit format. Values allowed in four-digit format: 1901 to 2155, and 0000.
-- MySQL 8.0 does not support year in two-digit format.

-- CREATE TABLE 
CREATE TABLE STUDENTS(
    STUDENT_ID INTEGER(20),
    NAME VARCHAR(30),
    ADDRESS TEXT,
    DOB DATE,
    FEES DEC(10,2)
);

DESC STUDENTS;

-- INSERT DATA INTO TABLE
-- FIRST WAY:
INSERT INTO STUDENTS (STUDENT_ID, NAME,ADDRESS,DOB,FEES) 
VALUES(1,"ABHISHEK KUMAR","SAMASTIPUR,BIHAR","2002-05-20",60000.50);

-- SECOND WAY
INSERT INTO STUDENTS  
VALUES(1,"ABHINAV","RANCHI","2000-05-07",50000.50);


-- THIRD WAY
INSERT INTO STUDENTS (NAME,STUDENT_ID ,ADDRESS,DOB,FEES) 
VALUES("ABHISHEK RAJ",1,"SAMASTIPUR,BIHAR","2002-05-20",60000.50);


-- DELTE TABLE 
DROP TABLE students;

-- VIEW TABLE 
SELECT * FROM STUDENTS;