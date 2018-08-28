USE team_adlister_db;

TRUNCATE user;

INSERT INTO user (first_name, last_name, email, username, password, location, profile_pic, user_since)
  VALUES  ('Clint', 'Eastwood', 'eastwood@email.com', 'Blondie', 'doYaPunk', 'El Paso', '', '08-28-2018'),
          ('Fat', 'Albert', 'cosbyKids@email.com', 'Fat Albert', 'heyheyhey', 'junkyard', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLKVbcTWn5FosBP1k1IhmgB8RQ81T_p3kdZxyACjc4vn8UMaq4kQ', '07-04-2017'),
          ('Bat', 'Man', 'superHero@email.com', 'Batman', 'iMbatman', 'gotham', '', '12-14-1967'),
          ('Wonder', 'Woman', 'superHero@email.com', 'Wonder Woman', 'lasso1', 'Paradise Island', '', '05-14-1967'),
          ('Aqua', 'Man', 'superHero@email.com', 'aquaman', 'iTalkToFish', 'Atlantis', '', '10-08-1981'),
          ('Cool', 'Kid', 'coolKid@email.com', 'Cool Kid', 'notSoCool', 'School House', '', '02-11-2010');

--           ('Mike', 'Williams', 'superHero@email.com', 'batman', 'iMbatman', 'gotham', '', '12-14-1967'),
--           ('Sam', 'Elliot', 'superHero@email.com', 'batman', 'iMbatman', 'gotham', '', '12-14-1967'),
--           ('Kelly', 'Manning', 'superHero@email.com', 'batman', 'iMbatman', 'gotham', '', '12-14-1967'),
--           ('Jim', 'Barnes', 'superHero@email.com', 'batman', 'iMbatman', 'gotham', '', '12-14-1967'),
--           ('Angel', 'Lowe', 'superHero@email.com', 'batman', 'iMbatman', 'gotham', '', '12-14-1967'),
--           ('Skylar', 'Devs', 'superHero@email.com', 'batman', 'iMbatman', 'gotham', '', '12-14-1967')

