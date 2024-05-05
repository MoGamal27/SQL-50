/* LINK https://www.hackerrank.com/challenges/harry-potter-and-wands/problem */

/* 
Context:

 the minimum number of gold galleons needed to buy each non-evil wand of high power and age.


Output:

id,
age,
coins_needed,
power


Ordered By 

powerr desc, age desc

*/

/* SOLUTION */


SELECT w.id, w.age, w.coins_needed, w.power
FROM wands AS w
JOIN wands_property AS wp
ON w.code = wp.code
WHERE wp.is_evil = 0
AND w.coins_needed = (
    SELECT MIN(w1.coins_needed)
    FROM wands AS w1
    JOIN wands_property AS wp1
    ON w1.code = wp1.code
    WHERE wp1.is_evil = 0
    AND w1.power = w.power
    AND w1.age = w.age
)


/* Another Solution using Window function*/

WITH min_coins as(
   SELECT 
   ROW_NUMBER() OVER(PARTITION BY code,power ORDER BY coins_needed) AS ROWNUMBER
   id,
   code, 
   coins_needed,
   power
   FROM wands
)

SELECT 
id,
age,
coins_needed,
power
FROM wands_property w
JOIN min_coins mc 
ON mc.code = w.code
WHERE w.is_evil = 0
Order BY power DESC, age DESC 



