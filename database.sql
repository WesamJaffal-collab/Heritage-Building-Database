create database project;
use project; 

create table Specialist (
s_id int primary key ,
first_name varchar(40),
Last_Name varchar(40),
specialty varchar(100),
Contact_info varchar (100) ,
);

create table Heritage_Building (
h_id int primary key,
Hname varchar (40),
location varchar (100),
s_ID  int ,
foreign key (s_id) references Specialist(s_id)
);

create table Maintenance_Task(
task_id int primary key,
start_date int ,
task_type varchar(100),
one_date int,
h_id int,
s_id int,
foreign key (h_id) references Heritage_Building(h_id),
foreign key (s_id) references Specialist(s_id)
);

create table Description (
d_id int primary key ,
task_id int ,
foreign key (task_id) references Maintenance_Task(task_id)
);

create table Material (
m_id int primary key ,
Mname varchar (40),
cost decimal (10,2),
supplier varchar (100)
);

create table Inspection (
i_id int,
i_date int,
condition_status varchar (100),
h_id int,
s_id int,
primary key (i_id,h_id),
foreign key (h_id) references Heritage_Building(h_id),
foreign key (s_id) references Specialist(s_id)
);

Create table Task_Material(
task_id int ,
m_id int ,
primary key (task_id,m_id),
foreign key (task_id) references Maintenance_Task(task_id),
foreign key (m_id) references Material (m_id)
);

insert into Specialist values (1, 'Alaa', 'Ayman', 'AI', '0791234567');
select * from Specialist where first_name = 'Alaa';
insert into Heritage_Building values (2, 'Roman Theater', 'Amman);
select * from Heritage_Building;
insert into Maintenance_Task values (3, 20240110, 'Stone Repair', 20240115, 2, 1);
select * from Maintenance_Task;
insert into Material values (4, 'Limestone', 250.00, 'Heritage Materials Company');
select * from Material;
insert into Inspection values (5,2, 20240105, 'Good', 1);
select * from Inspection;
insert into Task_Material values (3, 2);
select * from Task_Material;
