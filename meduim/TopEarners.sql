/*
link : https://www.hackerrank.com/challenges/earnings-of-employees/problem
*/


/*
Context:

earnings = month * salary

Output: Number of employees, max_total_earnings

example 
name salary month
mo    2000    4
ahm  1000    1
karm  2000    3
li    2000    4

1- calc total earnings = month * salary
mo > 2000 * 4 = 8000
ahm > 1000 * 1 = 1000
karm > 2000 * 3 = 6000
li > 2000 * 4 = 8000

2- group by total_earnings and count 
8000 : 2 (mo, li)
1000 : 1 (ahm)
6000 : 1 (karm)

3- sort by desc order 
8000 : 2 (mo, li)
6000 : 1 (karm)
1000 : 1 (ahm)

4 limit 1 row 
8000 : 2 (mo, li)

*/

SELECT 
    (months * salary) AS earning, 
    COUNT(*) 
FROM 
    employee 
GROUP BY 
    1 
ORDER BY 
    earning DESC 
LIMIT 1;

