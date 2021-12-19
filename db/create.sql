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
  recommended_minimum_age_id INTEGER,
  rating_id INTEGER
);

DROP TABLE IF EXISTS genres; 
CREATE TABLE genres (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  genre VARCHAR(255),
  description TEXT
);

DROP TABLE IF EXISTS product_genres;
CREATE TABLE product_genres (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id INTEGER,
  genre_id INTEGER
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

insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('Lord of the Drinks', '...', 1, 9, '816905633-0', 10.5);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('Tinytanic', '...', 7, 6, '077030122-3', 11);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('Soy Story 3', '...', 4, 8, '445924201-X', 13.5);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('Jurassic Shark', '...', 6, 12, '693155505-7', 13.5);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('Black Pfanzer', '...', 2, 2, '686928463-6', 14);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('The Goatfather', '...', 6, 10, '492662523-7', 14);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('Bar Wars', '...', 7, 10, '194695103-C', 13.5);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('Raiders of the Lost Ark', '...', 5, 7, '193729465-Y', 12);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('Mad Max: Fury Toad', '...', 7, 9, '104639295-3', 15);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('The Lizard of Oz', '...', 3, 5, '103849375-H', 9);
insert into products (name, description, recommended_minimum_age_id, rating_id, code, price) values ('The Matrucks', '...', 4, 6, '284638568-8', 11);



/* #1 */ insert into genres (genre, description) values ('action', 'boom boom pow pow'); 
/* #2 */ insert into genres (genre, description) values ('comedy', 'ksu ksu ksu');
/* #3 */ insert into genres (genre, description) values ('documentary', 'David Attenborough');
/* #4 */ insert into genres (genre, description) values ('animated movie', 'disney etc.');
/* #5 */ insert into genres (genre, description) values ('romance', 'smooch');
/* #6 */ insert into genres (genre, description) values ('sci-fi', 'pog genre');
/* #7 */ insert into genres (genre, description) values ('horror', 'aaaagggggghhhhh');
/* #8 */ insert into genres (genre, description) values ('drama', " :'( ");
/* #9 */ insert into genres (genre, description) values ('adventure', 'monster, treasure, evil organisation that wants treasure, more treasure');
/* #10 */ insert into genres (genre, description) values ('fantasy', 'skidadle dkidoodle, your...');
/* #11 */ insert into genres (genre, description) values ('superhero', '...man, ...woman, ...boy and ...girl. Very original names');
/* #12 */ insert into genres (genre, description) values ('mystery', '?');
/* #13 */ insert into genres (genre, description) values ('history', 'yesterday, the day before yesterday, the day before the day before yesterday, ...');

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

/* #1 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('ALL');
/* #2 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('6');
/* #3 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('9');
/* #4 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('12');
/* #5 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('14');
/* #6 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('16');
/* #7 */ insert into recommended_minimum_ages (recommended_minimum_age) values ('18');

insert into product_genres (product_id, genre_id) values (1, 3);
insert into product_genres (product_id, genre_id) values (1, 11);
insert into product_genres (product_id, genre_id) values (1, 13);
