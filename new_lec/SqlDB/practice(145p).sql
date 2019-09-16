--## SQL 실전문제 (145p)
--홀수문제

--Q1
SELECT * 
FROM EMP NATURAL JOIN DEPT;
--Q3
SELECT EMPNO, ENAME, DEPT.DNAME
FROM EMP NATURAL JOIN DEPT;
--Q5
SELECT EMPNO, ENAME, DEPT.DNAME
FROM EMP JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;
--Q7
SELECT ENAME, LOC
FROM EMP NATURAL JOIN DEPT
WHERE LOC = 'NEW YORK';
--Q9
SELECT ENAME, LOC
FROM EMP JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
WHERE LOC = 'NEW YORK';
--Q11
SELECT ENAME, DNAME, LOC
FROM EMP NATURAL JOIN DEPT
WHERE ENAME = 'ADAMS';
--Q13
SELECT ENAME, DNAME, LOC
FROM EMP JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
WHERE ENAME = 'ADAMS';
--Q15
SELECT ENAME, LOC, SAL
FROM EMP NATURAL JOIN DEPT
WHERE SAL >= 2000;
--Q17
SELECT ENAME, JOB, LOC
FROM EMP NATURAL JOIN DEPT
WHERE JOB = 'SALESMAN'
AND LOC = 'CHICAGO';
--Q19
SELECT EMPNO, ENAME, DNAME, LOC
FROM EMP NATURAL JOIN DEPT
WHERE DNAME = 'ACCOUNTING'
OR LOC = 'CHICAGO';
--Q21
SELECT EMPNO, ENAME, DNAME, LOC
FROM EMP JOIN DEPT USING(DEPTNO)
WHERE DNAME = 'ACCOUNTING'
OR LOC = 'CHICAGO';
--Q23
SELECT A.EMPNO, A.ENAME, B.EMPNO, B.ENAME
FROM EMP A, EMP B
WHERE A.MGR = B.EMPNO;
--Q25
SELECT ENAME, SAL
FROM EMP
WHERE SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'BLAKE');
--Q27
SELECT ENAME
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'FORD');
--Q29
SELECT DNAME, COUNT(*)
FROM DEPT NATURAL JOIN EMP
GROUP BY DNAME
ORDER BY COUNT(*) DESC;
--Q31
SELECT EMPNO, ENAME
FROM EMP NATURAL JOIN DEPT
WHERE DNAME = 'SALES'
AND JOB = 'MANAGER'
ORDER BY ENAME;
--Q33
SELECT *
FROM EMP
WHERE SAL < (SELECT SAL
FROM EMP
WHERE ENAME = 'ALLEN');
--Q35
SELECT *
FROM EMP
WHERE SAL > (SELECT AVG(SAL)
FROM EMP);
--Q37
SELECT DEPTNO, MAX(SAL)
FROM EMP
WHERE SAL > (SELECT MAX(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING DEPTNO = 20)
GROUP BY DEPTNO;