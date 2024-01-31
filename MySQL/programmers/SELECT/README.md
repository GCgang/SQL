# SELECT

### 평균 일일 대여 요금 구하기

```sql
SELECT
    ROUND(AVG(daily_fee)) AS AVERAGE_FE
FROM
    CAR_RENTAL_COMPANY_CAR
WHERE
    car_type = 'SUV'
```

### 조건에 맞는 도서 리스트 출력하기

```sql
SELECT
    BOOK_ID,
    DATE_FORMAT(PUBLISHED_DATE, "%Y-%m-%d") AS PUBLISHED_DATE
FROM
    BOOK
WHERE
    CATEGORY = '인문' AND YEAR(PUBLISHED_DATE) = '2021'
ORDER BY
    PUBLISHED_DATE ASC;
```

### 12세 이하인 여자 환자 목록 출력하기

```sql
SELECT
    PT_NAME,
    PT_NO,
    GEND_CD,
    AGE,
    IFNULL(TLNO, 'NONE') AS TLNO
    -- COALESCE(TLNO, 'NONE') AS TLNO
FROM PATIENT
WHERE
    AGE <= 12 AND GEND_CD = 'W'
ORDER BY
    AGE DESC,
    PT_NAME ASC;
```

### 3월에 태어난 여성 회원 목록 출력하기

```sql
SELECT
    PT_NAME,
    PT_NO,
    GEND_CD,
    AGE,
    IFNULL(TLNO, 'NONE') AS TLNO
    -- COALESCE(TLNO, 'NONE') AS TLNO
FROM PATIENT
WHERE
    AGE <= 12 AND GEND_CD = 'W'
ORDER BY
    AGE DESC,
    PT_NAME ASC;
```

### 인기있는 아이스크림

```sql
SELECT
    FLAVOR
FROM
    FIRST_HALF
ORDER BY
    TOTAL_ORDER DESC,
    SHIPMENT_ID ASC;
```

### 흉부외과 또는 일반외과 의사 목록 출력하기

```sql
SELECT
    DR_NAME,
    DR_ID,
    MCDP_CD,
    DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM
    DOCTOR
WHERE
    MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY
    HIRE_YMD DESC, DR_NAME ASC;
```

### 조건에 부합하는 중고거래 댓글 조회하기

```sql
```

### 과일로 만든 아이스크림 고르기

```sql
```

### 서울에 위치한 식당 목록 출력하기

```sql
```

### 강원도에 위치한 생산공장 목록 출력하기

```sql
SELECT
    FACTORY_ID,
    FACTORY_NAME,
    ADDRESS
FROM
    FOOD_FACTORY
WHERE
    ADDRESS LIKE '%강원도%'
    -- INSTR(ADDRESS, '강원도') > 0
ORDER BY
    FACTORY_ID ASC
```

### 재구매가 일어난 상품과 회원 리스트 구하기

```sql
SELECT
    USER_ID,
    PRODUCT_ID
FROM
    ONLINE_SALE
GROUP BY
    USER_ID, PRODUCT_ID -- 각 유저가 각 상품을 몇 번 구매했는지 알기 위함
HAVING
    COUNT(*) > 1 -- 동일한 유저가 동일한 상품을 1회 이상 구매한 경우를 필터링
ORDER BY
    USER_ID ASC,
    PRODUCT_ID DESC;
```

### 모든 레코드 조회하기

```sql
SELECT
    *
FROM
    ANIMAL_INS
ORDER BY
    ANIMAL_ID ASC
```

### 오프라인/온라인 판매 데이터 통합하기

```sql
```

### 역순 정렬하기

```sql
SELECT
    NAME,
    DATETIME
FROM
    ANIMAL_INS
ORDER BY
    ANIMAL_ID DESC;
```

### 아픈 동물 찾기

```sql
```

### 어린 동물 찾기

```sql
```

### 동물의 아이디와 이름

```sql
```

### 여러 기준으로 정렬하기

```sql
```

### 상위 n개 레코드

```sql
```

### 조건에 맞는 회원수 구하기

```sql
```

### Reference
[프로그래머스 SQL 고득점 Kit](https://school.programmers.co.kr/learn/courses/30/parts/17042)
