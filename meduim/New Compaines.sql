/*
LINK : https://www.hackerrank.com/challenges/the-company/problem
*/

/*

OUTPUT : company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees


CONDITION: order_by company_code ascending

NOTE: may contain dublicate recorde, so use distinct

*/

/* SOLUTION */

SELECT 
    c.company_code,
    founder,
    COUNT(DISTINCT l.lead_manager_code),
    COUNT(DISTINCT s.senior_manager_code),
    COUNT(DISTINCT m.manager_code),
    COUNT(DISTINCT e.employee_code)
FROM     Company c 
JOIN     Lead_Manager l ON c.company_code = l.company_code
JOIN     Senior_Manager s ON l.lead_manager_code = s.lead_manager_code
JOIN     Maneger m ON s.senior_manager_code = m.senior_manager_code
JOIN     Employee e ON m.manager_code = e.manager_code
GROUP BY c.company_code, founder
ORDER BY c.company_code  



