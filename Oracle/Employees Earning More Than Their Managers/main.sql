SELECT EM.name AS Employee FROM Employee EM ,Employee MNGR
WHERE EM.managerId=MNGR.id AND EM.salary>MNGR.salary
