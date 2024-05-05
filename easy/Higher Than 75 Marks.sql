/* LINK https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true */


/* 
CONTEXT:
Query the Name of any student in STUDENTS who scored higher than 75 Marks


OUTPUT:
Name 

ORDER BY
last three characters of each name.
id ASC

*/

/* SOLUTION */

SELECT NAME 
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3) ASC, ID ASC;
