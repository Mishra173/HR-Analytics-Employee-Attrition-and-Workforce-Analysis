CREATE DATABASE hranalytic;
USE hranalytic;
SELECT * FROM hr;


-- 1. Overall Workforce Summary
SELECT 
    COUNT(*) AS total_employees,
    ROUND(AVG(Attrition_Flag) * 100, 2) AS attrition_rate,
    ROUND(AVG(MonthlyIncome), 0) AS avg_salary,
    ROUND(AVG(YearsAtCompany), 1) AS avg_experience
FROM hr;


-- 2. Department-wise Attrition
SELECT 
    Department,
    COUNT(*) AS total_employees,
    ROUND(AVG(Attrition_Flag) * 100, 2) AS attrition_rate
FROM hr
GROUP BY Department
ORDER BY attrition_rate DESC;


-- 3. Salary Slab vs Attrition
SELECT 
    Salary_Slab,
    COUNT(*) AS total_employees,
    ROUND(AVG(Attrition_Flag) * 100, 2) AS attrition_rate
FROM hr
GROUP BY Salary_Slab
ORDER BY attrition_rate DESC;


-- 4. Overtime Impact
SELECT 
    OverTime,
    COUNT(*) AS total_employees,
    ROUND(AVG(Attrition_Flag) * 100, 2) AS attrition_rate
FROM hr
GROUP BY OverTime;


-- 5. Job Satisfaction vs Attrition
SELECT 
    JobSatisfaction,
    COUNT(*) AS total_employees,
    ROUND(AVG(Attrition_Flag) * 100, 2) AS attrition_rate
FROM hr
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;


-- 6. Experience Group Analysis
SELECT 
    Experience_Group,
    COUNT(*) AS total_employees,
    ROUND(AVG(Attrition_Flag) * 100, 2) AS attrition_rate
FROM hr
GROUP BY Experience_Group
ORDER BY attrition_rate DESC;


-- 7. Work-Life Risk Analysis
SELECT 
    WorkLife_Risk,
    COUNT(*) AS total_employees,
    ROUND(AVG(Attrition_Flag) * 100, 2) AS attrition_rate
FROM hr
GROUP BY WorkLife_Risk;


-- 8. Age Group Attrition
SELECT 
    Age_Group,
    COUNT(*) AS total_employees,
    ROUND(AVG(Attrition_Flag) * 100, 2) AS attrition_rate
FROM hr
GROUP BY Age_Group
ORDER BY attrition_rate DESC;


-- 9. Gender-wise Attrition
SELECT 
    Gender,
    COUNT(*) AS total_employees,
    ROUND(AVG(Attrition_Flag) * 100, 2) AS attrition_rate
FROM hr
GROUP BY Gender;


-- 10. Top 5 High-Risk Segments
SELECT 
    Department,
    Salary_Slab,
    OverTime,
    ROUND(AVG(Attrition_Flag) * 100, 2) AS attrition_rate
FROM hr
GROUP BY Department, Salary_Slab, OverTime
ORDER BY attrition_rate DESC
LIMIT 5;


/* 
   FINAL INSIGHTS

1. Overtime employees show significantly higher attrition compared to non-overtime employees.
2. Employees in lower salary slabs have a higher probability of leaving the organization.
3. Low job satisfaction is strongly associated with increased attrition.
4. Freshers and low-experience employees tend to leave more frequently.
5. High Work-Life Risk employees represent the most vulnerable segment.
*/

/* 
   BUSINESS RECOMMENDATIONS

1. Reduce excessive overtime and implement workload management policies.
2. Improve compensation structure for lower salary groups.
3. Enhance employee engagement and satisfaction initiatives.
4. Strengthen onboarding and mentorship programs for freshers.
5. Promote better work-life balance through flexible working policies.
*/