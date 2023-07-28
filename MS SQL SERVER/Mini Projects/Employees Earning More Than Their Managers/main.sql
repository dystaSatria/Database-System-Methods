SELECT e.name as 'Employee' from Employee e, Employee m  WHERE e.managerID = m.ID AND e.salary>m.salary
