USE team_adlister_db;

TRUNCATE ad;

INSERT INTO ad (user_id, title, description, photo, date_added, price, location)
  VALUES  (1, 'chair', 'used swivel office chair', 'https://arcticoceanforever.com/d/2018/06/duval-industrial-swivel-office-chair-aluminium-frame-distressed-leather-java-vitra-eames-tempurpedic-best-massage-boss-chairs-waiting-room-furniture-used-high-top-black-and-white.jpg','08-28-2018', 5.00, 'San Antonio'),
          (2, 'car', '1977 Camaro w/ no engine', '', '03-22-2018', 197.69, 'New Braunfels, TX'),
          (4, 'table', 'outdoor table, slightly rusty', '', '09-19-2017', 20.13, 'San Antonio, TX'),
          (5, 'power drill', 'handle is broken', '', '04-05-2018', 7.30, 'Schertz, TX'),
          (3, 'watch', 'display light is multiple colors', '', '12-30-2018', 4.01, 'New Braunfels'),
          (2, 'computer', 'outer casing is scratched', '', '10-27-2018', 43.55, 'New Braunfels, TX'),
          (4, 'motorcycle', 'shakes terribly when running', '', '18-11-2018', 99.71, 'San Antonio, TX'),
          (5, 'tennis shoes', 'vintage Nike w/ paint stains', '', '06-17-2018', 9.14, 'Cibolo, TX'),
          (6, 'iphone', 'reject phone from Apple. Iphone displays android features', '', '10-16-2018', 5.75, 'San Marcos, TX');

