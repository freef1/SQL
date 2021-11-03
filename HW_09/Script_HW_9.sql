create table employees (
	id serial primary key,
	employee_name varchar (50) not null
);

insert into employees (id, employee_name)
values (default, 'Элла');

select * from employees;

	==========================================
	
create table salary (
	id serial primary key,
	monthly_salary integer not null
);

insert into salary (id, monthly_salary)
values (default, 2500);

select * from salary;

delete from salary where id = 16;

	==========================================

create table employee_salary (
	id serial primary key,
	employee_id integer not null unique,
	salary_id integer not null
);

insert into employee_salary (id, employee_id, salary_id)
values (38, 27, 14);

select * from employee_salary;

update employee_salary set salary_id = 7
where id = '28';

delete from employee_salary where id = 41;

	==========================================

create table roles (
	id serial primary key,
	role_name integer not null unique	
);

alter table roles 
alter column role_name type varchar (30);

insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer');

select * from roles;

	==========================================
	
create table roles_employee (
	id serial primary key,
	employee_id integer not null unique,
	role_id integer not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);

insert into roles_employee (id, employee_id, role_id)
values (default, 40, 17);

select * from roles_employee;