--## SQL 실전문제
-- Q3
DESC SALGRADE;
-- Q4
SELECT EMPNO, ENAME, JOB
FROM EMP;
-- Q6
SELECT DNAME, LOC
FROM DEPT;
--Q8
SELECT DISTINCT(HIREDATE)
FROM EMP;
--Q11
SELECT ENAME, SAL*6
FROM EMP;
--Q12
SELECT ENAME, COMM*6
FROM EMP;
--Q13
SELECT ENAME AS NAME, SAL AS SALALY
FROM EMP;
--Q14
SELECT EMPNO AS 사원번호, ENAME AS 사원이름, HIREDATE AS 입사일, DEPTNO AS 부서번호
FROM EMP;
--Q17
SELECT HIREDATE ||'에 입사한 '|| ENAME ||'입니다.'
FROM EMP;
--Q19
SELECT EMPNO, ENAME
FROM EMP
WHERE SAL >= 2000;
--Q21
SELECT ENAME
FROM EMP
WHERE HIREDATE = '1980-12-17';
--Q22
SELECT DNAME, LOC
FROM DEPT
WHERE DEPTNO <> 30;
--Q23
SELECT HISAL, LOSAL
FROM SALGRADE
WHERE GRADE = 5;
--Q25
SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE DEPTNO = 10 AND JOB = 'MANAGER';
