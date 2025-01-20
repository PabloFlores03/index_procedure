use company_constraints;
show tables;
show index from Project;

Create index DnoIndex on employee (Dno);
Alter table Project add unique index_Pname(Pname);
Alter table employee add unique index_Fname(Fname);

Select * from employee; 
Select * from departament;   
    	
-- Qual o departamento com maior número de pessoas?        
Select Dno, count(*) as'Numero de funcionários'
	From employee
		Group by Dno;
        
-- Quais são os departamentos por cidade? 
Select Dno, Address as 'Cidades', Dname
	From employee
		inner join departament
			on Dnumber = Dno
		Order by Dno;
        
-- Relação de empregrados por departamento          
Select Fname, Dno, Dname
	From employee
     inner join departament
     on Dnumber = Dno;
     
     
     Desc employee;
     
drop procedure procedure_insert_employee;     
     
DELIMITER $$
Create procedure procedure_insert_employee()
BEGIN 
	insert into employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno) values (Pablo, D, Flores, 112233456,1988-03-03, 1355-Dallas-Houston-TX, M, 25000.00,333445554,4);
END $$
DELIMITER ;

Show procedure status;