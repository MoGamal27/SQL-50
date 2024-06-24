/*

Context :-

classify the type of triangle for each record in the TRIANGLES table based on the lengths of its sides

Steps :-

1- Check if the sides form a triangle: A set of three sides 𝐴 , 𝐵, and 𝐶 forms a triangle if the following conditions are met:


    𝐴 + 𝐵 > 𝐶

    𝐴 + 𝐶 > 𝐵

    𝐵 + 𝐶 > 𝐴


2- Classify the triangle:

   Equilateral: All 3 sides are equal.

   Isosceles: 2 sides are equal.

   Scalene: All 3 sides are unequal.


*/


SELECT 
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral: It''s a triangle with sides of equal length.'
        WHEN A = B OR A = C OR B = C THEN 'Isosceles: It''s a triangle with sides of equal length.'
        ELSE 'Scalene: It''s a triangle with sides of differing lengths.'
    END AS triangle_type
FROM TRIANGLES;

