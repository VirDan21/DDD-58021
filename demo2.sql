create database demo2;
use demo2;
create table customer (CustomerID int not null auto_increment, CustomerName text not null , Municiplality text not null, City text not null, primary key (CustomerID));
insert into customer(CustomerName,Municipality,City)
values('Gina de Leon', 'Apalit', 'Pampanga'),
('Amara Luna', 'Mexico', 'Pampanga'), 
('Lucila Maulon', 'Angat', 'Bulacan'), 
('Rafael Santos', 'Lumban', 'Laguna'), 
('Maricel Moran', 'Calumpit', 'Bulacan'), 
('Antonio Moreno', 'Santa Maria', 'Bulacan'), 
('Hanna Moos', 'Alaminos', 'Laguna'), 
('Fred Gregorio', 'Lumban', 'Laguna'), 
('Maria Andres', 'Porac', 'Pampanga'), 
('Liza Ramos', 'Alaminos', 'Laguna');
select * from customer;
select * from customer where City = 'Bulacan';
select * from customer where City = 'Laguna' and Municipality = 'Alaminos';
select * from customer where not City = 'Pampanga' order by City,Municipality;
