USE usal37_agence_v;

SELECT * FROM cities; 
SELECT * FROM countries;

SELECT * FROM trips WHERE trip_start > '2020-05-01';

/* VILLES + PAYS */

-- SELECT city_name, cities.country_code country_name FROM cities,countries;

/* Afficher les villes avec le nom du pays associé */
SELECT *
FROM cities JOIN countries ON cities.country_code = countries.country_code;

/* Afficher les pays avec les noms des villes associées
   JOIN      =  les pays sans ville associée ne sont pas affichés
   LEFT JOIN = les pays sans ville associée sont affichés */
SELECT city_name, countries.country_code, country_name 
FROM countries LEFT JOIN cities ON cities.country_code = countries.country_code;


/* Afficher les villes avec le nom du pays associé
   Et uniquement les villes dont le nom du pays commence par "I" */
SELECT city_code, city_name, cities.country_code, country_name 
FROM cities 
JOIN countries 
ON cities.country_code = countries.country_code AND country_name LIKE 'I%';


/* Afficher les villes avec le nom du pays associé
   Et uniquement les villes dont le nom du pays commence par "I"
   Syntaxe alternative */
SELECT city_code, city_name, cities.country_code, country_name 
FROM cities 
JOIN countries 
ON cities.country_code = countries.country_code 
WHERE country_name LIKE 'I%';