CREATE DATABASE Formula1;
USE Formula1;

-- Driver and constructors championships Tableau file going into python
SELECT results.raceId, year ,races.name as 'Grand Prix', concat(forename,' ', surname) as Driver,  constructors.name as Constructor, points 
from results JOIN drivers on results.driverId = drivers.driverId 
JOIN constructors on results.constructorId = constructors.constructorId
JOIN races on results.raceID = races.raceId 
WHERE year not in (1950,1951,1952,1953,1954,1955,1956)
ORDER BY year, raceID ASC, finishingPosition ASC ;