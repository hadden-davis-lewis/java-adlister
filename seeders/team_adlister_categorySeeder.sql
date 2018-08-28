USE team_adlister_db;

TRUNCATE category;

INSERT INTO category (name)
  VALUES  ('clothing'),
          ('shoes'),
          ('electronics'),
          ('furniture'),
          ('farm_agriculture'),
          ('tools'),
          ('cars_trucks'),
          ('motorcycles'),
          ('bicycles'),
          ('pets'),
          ('pet_supplies'),
          ('collectibles'),
          ('free_stuff'),
          ('misc');