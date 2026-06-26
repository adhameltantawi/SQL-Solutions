-- https://www.hackerrank.com/challenges/weather-observation-station-20

SELECT DISTINCT
    CAST(
        ROUND(
            PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY LAT_N) OVER (),
            4
        ) AS DECIMAL(10,4)
    ) AS MIDLAT
FROM STATION;
