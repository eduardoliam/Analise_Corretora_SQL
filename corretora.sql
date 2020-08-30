  SELECT *
  FROM transactions
  LIMIT 5;

SELECT SUM(money_in), SUM(money_out)
FROM transactions;

SELECT COUNT(money_in),(SELECT COUNT(money_in) FROM transactions WHERE currency = 'BIT') AS 'COUNT(BIT)'
FROM transactions;

SELECT *, MAX(MAX(money_in), MAX(money_out))
FROM transactions; 

SELECT AVG(money_in)
FROM transactions
WHERE currency = 'ETH' AND money_in IS NOT NULL;

SELECT date, ROUND(AVG(money_in),2) AS 'AVG IN', ROUND(AVG(money_out),2) AS 'AVG OUT'
FROM transactions
GROUP BY date;
