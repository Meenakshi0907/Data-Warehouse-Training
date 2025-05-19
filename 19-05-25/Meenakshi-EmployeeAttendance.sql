use pra;
CREATE TABLE EmployeeAttendance (
    AttendanceID INT PRIMARY KEY auto_increment,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Date DATE,
    Status enum('Present','Absent','Late'),
    HoursWorked INT 
);

INSERT INTO EmployeeAttendance (EmployeeName, Department, Date, Status, HoursWorked)
VALUES ('John Doe', 'IT', '2025-05-01', 'Present', 8),
('Priya Singh', 'HR', '2025-05-01', 'Absent', 0),
('Ali Khan', 'IT', '2025-05-01', 'Present', 7),
('Riya Patel', 'Sales', '2025-05-01', 'Late', 6),
('David Brown', 'Marketing', '2025-05-01', 'Present', 8);

insert into employeeattendance(employeename, department, date, status, hoursworked)
values('Neha Sharma','Finance','2025-05-01','Present',8);

SET SQL_SAFE_UPDATES = 0;
update employeeattendance set status = 'Present' where employeename = 'Riya Patel';

select * from employeeattendance;

delete from employeeattendance where employeename = 'Priya Singh' and date = '2025-05-01';

select * from employeeattendance order by employeename asc;

select * from employeeattendance order by hoursworked desc;

select * from employeeattendance where department = "IT";

select * from employeeattendance where department = "IT" and status ="present";

select * from employeeattendance where status ="absent" or status = "late";

select department,sum(hoursworked) from employeeattendance group by department;

select avg(hoursworked) as averageworkinghours from employeeattendance;

select status,count(*) from employeeattendance group by status;

select * from employeeattendance where employeename like 'R%';

select * from employeeattendance where hoursworked > 6 and status = 'present';

select * from employeeattendance where hoursworked between 6 and 8;

select * from employeeattendance order by hoursworked desc limit 2;

select * from employeeattendance where hoursworked < (select avg(hoursworked) from employeeattendance);

select status,avg(hoursworked) from employeeattendance group by status;

select employeename,date, count(*) as countstatus from employeeattendance group by  employeename,date having count(*) > 1;

select department,count(*) as count from employeeattendance where status = 'Present' group by department order by count desc limit 1;

SELECT ea.Department, ea.EmployeeName, ea.HoursWorked FROM EmployeeAttendance ea JOIN (
SELECT Department, MAX(HoursWorked) AS MaxHours FROM EmployeeAttendance GROUP BY Department
) AS max_per_dept ON ea.Department = max_per_dept.Department AND ea.HoursWorked = max_per_dept.MaxHours;


