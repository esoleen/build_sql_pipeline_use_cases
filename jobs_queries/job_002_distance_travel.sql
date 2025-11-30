SELECT name, ROUND(SUM(r.distance)) AS distance_traveled
FROM users u
INNER JOIN rides r ON u.id = r.passenger_id
GROUP BY name
ORDER BY distance_traveled DESC ;