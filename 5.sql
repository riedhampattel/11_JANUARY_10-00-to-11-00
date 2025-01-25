create role faculty;

create user Rohan identified by 'abc@123' default role faculty;

grant select,insert on 11_january.employees to Rohan; 

revoke insert on 11_january.employees from Rohan;