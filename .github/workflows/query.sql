SELECT callsign,
       number,
       origin,
       ( lastseen - firstseen ) AS duration,
       day
FROM   flights
WHERE  destination = 'KSFO'
ORDER  BY day DESC
LIMIT  1000;
