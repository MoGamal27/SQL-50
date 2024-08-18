/*

CONTEXT

Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

EXAMPLE 

TOTAL CITY ENTRIES IN THE TABLE = 7
DISTINCT CITY ENTRIES IN THE TABLE = 5

TOTAL - DISTINCT = 2
*/

/* SOLUTION */

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;