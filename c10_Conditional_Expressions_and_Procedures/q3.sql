-- COALESCE

SELECT amount, amount - COALESCE(0.3*amount, 0) AS amount_after_discount
FROM payment