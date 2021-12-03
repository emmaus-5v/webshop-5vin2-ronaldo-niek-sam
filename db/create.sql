--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  recommended_minimum_age_id NUMERIC(10, 2),
  rating_id NUMERIC(10, 2)
);

DROP TABLE IF EXISTS genres; 
CREATE TABLE genres (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT
);

DROP TABLE IF EXISTS product_genres;
CREATE TABLE product_genres (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id NUMERIC(10, 2),
  genre_id NUMERIC(10, 2)
);

DROP TABLE IF EXISTS recommended_minimum_ages; 
CREATE TABLE recommended_minimum_ages (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  recommended_minimum_age VARCHAR(255)
);

DROP TABLE IF EXISTS ratings; 
CREATE TABLE ratings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  rating VARCHAR(255)
);



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('film 1', '...', 3, 5, '816905633-0', 10.5);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('film 2', '...', 7, 6, '077030122-3', 11);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('film 3', '...', 4, 8, '445924201-X', 13.5);
insert into products (name, description, code, price) values ('Aquí llega Condemor, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 14);


/* #1 */ insert into genres (name, description) values ('action', 'boom boom pow pow'); 
/* #2 */ insert into genres (name, description) values ('comedy', 'ksu ksu ksu');
/* #3 */ insert into genres (name, description) values ('documentary', 'David Attenborough');
/* #4 */ insert into genres (name, description) values ('animated movie', 'disney etc.');
/* #5 */ insert into genres (name, description) values ('romance', 'awww');
/* #6 */ insert into genres (name, description) values ('sci-fi', 'pog genre');
/* #7 */ insert into genres (name, description) values ('horror', 'aaaahhhhh');
/* #8 */ insert into genres (name, description) values ('drama', " :'( ");
/* #9 */ insert into genres (name, description) values ('adventure', 'monster, treasure, evil organisation that wants treasure, more treasure');
/* #10 */ insert into genres (name, description) values ('fantasy', 'skidadle dkidoodle, your...');
/* #11 */ insert into genres (name, description) values ('superhero', '...man, ...woman, ...boy and ...girl. Very original names');
/* #12 */ insert into genres (name, description) values ('mystery', '?');
/* #13 */ insert into genres (name, description) values ('history', 'yesterday, the day before yesterday, the day before the day before yesterday, ...');

insert into ratings (rating) values ('1/10 penguins');
insert into ratings (rating) values ('2/10 penguins');
insert into ratings (rating) values ('3/10 penguins');
insert into ratings (rating) values ('4/10 penguins');
insert into ratings (rating) values ('5/10 penguins');
insert into ratings (rating) values ('6/10 penguins');
insert into ratings (rating) values ('7/10 penguins');
insert into ratings (rating) values ('8/10 penguins');
insert into ratings (rating) values ('9/10 penguins');
insert into ratings (rating) values ('10/10 penguins');
insert into ratings (rating) values ('-1/10 penguins');
insert into ratings (rating) values ('-2/10 penguins');
insert into ratings (rating) values ('-3/10 penguins');

/* #1 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('AL');
/* #2 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('6');
/* #3 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('9');
/* #4 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('12');
/* #5 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('14');
/* #6 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('16');
/* #7 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('18');

insert into product_genres (product_id, genre_id) values (1, 3);
insert into product_genres (product_id, genre_id) values (1, 11);
insert into product_genres (product_id, genre_id) values (1, 13);
