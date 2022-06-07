SELECT * FROM employee.emp_record_table;

select  EMP_ID,first_name,LAST_NAME, GENDER, DEPT
 from employee.emp_record_table;
 
 select  EMP_ID, concat(first_name ,' ',LAST_NAME) as last_name,DEPT
 from employee.emp_record_table;
 
 select  EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING 
 from employee.emp_record_table
  where( EMP_RATING > 2);
  
  select  EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING 
 from employee.emp_record_table
  where( EMP_RATING > 4);
  
  select  EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING 
 from employee.emp_record_table
  where( EMP_RATING > 2) and (4 > EMP_RATING);
  
  select  concat(first_name,' ',last_name) as 'Name',dept
   from employee.emp_record_table
  where dept='finance';
  
  select concat(first_name,last_name) as 'Name',dept
  from employee.emp_record_table
  where role <>'manager' and role !='president';
 
 select count(role) from employee.emp_record_table;
 
select concat(first_name,last_name) as 'Name' ,dept from  employee.emp_record_table
 where DEPT= 'finance' or dept='healthcare'
 union 
 select concat(first_name,' ',last_name) as 'Name' ,dept from  employee.data_science_team
 where DEPT= 'finance' or dept='healthcare';

select EMP_ID, FIRST_NAME, LAST_NAME, ROLE , DEPT, EMP_RATING ,max(EMP_RATING)
from employee.emp_record_table
group by dept
order by max(EMP_RATING);
 
 select concat(first_name,' ',last_name) as 'Name',min(salary),max(salary),role
 from employee.emp_record_table
 group by role;
 
 select concat(first_name,' ',last_name)as 'Name', EXP,
 rank () over (order by EXP) Ranks
 from employee.emp_record_table;
 
 select concat(first_name,' ',last_name)as 'Name', country, salary
  from employee.emp_record_table
 where salary>6000;
 
 select  concat(first_name,' ',last_name)as 'Name', EXP
  from employee.emp_record_table
 where EXP>10;

call employee.more_than_3_years_exp;

call JUNIOR_DATA_SCIENTIST;

call ASSOCIATE_DATA_SCIENTIST;

call SENIOR_DATA_SCIENTIST;

call LEAD_DATA_SCIENTIST;

 call MANAGER;

 select concat(first_name,' ',last_name)as 'Name' 
 from employee.emp_record_table
 where first_name ='eric';
 
alter table emp_record_table add index firstname(first_name(50)); 
drop index firstname on emp_record_table;
 
  select concat(first_name,' ',last_name)as 'Name' 
 from employee.emp_record_table
 where first_name ='eric';
 

select  concat(first_name,' ',last_name)as 'Name' ,( salary *0.05)* EMP_RATING as bonus
from emp_record_table;


select  concat(first_name,' ',last_name)as 'Name',country ,avg(SALARY) as average_salary 
from emp_record_table
group by country ;
 
 select  concat(first_name,' ',last_name)as 'Name' ,continent,avg(SALARY) as average_salary 
from emp_record_table
group by continent ;