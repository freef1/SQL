-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.employee_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id;
-- 2. Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
where s.monthly_salary < '2000';
-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select s.monthly_salary from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id;
-- 4. Вывести все зарплатные позиции меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select s.monthly_salary from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
where s.monthly_salary < '2000';
-- 5. Найти всех работников кому не начислена ЗП.
select e.employee_name from employee_salary es
right join employees e on es.employee_id = e.id
where es.employee_id is null;
-- 6. Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name from roles_employee re
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id;
-- 7. Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name from roles_employee re
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where r.role_name like '%Java%' and not r.role_name like '%JavaScript%';
-- 8. Вывести имена и должность только Python разработчиков.
select e.employee_name, r.role_name from roles_employee re
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where r.role_name like '%Python%';
-- 9. Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name from roles_employee re
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where r.role_name like '%QA%';
--  10. Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name from roles_employee re
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where r.role_name like '%QA%' and r.role_name like '%Manual%';
--  11. Вывести имена и должность автоматизаторов QA.
select e.employee_name, r.role_name from roles_employee re
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where r.role_name like '%QA%' and r.role_name like '%Automation%';
--  12. Вывести имена и зарплаты Junior специалистов.
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%Junior%';
--  13. Вывести имена и зарплаты Middle специалистов.
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%Middle%';
--  14. Вывести имена и зарплаты Senior специалистов.
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%Senior%';
--  15. Вывести зарплаты Java разработчиков.
select s.monthly_salary, r.role_name from employee_salary es
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%Java%' and not r.role_name like '%JavaScript%';
-- 16. Вывести зарплаты Python разработчиков.
select s.monthly_salary, r.role_name from employee_salary es
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%Python%';
-- 17. Вывести имена и зарплаты Junior Python разработчиков.
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%Junior%' and r.role_name like '%Python%';
-- 18. Вывести имена и зарплаты Middle JS разработчиков.
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%Middle%' and r.role_name like '%JavaScript%';
-- 19. Вывести имена и зарплаты Senior Java разработчиков.
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%Senior%' and r.role_name like '%Java%' and not r.role_name like '%JavaScript%';
-- 20. Вывести зарплаты Junior QA инженеров.
select s.monthly_salary, r.role_name from employee_salary es
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%Junior%' and r.role_name like '%QA%';
-- 21. Вывести среднюю зарплату всех Junior специалистов.
select avg(s.monthly_salary) from employee_salary es
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%Junior%';
-- 22. Вывести сумму зарплат JS разработчиков.
select sum(s.monthly_salary) from employee_salary es
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%JavaScript%';
-- 23. Вывести минимальную ЗП QA инженеров.
select min(s.monthly_salary) from employee_salary es
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%QA%';
-- 24. Вывести максимальную ЗП QA инженеров.
select max(s.monthly_salary) from employee_salary es
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where r.role_name like '%QA%';
-- 25. Вывести количество QA инженеров.
select count(r.role_name) from roles_employee re
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where r.role_name like '%QA%';
-- 26. Вывести количество Middle специалистов.
select count(r.role_name) from roles_employee re
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where r.role_name like '%Middle%';
-- 27. Вывести количество разработчиков.
select count(r.role_name) from roles_employee re
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id;
-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(s.monthly_salary) from employee_salary es
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id;
-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию.
select e.employee_name, r.role_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
order by e.employee_name, r.role_name, s.monthly_salary;
-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300.
select e.employee_name, r.role_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where s.monthly_salary between '1700' and '2300'
order by e.employee_name, r.role_name, s.monthly_salary;
-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300.
select e.employee_name, r.role_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where s.monthly_salary < '2300'
order by e.employee_name, r.role_name, s.monthly_salary;
-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000.
select e.employee_name, r.role_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
join roles_employee re on es.employee_id = re.employee_id
join roles r on re.role_id = r.id
where s.monthly_salary = '1100' or s.monthly_salary = '1500' or s.monthly_salary = '2000'
order by e.employee_name, r.role_name, s.monthly_salary;