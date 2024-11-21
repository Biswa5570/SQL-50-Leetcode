select
(select distinct Salary from Employee 
order by salary desc 
limit 1 offset 1) 
as SecondHighestSalary;

// Time complexity changes //

select Max(salary) as SecondHighestSalary 
from employee 
where salary not in 
(select max(salary) from employee);
