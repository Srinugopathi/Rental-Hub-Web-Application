SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE DATABASE IF NOT EXISTS rental_hub DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE rental_hub;

CREATE TABLE IF NOT EXISTS mtlborough (
    BoroughID smallint(6) NOT NULL,
    bname tinytext NOT NULL,
    longitude tinyint(3) unsigned NOT NULL,
    latitude tinyint(3) unsigned NOT NULL,
    PRIMARY KEY (BoroughID)
);

drop table mtlborough;


CREATE TABLE IF NOT EXISTS mtlborough (
    BoroughID smallint NOT NULL,
    bname tinytext NOT NULL,
    longitude tinyint unsigned NOT NULL,
    latitude tinyint unsigned NOT NULL,
    PRIMARY KEY (BoroughID)
);

CREATE TABLE IF NOT EXISTS ownersearch (
    MemberID SMALLINT UNSIGNED NOT NULL,
    agemin TINYINT UNSIGNED NOT NULL,
    agemax TINYINT UNSIGNED NOT NULL,
    occupation TINYINT NOT NULL,
    income TINYINT NOT NULL,
    pet VARCHAR(3) NOT NULL,
    smoke VARCHAR(3) NOT NULL,
    PRIMARY KEY (MemberID)
);

CREATE TABLE IF NOT EXISTS rentalspace (
    MemberID SMALLINT UNSIGNED NOT NULL,
    PostID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title TINYTEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    borough TINYINT UNSIGNED NOT NULL,
    address VARCHAR(40) NOT NULL,
    image TEXT NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (PostID)
);

CREATE TABLE IF NOT EXISTS tenantprofiles (
    MemberID SMALLINT UNSIGNED NOT NULL,
    age TINYINT NOT NULL,
    occupation TINYINT NOT NULL,
    income TINYINT NOT NULL,
    pet VARCHAR(3) NOT NULL,
    smoker VARCHAR(3) NOT NULL,
    PRIMARY KEY (MemberID)
);

CREATE TABLE IF NOT EXISTS tenantsearch (
    MemberID SMALLINT UNSIGNED NOT NULL,
    borough TINYINT NOT NULL,
    price SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (MemberID)
);

CREATE TABLE IF NOT EXISTS user (
    MemberID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    uname VARCHAR(20) NOT NULL,
    pword VARCHAR(32) NOT NULL,
    fname VARCHAR(20) NOT NULL,
    lname VARCHAR(20) NOT NULL,
    usertype VARCHAR(10) NOT NULL,
    email TINYTEXT NOT NULL,
    phonenum VARCHAR(15) NOT NULL,
    PRIMARY KEY (MemberID)
);




INSERT INTO mtlborough (BoroughID, bname, longitude, latitude) VALUES
(0, 'Ahuntsic-Cartierville', 15, 10),
(1, 'Anjou', 22, 15),
(2, 'Côte-des-Neiges–Notre-Dame-de-Grâce', 16, 5),
(3, 'Lachine', 12, 3),
(4, 'LaSalle', 14, 1),
(5, 'Le Plateau-Mont-Royal', 19, 7),
(6, 'Le Sud-Ouest', 17, 7),
(7, 'L''Île-Bizard–Sainte-Geneviève', 3, 10),
(8, 'Mercier–Hochelaga-Maisonneuve', 22, 10),
(9, 'Montréal-Nord', 18, 13),
(10, 'Outremont', 17, 6),
(11, 'Pierrefonds-Roxboro', 4, 7),
(12, 'Rivière-des-Prairies–Pointe-aux-Trembles', 24, 16),
(13, 'Rosemont–La Petite-Patrie', 20, 9),
(14, 'Saint-Laurent', 12, 7),
(15, 'Saint-Léonard', 19, 12),
(16, 'Verdun', 18, 1),
(17, 'Ville-Marie', 20, 6),
(18, 'Villeray–Saint-Michel–Parc-Extension', 18, 10);

#select * from mtlborough;


INSERT INTO ownersearch (MemberID, agemin, agemax, occupation, income, pet, smoke) VALUES
(6, 18, 18, 0, -1, 'any', 'no');

#select * from ownersearch;

