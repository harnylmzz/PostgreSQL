<test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.>

CREATE table employee (
id SERIAL PRIMARY KEY,
name VARCHAR (50) NOT NULL,
birthday DATE NOT NULL,
email VARCHAR (50)
);

<Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.>

insert into employee (name, birthday, email) values ('Des', '2022-05-26', 'dwaything0@bigcartel.com');
insert into employee (name, birthday, email) values ('Hilly', '2022-05-12', 'hhall1@dyndns.org');
insert into employee (name, birthday, email) values ('Dionne', '2021-12-28', null);
insert into employee (name, birthday, email) values ('Amy', '2022-07-09', null);
insert into employee (name, birthday, email) values ('Emelyne', '2022-03-07', 'ecorsar4@infoseek.co.jp');
insert into employee (name, birthday, email) values ('Abbye', '2022-10-23', 'akeep5@godaddy.com');
insert into employee (name, birthday, email) values ('Corbet', '2022-10-11', 'cdegnen6@google.de');
insert into employee (name, birthday, email) values ('Haze', '2022-04-28', null);
insert into employee (name, birthday, email) values ('Jillane', '2022-06-15', 'jsherreard8@quantcast.com');
insert into employee (name, birthday, email) values ('Kris', '2022-02-06', null);
insert into employee (name, birthday, email) values ('Desirae', '2022-07-02', 'dgilliona@spotify.com');
insert into employee (name, birthday, email) values ('Melisandra', '2021-12-19', 'msemonb@myspace.com');
insert into employee (name, birthday, email) values ('Sofia', '2022-11-16', null);
insert into employee (name, birthday, email) values ('Teena', '2022-07-31', 'tsprakesd@indiatimes.com');
insert into employee (name, birthday, email) values ('Rona', '2022-10-16', 'rovide@blogs.com');
insert into employee (name, birthday, email) values ('Cammi', '2022-02-11', 'cheightonf@bbc.co.uk');
insert into employee (name, birthday, email) values ('Zorah', '2022-03-04', 'zbutg@spotify.com');
insert into employee (name, birthday, email) values ('Georgy', '2022-03-31', 'gwolteringh@epa.gov');
insert into employee (name, birthday, email) values ('Filmer', '2022-08-04', 'fgrombridgei@deviantart.com');
insert into employee (name, birthday, email) values ('Alida', '2021-11-27', 'abighamj@rakuten.co.jp');
insert into employee (name, birthday, email) values ('Saunderson', '2021-12-08', 'sbengoughk@rediff.com');
insert into employee (name, birthday, email) values ('Esther', '2022-10-01', 'enaultyl@cafepress.com');
insert into employee (name, birthday, email) values ('Dianemarie', '2022-10-13', null);
insert into employee (name, birthday, email) values ('Bobinette', '2021-12-19', 'bsnelln@whitehouse.gov');
insert into employee (name, birthday, email) values ('Alejandro', '2022-06-09', 'acrooseo@simplemachines.org');
insert into employee (name, birthday, email) values ('Pamella', '2022-04-18', 'penevoldsenp@cdbaby.com');
insert into employee (name, birthday, email) values ('Yvor', '2022-01-24', 'ycowplandq@wix.com');
insert into employee (name, birthday, email) values ('Carmelita', '2022-10-17', null);
insert into employee (name, birthday, email) values ('Sauveur', '2022-11-10', 'sbunners@angelfire.com');
insert into employee (name, birthday, email) values ('Hermon', '2022-02-15', null);
insert into employee (name, birthday, email) values ('Nehemiah', '2022-09-17', 'nreubenu@cam.ac.uk');
insert into employee (name, birthday, email) values ('Cordell', '2022-06-01', 'cvillaretv@miibeian.gov.cn');
insert into employee (name, birthday, email) values ('Marion', '2022-02-15', 'mkrammerw@theatlantic.com');
insert into employee (name, birthday, email) values ('Ursala', '2022-09-15', 'usummersonx@delicious.com');
insert into employee (name, birthday, email) values ('Gerrie', '2022-05-10', 'gmedlingy@wix.com');
insert into employee (name, birthday, email) values ('Aurelia', '2022-10-26', 'apinaz@nymag.com');
insert into employee (name, birthday, email) values ('Nickola', '2022-10-16', 'nmaharry10@gravatar.com');
insert into employee (name, birthday, email) values ('Filberto', '2022-05-04', null);
insert into employee (name, birthday, email) values ('Lorry', '2022-09-18', 'lstuther12@blogspot.com');
insert into employee (name, birthday, email) values ('Domenic', '2022-10-20', null);
insert into employee (name, birthday, email) values ('Cesaro', '2022-07-21', 'cwoller14@tumblr.com');
insert into employee (name, birthday, email) values ('Danit', '2021-11-19', 'drays15@illinois.edu');
insert into employee (name, birthday, email) values ('Lou', '2022-03-01', 'lrembrant16@meetup.com');
insert into employee (name, birthday, email) values ('Amy', '2022-04-01', null);
insert into employee (name, birthday, email) values ('Rosa', '2022-09-01', 'rbentley18@delicious.com');
insert into employee (name, birthday, email) values ('Graehme', '2022-03-11', null);
insert into employee (name, birthday, email) values ('Florinda', '2022-11-04', 'fomahoney1a@google.com');
insert into employee (name, birthday, email) values ('Reggy', '2022-07-22', 'rdenyer1b@cnet.com');
insert into employee (name, birthday, email) values ('Alisander', '2022-01-04', null);
insert into employee (name, birthday, email) values ('Marina', '2022-08-13', 'mgowing1d@yellowbook.com');

<Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.>

UPDATE employee
SET name = 'Harun', 
birthday = '1997-06-27',
email = 'harun@yılmaz.com'
WHERE id = 4
RETURNING *;
---
UPDATE employee
SET birthday = '1997-06-27'
WHERE id = 1
RETURNING *;
---
UPDATE employee
SET birthday = '1856-07-07'
WHERE name = 'Hilly'
RETURNING *;
---
UPDATE employee
SET name = 'Allahuakbar', email = 'selamınaleykum@aleykumselam.com' 
WHERE name = 'Emelyne'
RETURNING *;
---
UPDATE employee
SET email = 'sagopaftceza_neyimvarki@gmail.com' 
WHERE name = 'Abbye'
RETURNING *;

<Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.>

DELETE FROM employee
WHERE id = 45 
RETURNING *;
---
DELETE FROM employee
WHERE name = 'Corbet'
RETURNING *;
---
DELETE FROM employee
WHERE birthday = '2022-07-31'
RETURNING *;
---
DELETE FROM employee
WHERE email = 'cheightonf@bbc.co.uk'
RETURNING *;
---
DELETE FROM employee
WHERE id = 2
RETURNING *;



