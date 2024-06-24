/* 
Context:

 Query the list of CITY names from STATION that do not end with vowels


Expected Output
Addison 
Agency 
Alanson 
Albany 
Albion 
Algonac 


==> we use not like '%a' or not like '%e' or not like '%i' or not like '%o' or not like '%u'
or ==> not like [aeiou]
*/

/* SOLUTION */

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT LIKE '%[aeiou]';