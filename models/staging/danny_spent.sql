-- What is the total amount each customer spent at the restaurant?

SELECT CUSTOMER_ID,sum(PRICE) AS TOT_SPENT 
FROM SALES S
JOIN MENU M
ON S.PRODUCT_ID=M.PRODUCT_ID
GROUP BY CUSTOMER_ID