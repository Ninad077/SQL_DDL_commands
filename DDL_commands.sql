-- DDL commands
-- DROP COMMAND (DROP TABLE table_name)
drop table Course_details;

-- CREATE COMMAND (CREATE TABLE table_name(Field1 Data_type.....)
create table Course_details(
cid int primary key,
course_name varchar(50) not null
);

-- ALTER COMMAND (ALTER TABLE table_name ADD new_column_name DATA_TYPE)
ALTER TABLE Course_details ADD course_description varchar(10);
ALTER TABLE Course_details ADD course_launch_date date;

-- DROP COMMAND(ALTER TABLE table_name DROP column_name)
ALTER TABLE Course_details DROP course_description;

-- MODIFY COMMAND(ALTER TABLE table_name MODIFY column_name DATA_TYPE)
ALTER TABLE Course_details MODIFY course_description varchar(150);

-- RENAME COLUMN COMMAND (ALTER TABLE table_name RENAME COLUMN column_name TO new_column name)
ALTER TABLE Course_details RENAME COLUMN course_description TO course_desc;

-- RENAME TABLE COMMAND (ALTER TABLE table_name RENAME new_table_name) OR (RENAME TABLE table_name TO new_table_name)
ALTER TABLE Course_details RENAME C_details;
-- OR
RENAME TABLE Course_details TO C_details;

-- TRUNCATE TABLE (Removes all the values from the Table but the Data remains)
insert into Course_details values(1,"DA","2023-01-01","DATA ANALYSIS");

TRUNCATE TABLE Course_details;

-- Modifying constraints to Altered column (only for NOT NULL)
ALTER TABLE Course_details MODIFY course_launch_date date Not null;

-- Default
ALTER TABLE Course_details ALTER course_description SET DEFAULT "No Description yet";

-- Adding constraints to Altered column
-- Unique & Check & Primary key & Foreign key
ALTER TABLE Course_details ADD Unique(course_name);
ALTER TABLE Course_details ADD Check(course_name!="APP");
ALTER TABLE Course_details ADD primary key(course_name);
ALTER TABLE Course_enrolled ADD foreign key(course_id) references course_details(cid);


-- Usecase of modiying a constraint and adding a column before another column.
-- Create table facility. Add the below fields into it.
-- ●	Facility_ID
-- ●	Name
-- ●	State
-- ●	Country

-- i) Alter the table by adding the primary key and auto increment to Facility_ID column.
-- ii) Add a new column city after name with data type as varchar which should not accept any null values.
drop table facility;

create table facility(
Facility_ID int,
Name varchar(100),
State varchar(100),
Country varchar(100)
);

Alter table facility modify Facility_ID int auto_increment primary key;

Alter table facility add City varchar(100) not null after Name;

describe facility;

