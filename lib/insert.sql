INSERT INTO series (title, author_id, subgenre_id)
VALUES ("Boaty McBoatface", "Fred Boats", "Nicknames"),
("Phantom of the Flatiron School", "Sal Phantom", "Horror");

INSERT INTO subgenres (name) VALUES ("Nicknames"), ("Horror");

INSERT INTO authors (name) VALUES ("Fred Boats"), ("Sal Phantom");

INSERT INTO books (title, year, series_id) VALUES ("How to fail at Coding", 2018, 1),
("A cats guide to knocking things off tables", 2014, 1),
("Cats are dumb...by dogs", 2002, 1),
("How to win in a humans world", 2018, 2),
("The ultimate guide to not being a dummy", 1940, 2),
("Uh...I dont know", 2122, 2);

INSERT INTO characters (name, species, motto, author_id, series_id)
VALUES ("Jimbo Johnson III", "Grizzly Bear", "Im never to full to eat a hooman", 1, 1),
("The Count of Monte Crisco", "Cockroach", "Crisco is life", 1, 1),
("Homer Simpson", "Cartoon", "Doh!", 1, 1),
("Manbat", "Half bat, Half man", "I enjoy bat's company", 1, 1),
("Manspider", "Lower half is a man, upper half is a spider", "I enjoy crafts and making webs", 2, 2),
("Frank", "plant", "....", 2, 2),
("Jasmine", "Wasp", "BUZZZZZ", 2, 2),
("Spot", "Praying Mantis", "I will eat you", 2, 2);


INSERT INTO character_books (id, book_id, character_id) VALUES (1, 1, 1), (2, 1, 2), (3, 2, 2), (4, 3, 2), (5, 1, 3), (6, 2, 3), (7, 3, 3), (8, 1, 4);

INSERT INTO character_books (id, book_id, character_id) VALUES (9, 4, 5), (10, 4, 6), (11, 5, 6), (12, 6, 6), (13, 4, 7), (14, 5, 7), (15, 6, 7), (16, 4, 8);
