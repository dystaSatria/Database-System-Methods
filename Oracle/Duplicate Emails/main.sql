Select DISTINCT p1.email from Person p1, Person p2 where p1.id <> p2.id and 
p1.email = p2.email;
