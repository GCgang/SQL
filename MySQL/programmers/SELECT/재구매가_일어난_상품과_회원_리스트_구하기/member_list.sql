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