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
  rating_id INTEGER,
  studio_id INTEGER
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

DROP TABLE IF EXISTS studios;
CREATE TABLE studios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  studio VARCHAR(255),
  founded VARCHAR(255)
);



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, recommended_minimum_age_id, rating_id, studio_id, code, price) values ('Lord of the Drinks', 'One Drink to rule them all, One Drink to find them, One Drink to bring them all and in the drunkenness bind them. In ancient times the Drinks of Power were crafted by the Elven-brewers, and Sauron, the Dark Lord, created the One Drink, filling it with his own power so that he could rule all others. But the One Drink was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins.',
 6, 9, 4, '816905633-0', 10.5);
insert into products (name, description, recommended_minimum_age_id, rating_id, studio_id, code, price) values ('Tinytanic', '...',
 5, 6, 2, '077030122-3', 11);
insert into products (name, description, recommended_minimum_age_id, rating_id, studio_id, code, price) values ('Soy Story 3', '...',
 1, 7, 3, '445924201-X', 13.5);
insert into products (name, description, recommended_minimum_age_id, rating_id, studio_id, code, price) values ('Black Pfanzer', '...',
 3, 8, 5, '686928463-6', 14);
insert into products (name, description, recommended_minimum_age_id, rating_id, studio_id, code, price) values ('The Goatfather', '...',
 6, 5, 6, '492662523-7', 14);
insert into products (name, description, recommended_minimum_age_id, rating_id, studio_id, code, price) values ('Bar Wars', 'A long time ago in a galaxy far, far away. . . .  It is a period of civil bars. rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic empire. During the battle, Rebel spies managed to steal secret plans to the Empire’s ultimate weapon, the DEATH BAR, an armoured drinking station with enough beer to satisfy an entire planet. Pursued by the Empire’s sinister agents, Princess Leia races home aboard her bar-ship, custodian of the stolen plans that can save her people and restore local bars to the galaxy….',
 7, 10, 1, '194695103-C', 13.5);
insert into products (name, description, recommended_minimum_age_id, rating_id, studio_id, code, price) values ('Raiders of the Lost Ark', 'As the Third Reich continues its reign of terror, Adolf Hitler is on a quest for the legendary Ark PS4 edition- resting place of the Tek blueprints- whose supernatural powers, legend says, can wipe out entire armies. The U.S. Government turns to Dr. Indiana Jones, for the mission. Relentlessly pursued by Hitler’s henchmen, Indy infiltrates their massive digging operation in a race against time to discover the Well of the Souls, where the top tier game has lain undisturbed for centuries. ',
 4, 7, 1, '193729465-Y', 12);
insert into products (name, description, recommended_minimum_age_id, rating_id, studio_id, code, price) values ('Mad Max: Fury Toad', '...',
 6, 9, 7, '104639295-3', 15);
insert into products (name, description, recommended_minimum_age_id, rating_id, studio_id, code, price) values ('The Lizard of Oz', 'Dorothy thinks she’s lost forever when a tornado whirls her and her dog, Toto, into a reptile world. To get home, she must find the wonderful Lizard in the Emerald city of Oz. On the way she meets the scary tortoise, the tin Komodo Dragon and the cowardly Agama. But the Wicked Midge of the West has her own plans for the new arrival - will Dorothy ever see Kansas again?',
 1, 13, 8, '103849375-H', 9);
insert into products (name, description, recommended_minimum_age_id, rating_id, studio_id, code, price) values ('The Matrucks', 'In The Matrucks: Resurrections, we return to a truck consisting of two realities: the everyday truckers-life and that what is hidden behind it. To discover if his reality is a physical or psychological cons-truck-tion and to discover who he really is, Mr. Anderson must choose to follow the white rabbit again. And if Thomas, or Neo, has learnt something, that must be that freedom of choice, illusion or not, is the only way to enter or escape the matrucks.',
 5, 4, 9, '284638568-8', 11);



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
/* #14 */ insert into genres (genre, description) values ('crime', 'naughty boy, no presents for christmas this year');
/* #15 */ insert into genres (genre, description) values ('thriller', '*nail biting intensifies*');

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

/* #1 */ insert into studios (studio, founded) values ('Lucasfilm Ltd.', 'December 10, 1971');
/* #2 */ insert into studios (studio, founded) values ('20th Century Fox', 'May 31, 1935');
/* #3 */ insert into studios (studio, founded) values ('Pixar Animation Studios', 'February 3, 1986');
/* #4 */ insert into studios (studio, founded) values ('Wingnut Films', 'February 14, 1987');
/* #5 */ insert into studios (studio, founded) values ('Marvel Studios', 'December 7, 1993');
/* #6 */ insert into studios (studio, founded) values ('Paramount Pictures', 'May 8, 1912');
/* #7 */ insert into studios (studio, founded) values ('Kennedy Miller Mitchel', '1978');
/* #8 */ insert into studios (studio, founded) values ('Metro-Goldwyn-Mayer', 'April 17, 1924');
/* #9 */ insert into studios (studio, founded) values ('Village roadshow Pictures', '1986');


insert into product_genres (product_id, genre_id) values (1, 39);
insert into product_genres (product_id, genre_id) values (1, 10);
insert into product_genres (product_id, genre_id) values (2, 5);
insert into product_genres (product_id, genre_id) values (2, 8);
insert into product_genres (product_id, genre_id) values (2, 13);
insert into product_genres (product_id, genre_id) values (3, 2);
insert into product_genres (product_id, genre_id) values (3, 4);
insert into product_genres (product_id, genre_id) values (3, 9);
insert into product_genres (product_id, genre_id) values (3, 10);
insert into product_genres (product_id, genre_id) values (4, 1);
insert into product_genres (product_id, genre_id) values (4, 6);
insert into product_genres (product_id, genre_id) values (4, 9);
insert into product_genres (product_id, genre_id) values (4, 10);
insert into product_genres (product_id, genre_id) values (4, 11);
insert into product_genres (product_id, genre_id) values (5, 8);
insert into product_genres (product_id, genre_id) values (5, 14);
insert into product_genres (product_id, genre_id) values (6, 1);
insert into product_genres (product_id, genre_id) values (6, 6);
insert into product_genres (product_id, genre_id) values (6, 9);
insert into product_genres (product_id, genre_id) values (6, 10);
insert into product_genres (product_id, genre_id) values (6, 12);
insert into product_genres (product_id, genre_id) values (7, 1);
insert into product_genres (product_id, genre_id) values (7, 9);
insert into product_genres (product_id, genre_id) values (7, 10);
insert into product_genres (product_id, genre_id) values (8, 1);
insert into product_genres (product_id, genre_id) values (8, 6);
insert into product_genres (product_id, genre_id) values (8, 9);
insert into product_genres (product_id, genre_id) values (8, 10);
insert into product_genres (product_id, genre_id) values (8, 15);
insert into product_genres (product_id, genre_id) values (9, 9);
insert into product_genres (product_id, genre_id) values (9, 10);
insert into product_genres (product_id, genre_id) values (10, 1);
insert into product_genres (product_id, genre_id) values (10, 6);
insert into product_genres (product_id, genre_id) values (10, 9);
insert into product_genres (product_id, genre_id) values (10, 10);

