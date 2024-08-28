-- MEMBERS 테이블 생성

CREATE TABLE MEMBERS(
	MEMBER_ID VARCHAR2 (20) PRIMARY KEY,
	MEMBER_PWD VARCHAR2(20) NOT NULL,
	MEMBER_NAME VARCHAR2(30BYTE), 
	MEMBER_AGE NUMBER,
	MEMBER_EMAIL VARCHAR2(50)
);

INSERT INTO "MEMBERS"
VALUES('MEM01', '123ABC', '홍길동', '26', '123@456');
INSERT INTO "MEMBERS"
VALUES('MEM02', 'NULL', '김영희', '25', 'CURRENT_DATE');
INSERT INTO "MEMBERS"
VALUES('MEM03', 'ASDFZXCV', '박철수', '22', 'DEFAULT');

SELECT * FROM MEMBERS;

DROP TABLE MEMBERS;
-------------------------------------------------------------------------

-- BOARDS 테이블 생성

CREATE TABLE BOARDS(
	BOARD_NO NUMBER PRIMARY KEY,
	BOARD_TITLE VARCHAR2(100),
	BOARD_CONTENT VARCHAR2(4000),
	BOARD_WRITER VARCHAR2(20), 
	FOREIGN KEY 
	REFERENCES MEMBER(MEMBER_ID),
	BOARD_REG_DATE DEFAULT CURRENT_DATE
);
SELECT * FROM BOARDS;















SELECT EMP_ID "사번", EMP_NAME "이름", DECODE(SUBSTR(EMP_NO, 8, 1), '1', 'M', '2', 'F') "성별", 
			 SALARY "급여", JOB_NAME "직급명", NVL(DEPT_TITLE, '없음') "부서명"
FROM EMPLOYEE
JOIN JOB USING(JOB_CODE)
LEFT JOIN DEPARTMENT ON(DEPT_CODE = DEPT_ID)
WHERE SALARY BETWEEN 3000000 AND 4000000
	AND DECODE(SUBSTR(EMP_NO, 8, 1), '1', 'M', '2', 'F') = 'F'
ORDER BY SALARY;

-- 1 급여 범위(최소, 최대 순서로 작성) : 3000000 4000000
-- 급여 정렬(1.ASC, 2.DESC) : 2
















