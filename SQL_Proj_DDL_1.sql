create database SQL_Proj_db;
use SQL_Proj_db;

-- brands table
create table brands(
b_id varchar(255) primary key,
b_name varchar(50) unique
);

desc brands;

-- model table
create table model(
m_id varchar(255) primary key,
m_name varchar(50) unique,
m_img blob,
m_launch_date date,
m_battery varchar(50),
m_charging varchar(100),
m_display varchar(100),
m_os varchar(100),
m_processor varchar(100),
m_spec_score int,
b_id varchar(255),
constraint model_bid_fk foreign key (b_id) references brands(b_id)
);

alter table model modify m_launch_date timestamp;
alter table model modify m_spec_score decimal(5,2);


set foreign_key_checks = 0;
truncate table model;


-- variants table
create table variants(
v_id varchar(255) primary key,
ram varchar(20),
rom varchar(20),
m_id varchar(255),
constraint variant_mid_fk foreign key (m_id) references model(m_id)
);

desc variants;


-- store table
create table store(
s_id int primary key,
s_name varchar(100),
s_url varchar(255) unique,
s_desc text
);

desc store;

-- availability table

create table avilability(
a_id int primary key,
a_status enum('available','not available'),
qt int(10),
price decimal(20,4),
discount int,
last_updated timestamp default current_timestamp on update current_timestamp,
v_id varchar(255),
s_id int
);
rename table avilability to avl_table;
alter table avl_table
add constraint a_vi_fk foreign key (v_id) references variants(v_id),
add constraint a_si_fk foreign key (s_id) references store(s_id),
modify qt int;

alter table avl_table
add column s_desc varchar(255);

alter table avl_table change s_desc  s_description  varchar(255);

alter table avl_table drop column s_description;

desc avl_table;

-- User Table 
create table user_details(
u_id int primary key auto_increment,
u_name varchar(100),
u_email varchar(200)  unique,
u_contact varchar(10)  unique,
u_password varbinary(20),
u_loc varchar(50),
created_date timestamp default current_timestamp,
modified_date timestamp default current_timestamp on update current_timestamp
);

desc user_details;



-- liked items table
create table liked_items(
like_id int primary key auto_increment,
like_timestamp timestamp,
u_id int,
v_id varchar(255),
constraint liked_uid_fk foreign key (u_id) references user_details(u_id),
constraint liked_vid_fk foreign key (v_id) references variants(v_id)
);
desc liked_items;


-- truncate 
create table user_deleted(id int,uname varchar(255));
insert into user_deleted values (1,'Lekha');
select * from user_deleted;
truncate table user_deleted;
drop table user_deleted;


