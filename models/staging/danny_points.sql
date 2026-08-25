-- If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?

WITH POINTS AS
(
    SELECT PRODUCT_ID,
    CASE 
        WHEN PRODUCT_ID = 1 THEN PRICE*20
        ELSE PRICE*10 END AS POINT
    FROM MENU
)
SELECT S.CUSTOMER_ID,sum(POINT) AS TOT_POINT 
FROM POINTS P
JOIN SALES S
ON P.PRODUCT_ID = S.PRODUCT_ID
GROUP BY CUSTOMER_ID
ORDER  BY 1