/*
Link: https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=false
*/

/*
Context:

miscalc > without zero
actual > avg(salry)
miscalc > REPLACE(salry, 0 ,'')



SELCET AVG(actual) - AVG(miscalc)
*/

SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, '0', ''))) FROM employees