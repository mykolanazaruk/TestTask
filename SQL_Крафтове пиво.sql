CREATE TABLE [Типи пива]
( 
id int identity(1,1) primary key,
Назва char(50) not null,
Характеристика text not null
)

CREATE TABLE Пиво
(
id int identity(1,1) primary key,
[Вміст алкоголю] float not null,
IPA int not null,
[Тип пива] char(50) not null foreign key(id)references[Типи пива](id)
)

CREATE TABLE Пивовар
(
id int identity(1,1) primary key,
Псевдонім char(20) not null,
[Дата народження] date not null,
[Роки досвіду] tinyint not null,
Пиво char(50) not null foreign key(id)references[Пиво](id)
)

CREATE TABLE [Покупці пива]
(
id int identity(1,1) primary key,
[Назва компанії] text not null,
Місто char(20) not null,
[Контактні дані] text not null,
)

CREATE TABLE [Список замовлень]
(
id int identity(1,1) primary key,
Пиво char(50) not null foreign key(id)references[Пиво](id),
Покупець char(20) null foreign key(id)references[Покупці пива](id),
Ціна float not null,
Кількість int not null,
)

CREATE TABLE [Відгуки про пиво]
(
id int identity(1,1) primary key,
Пиво char(50) not null foreign key(id)references[Пиво](id),
Відгук text not null,
Покупець text foreign key(id)references[Покупці пива](id),
)

ALTER TABLE[Список замовлень]
add Валюта char(20);

insert into [dbo].[Типи пива](Назва,Характеристика)
values('Altbier','Альбби представляє собою традиційний німецький ель, медованого кольору та прозорого, ясного смаку з кремовою пивною шапкою.'),
('Bockbier ','Щільне пиво з високим вмістом алкоголю (деякі зразки містять до 19%). Зимовий сорт німецького пива'),
('Dinkelbier','оригинальный представитель пшеничного пивного семейства.'
)

insert into [dbo].Пиво (IPA,[Вміст алкоголю],[Тип пива])
values(
'12','8','Altbiter'),
('16','12','Bockbier'),
('11','6','Dinkelbier'
)

insert into Пивовар([Дата народження],Пиво,Псевдонім,[Роки досвіду])
values(
'1982-12-14','Altbiter','jon','7'),
('1986-6-12','Bockbier','Big BoB','6'),
('1972-4-24','Dinkelbier','Poroshenko','16'
)
insert into [Покупці пива]([Контактні дані],Місто,[Назва компанії])
values(
'0632678934','Lviv','ФФУ'),
('0658766889','Vynnucia','Укр.Пошта'
)

insert into [Список замовлень](Кількість,Пиво,Покупець,Ціна)
values(
'240','Bockbier','ФФУ','50'),
('1000','Dinkelbier','Укр.Пошта','62'
)

insert into [Відгуки про пиво](Відгук,Пиво,Покупець)
values('Супер','Dinkelbier','Укр.Пошта'),
('Погано','Bockbier','ФФУ')
