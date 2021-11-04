# Создать таблицу employees
# - id. serial,  primary key,
# - employee_name. Varchar(50), not null
# Наполнить таблицу employee 70 строками.


create table employees (
	id serial primary key,
	employee_name varchar (50) not null
);

insert into employees (id, employee_name)
values (default, 'Элла');

select * from employees;

	==========================================

# Создать таблицу salary
# - id. Serial  primary key,
# - monthly_salary. Int, not null
# Наполнить таблицу salary 15 строками:

	
create table salary (
	id serial primary key,
	monthly_salary integer not null
);

insert into salary (id, monthly_salary)
values (default, 2500);

select * from salary;

delete from salary where id = 16;

	==========================================

# Создать таблицу employee_salary
# - id. Serial  primary key,
# - employee_id. Int, not null, unique
# - salary_id. Int, not null
# Наполнить таблицу salary 40 строками:
# - в 10 строк из 40 вставить несуществующие employee_id


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

# Создать таблицу roles
# - id. Serial  primary key,
# - role_name. int, not null, unique
# Поменять тип столба role_name с int на varchar(30)
# Наполнить таблицу salary 20 строками:


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

# Создать таблицу employee_salary
# - id. Serial  primary key,
# - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
# - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
# Наполнить таблицу salary 40 строками:

	
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