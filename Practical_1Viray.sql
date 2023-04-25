-- Create a database named ABC_Computer
create database ABC_Computer;
use ABC_Computer;
-- Write an SQL script to create the table named Computer and insert the data for the ABC_Computer database. remarks: Long Integer, Must be "Dell" or "HP" or "Other", and Double[3,2]	
create table Computer (SerialNumber bigint not null, Make text(12) not null, Model text(24) not null, ProcessorType text(24) null, ProcessorSpeed double(3,2) not null, MainMemory text(15) not null, DiskSize text(15) not null, primary key(SerialNumber));
-- Write an SQL script to execute the script to populate the Computer table
insert into Computer (SerialNumber, Make, Model, ProcessorType, ProcessorSpeed, MainMemory, DiskSize)
Values (9871234, "HP", "Pavilion 500-210qe", "Intel i5-4530", 3.00, "6.0 Gbytes", "1.0 Tbytes"),
(9871245, "HP", "Pavilion 500-210qe", "Intel i5-4531", 3.00, "6.0 Gbytes", "1.0 Tbytes"),
(9871256, "HP", "Pavilion 500-210qe", "Intel i5-4532", 3.00, "6.0 Gbytes", "1.0 Tbytes"),
(9871267, "HP", "Pavilion 500-210qe", "Intel i5-4533", 3.00, "6.0 Gbytes", "1.0 Tbytes"),
(9871278, "HP", "Pavilion 500-210qe", "Intel i5-4534", 3.00, "6.0 Gbytes", "1.0 Tbytes"),
(9871289, "HP", "Pavilion 500-210qe", "Intel i5-4535", 3.00, "6.0 Gbytes", "1.0 Tbytes"),
(6541001, "Dell", "OptiPlex 9020", "Intel i7-4770", 3.00, "8.0 Gbytes", "1.0 Tbytes"),
(6541002, "Dell", "OptiPlex 9021", "Intel i7-4771", 3.00, "8.0 Gbytes", "1.0 Tbytes"),
(6541003, "Dell", "OptiPlex 9022", "Intel i7-4772", 3.00, "8.0 Gbytes", "1.0 Tbytes"),
(6541004, "Dell", "OptiPlex 9023", "Intel i7-4773", 3.00, "8.0 Gbytes", "1.0 Tbytes"),
(6541005, "Dell", "OptiPlex 9024", "Intel i7-4774", 3.00, "8.0 Gbytes", "1.0 Tbytes"),
(6541006, "Dell", "OptiPlex 9025", "Intel i7-4775", 3.00, "8.0 Gbytes", "1.0 Tbytes");
-- Write an SQL script that separately shows the two different models of computer. remarks: ProcessorSpeed = between 1.0 and 4.0
select * from Computer where Make ="HP" and ProcessorSpeed between 1.0 and 4.0; 
select * from Computer where Make = "Dell" and ProcessorSpeed between 1.0 and 4.0;
-- Write an SQL script that adds another column named Graphics with properties Type: Text(40), Key:No, Required: Yes. Remarks: Must be all "Integrated Intel HD Graphics 4600"
alter table Computer
add column Graphics text(40) not null;
update computer set graphics = "Integrated Intel HD Graphics 4600";
-- Write an SQL script that removes the column ProcessorSpeed
alter table Computer
drop column ProcessorSpeed;

select * from Computer;