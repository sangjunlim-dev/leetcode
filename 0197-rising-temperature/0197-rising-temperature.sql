-- compare with day before
WITH temp AS (
    SELECT
        *,
        LAG(temperature) OVER (ORDER BY recordDate) as previous_day_temperature,
        LAG(recordDate) OVER (ORDER BY recordDate) as pervious_date
    FROM Weather
)

SELECT id
FROM temp
WHERE DATEDIFF(recordDate, pervious_date) = 1 AND 
        previous_day_temperature < temperature;