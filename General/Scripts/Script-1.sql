-- 모든 USER 조회
SELECT USER_NO, USER_ID, USER_PW, USER_NAME,
				TO_CHAR(ENROLL_DATE, 'YYYY"년" MM"월" DD"일"') ENROLL_DATE
FROM TB_USER
ORDER BY USER_NO ASC;

-- 검색어가 이름에 포함된 User 조회
SELECT USER_NO, USER_ID, USER_PW, USER_NAME,
				TO_CHAR(ENROLL_DATE, 'YYYY"년" MM"월" DD"일"') ENROLL_DATE
FROM TB_USER
WHERE USER_NAME LIKE '%' || '유' || '%'
ORDER BY USER_NO ASC;

-- USER_NO를 입력 받아 일치하는 User 삭제(DELETE)
DELETE
FROM TB_USER
WHERE USER_NO = 4;
ROLLBACK;

-- USER_ID, USER_PW가 일치하는 USER_NO(PK) 조회
SELECT USER_NO
FROM TB_USER
WHERE USER_ID = ?
AND USER_PW = ?;

-- USER_NO(PK)가 일치하는 회원의 이름을 수정
UPDATE TB_USER
SET USER_NAME = ?
WHERE USER_NO = ?;

-- 중복되는 아이디가 있는지 조회
-- 중복이면 1, 아니면 0
SELECT COUNT(*)
FROM TB_USER
WHERE USER_ID = ?;

