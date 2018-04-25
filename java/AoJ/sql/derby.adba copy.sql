connect 'jdbc:derby:adbaDB;create=true';
DROP TABLE EMP;
DROP TABLE DEPT;
CREATE TABLE DEPT(DEPTNO NUMERIC(2), DNAME VARCHAR(14), LOC VARCHAR(13), PRIMARY KEY(DEPTNO));
CREATE TABLE EMP(EMPNO NUMERIC(4), ENAME VARCHAR(10), JOB VARCHAR(9), MGR NUMERIC(4), HIREDATE DATE, SAL NUMERIC(7,2), COMM NUMERIC(7,2), DEPTNO NUMERIC(2), PRIMARY KEY(EMPNO), foreign key(DEPTNO) references DEPT);
INSERT INTO DEPT VALUES(10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES(30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES(40,'OPERATIONS','BOSTON');
INSERT INTO EMP VALUES(7369,'SMITH','CLERK',7902, date('1980-12-17'), 800,NULL,20);
INSERT INTO EMP VALUES(7499,'ALLEN','SALESMAN',7698, date('1981-02-20'), 1600, 300, 30);
INSERT INTO EMP VALUES(7521,'WARD','SALESMAN',7698, date('1981-02-22'), 1250, 500, 30);
INSERT INTO EMP VALUES(7566,'JONES','MANAGER', 7839, date('1981-04-02'), 2975, NULL, 20);
INSERT INTO EMP VALUES(7654,'MARTIN','SALESMAN',7698, date('1981-09-28'), 1250,1400, 30);
INSERT INTO EMP VALUES(7698,'BLAKE','MANAGER',7839, date('1981-05-01'), 2850, NULL, 30);
INSERT INTO EMP VALUES(7782,'CLARK','MANAGER',7839, date('1981-06-05'), 2450, NULL, 10);
INSERT INTO EMP VALUES(7788,'SCOTT','ANALYST',7566, date('1987-07-13'), 3000, NULL, 20);
INSERT INTO EMP VALUES(7839,'KING','PRESIDENT',NULL, date('1981-11-17'), 5000, NULL, 10);

INSERT INTO EMP VALUES(7844,'TURNER','SALESMAN',7698, date('1981-09-08'), 1500, 0, 30);
INSERT INTO EMP VALUES(7876,'ADAMS','CLERK',7788, date('1987-07-13'), 1100, NULL, 20);
INSERT INTO EMP VALUES(7900,'JAMES','CLERK',7698, date('1981-12-03'), 950, NULL, 30);
INSERT INTO EMP VALUES(7902,'FORD','ANALYST',7566, date('1981-12-03'), 3000, NULL, 20);
INSERT INTO EMP VALUES(7934,'MILLER','CLERK',7782, date('1982-01-23'), 1300, NULL, 10);

DROP TABLE BONUS;;
CREATE TABLE BONUS(ENAME VARCHAR(10), JOB VARCHAR(9)  ,SAL NUMERIC(7,2),COMM NUMERIC(7,2)) ;
DROP TABLE SALGRADE;
CREATE TABLE SALGRADE( GRADE NUMERIC,LOSAL NUMERIC(7,2),HISAL NUMERIC(7,2));

INSERT INTO SALGRADE VALUES (1,700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);