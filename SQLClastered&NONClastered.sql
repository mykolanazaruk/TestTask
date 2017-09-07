create table Workers
(
id int identity(1,1)not null,
[First Name] nchar(20) not null,
[Second Name] nchar(20) not null,
Position nchar(20) not null,
[Salary($)] float not null,
Company nchar(20) not null,
City nchar(20) not null,
)
insert into Workers([First Name],[Second Name],Position,[Salary($)],Company,City)
values
('Ivan','Ivanov','Santehnik','200','SAN-TEX-NIK','Lviv'),
('Petro','Petrov','Likar','300','5-MKL','Kyiv'),
('Petro','Poroshenko','Konduter','350','Roshen','Vinnycia'),
('Victor','IYschenko','bdzholiar','600','Pasika','Symu'),
('Yaroslav','Mudrui','Developer','2000','BestIT','London'),
('Taras','Shevchenko','Poet','100','Pan','Cherkasy')
CREATE UNIQUE CLUSTERED INDEX ClasterIndex 
ON dbo.Workers([Salary($)]); 
select * from Workers
CREATE NONCLUSTERED INDEX NClasterIndex
ON dbo.Workers([Salary($)])
select * from Workers