INSERT INTO rentalspace (MemberID, PostID, title, price, borough, address, image, description) VALUES
(6, 1, 'One beautiful house for you.', '340.00', 1, '6286 Bright Front, Spring Lick, SK, S3P', '5527f9d1abc86.jpg', 'Very nice. Should buy asap'),
(6, 2, 'The magical bed.', '400.00', 4, '5095 Silver Lagoon Wynd, Crump Town, BC', '5527fa6c969b1.jpg', 'For only 400$ per month, get the super bed.'),
(7, 3, 'MasterChef''s House', '600.00', 11, '8020 Colonial Spring Alley, Rama, SK', '5527fb55ca788.jpg', 'Was one a MasterChef''s House, it could be yours!'),
(7, 4, 'The Most Luxurious in Town', '499.00', 17, '9445 Cotton Rise Bank, Piscataway, BC', '5527fba525631.jpg', 'The best house you can get for a great deal.'),
(8, 5, 'This is it.', '540.00', 17, '9319 Quaking Plaza, Ninety Six, QC', '5527fe9b64ca7.jpg', 'Near downtown Montreal. The best place to live.'),
(8, 6, 'Your choice is right.', '405.00', 15, '4557 Dewy Sky Meadow, Rifle, YK', '5527fee1d2ecb.jpg', 'You can get this rent for free if you work for me for free.'),
(9, 7, 'Who''s in the house?', '400.00', 9, '7180 Crystal Pathway, Pilchuck, QC', '552812ea79199.jpg', 'Montreal-North, is it worth it?'),
(9, 8, 'You need a perfect home.', '780.00', 5, '2656 High Woods, Blue Diamond, AB', '552813ae7dd67.jpg', 'Comes with a pool, with automated house cleaning. This house was renovated on top of a haunted house. Beware of super activity.'),
(10, 9, 'Thinking about a new home, how about this one?', '994.00', 17, '2721 Sunny Rise Bank, Perfection, PE', '552814e279147.jpg', 'Right in Downtown, Montreal. You get what you get.'),
(10, 10, 'Can''t afford? No problem', '340.00', 14, '2760 Burning Treasure Knoll, Davidson, A', '5528152b116ec.jpg', 'Find me a wife, and get your rent for free.'),
(6, 11, 'A New Home', '653.00', 5, '3030, Rue Villeray, Montreal', '552abead21b9f.jpg', 'The best-selling house in history.');


#select * from rentalspace;


INSERT INTO tenantprofiles (MemberID, age, occupation, income, pet, smoker) VALUES
(2, 34, 0, 1, 'yes', 'no'),
(3, 18, 0, 6, 'yes', 'no'),
(4, 23, 6, 0, 'no', 'yes'),
(5, 25, 5, 0, 'no', 'no'),
(12, 34, 1, 3, 'yes', 'no');

#select * from tenantprofiles;

INSERT INTO tenantsearch (MemberID, borough, price) VALUES
(1, 14, 999),
(2, -1, 999),
(12, 17, 600);

INSERT INTO user (MemberID, uname, pword, fname, lname, usertype, email, phonenum) VALUES
(2, 'tenant2', 'd6cb2342e44efb6dd628276f36da2359', 'TenantTwo', 'Smith', 'tenant', 'tenant2@rentalmtl.com', '(514)222-2222'),
(3, 'tenant3', 'd6cb2342e44efb6dd628276f36da2359', 'TenantThree', 'Smith', 'tenant', 'tenant3@rentalmtl.com', '(514)333-3333'),
(4, 'tenant4', 'd6cb2342e44efb6dd628276f36da2359', 'TenantFour', 'Smith', 'tenant', 'tenant4@rentalmtl.com', '(514)444-4444'),
(5, 'tenant5', 'd6cb2342e44efb6dd628276f36da2359', 'TenantFive', 'Smith', 'tenant', 'tenant5@rentalmtl.com', '(514)555-5555'),
(6, 'owner1', 'd6cb2342e44efb6dd628276f36da2359', 'OwnerOne', 'Park', 'owner', 'owner1@rentalmtl.com', '(514)666-6666'),
(7, 'owner2', 'd6cb2342e44efb6dd628276f36da2359', 'OwnerTwo', 'Park', 'owner', 'owner2@rentalmtl.com', '(514)777-7777'),
(8, 'owner3', 'd6cb2342e44efb6dd628276f36da2359', 'OwnerThree', 'Park', 'owner', 'owner3@rentalmtl.com', '(514)888-8888'),
(9, 'owner4', 'd6cb2342e44efb6dd628276f36da2359', 'OwnerFour', 'Park', 'owner', 'owner4@rentalmtl.com', '(514)999-9999'),
(10, 'owner5', 'd6cb2342e44efb6dd628276f36da2359', 'OwnerFive', 'Park', 'owner', 'owner5@rentalmtl.com', '(514)101-1010'),
(12, 'tenant1', 'd6cb2342e44efb6dd628276f36da2359', 'TenantOne', 'Smith', 'tenant', 'tenant1@rentalmtl.com', '(514)111-1111');





