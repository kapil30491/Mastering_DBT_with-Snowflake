-- How many days has each customer visited the restaurant?

SELECT CUSTOMER_ID,count(DISTINCT ORDER_DATE) AS DAY_COUNTS
FROM SALES
GROUP BY CUSTOMER_ID