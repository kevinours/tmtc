DROP TABLE developer ;
DROP TABLE product ;


CREATE TABLE IF NOT EXISTS developer(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,skills TEXT,img TEXT, score INTEGER, postDate DATETIME);
INSERT or IGNORE INTO developer VALUES (1, 'Simon', '', 'https://pbs.twimg.com/profile_images/858987821394210817/oMccbXv6_bigger.jpg', 4, '2010-04-05 13:43:00');

-- INSERT or IGNORE INTO developer VALUES (2, 'Max', 'dd', 'https://pbs.twimg.com/profile_images/953978653624455170/j91_AYfd_400x400.jpg', 65);
-- INSERT or IGNORE INTO developer VALUES (3, 'Ben', '', 'https://pbs.twimg.com/profile_images/1060037170688417792/vZ7iAWXV_400x400.jpg');
 
CREATE TABLE IF NOT EXISTS product(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT, creatorId INTEGER);
INSERT or IGNORE INTO product(id, name, creatorId) VALUES (1, 'Ionic Academy', 1);
-- INSERT or IGNORE INTO product(id, name, creatorId) VALUES (2, 'Software Startup Manual', 1);
-- INSERT or IGNORE INTO product(id, name, creatorId) VALUES (3, 'Ionic Framework', 2);
-- INSERT or IGNORE INTO product(id, name, creatorId) VALUES (4, 'Drifty Co', 2);
-- INSERT or IGNORE INTO product(id, name, creatorId) VALUES (5, 'Drifty Co', 3);
-- INSERT or IGNORE INTO product(id, name, creatorId) VALUES (6, 'Ionicons', 3);


-- CREATE TABLE IF NOT EXISTS user(id INTEGER PRIMARY KEY AUTOINCREMENT, user TEXT);
-- INSERT or IGNORE INTO developer VALUES (1, 'Kev'); 


-- CREATE TABLE IF NOT EXISTS pre_anecdote(id INTEGER PRIMARY KEY AUTOINCREMENT,idUser INTEGER FOREIGN KEY REFERENCES user(id),content TEXT);
-- INSERT or IGNORE INTO developer VALUES (1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis feugiat, vehicula dui ac, porttitor nisi. Mauris ex ligula, sodales a ultrices aliquet, ornare in neque. Praesent ultricies, massa eget suscipit sodales, elit arcu scelerisque lorem, ut pellentesque magna leo in mi. Fusce ultricies sollicitudin ante, id luctus dui maximus at. In euismod');

 
