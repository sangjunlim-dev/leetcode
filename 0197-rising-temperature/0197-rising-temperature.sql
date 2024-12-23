-- compare with day before
SELECT id
FROM Weather w1
WHERE temperature > 
    (
        SELECT temperature
        FROM Weather w2
        WHERE recordDate = DATE_SUB(w1.recordDate, INTERVAL 1 DAY)
    )