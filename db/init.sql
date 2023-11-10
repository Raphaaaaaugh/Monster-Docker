CREATE DATABASE monsters;
USE monsters;


CREATE TABLE monster_data (
  Monster_Name VARCHAR(50),
  Title VARCHAR(50),
  Descr TEXT,
  Ecology TEXT
);


CREATE TABLE lore (
  Story TEXT,
  Content TEXT
);


CREATE TABLE weapon (
    Weapon_Name VARCHAR(50),
    Weapon_Type ENUM('Greatsword', 'Longsword', 'Dual-Swords', 'Sword-and-Shield', 'Lance', 'Gunlance', 'Hammer', 'Hunting-Horn', 'Switch-Axe', 'Charge-Blade', 'Insect-Glaive', 'Light-Bowgun', 'Heavy-Bowgun', 'Bow'),
    Attack INTEGER,
    Element INTEGER,
    ElementType ENUM('None', 'Fire', 'Water', 'Thunder', 'Ice', 'Dragon'),
    Sharpness ENUM('Null', 'Shattered', 'Cracked', 'Blunt', 'Edged', 'Sharpened', 'Honed', 'Razor-sharped'),
    Firepower ENUM('Null', 'Rapid', 'Strong', 'Siege')
);


INSERT INTO monster_data
  (Monster_Name, Title, Descr, Ecology)
VALUES
  ('Rathalos', 'Sky Wyvern', 'Terrible wyverns called the "Kings of the Skies". Together with Rathian, they stake wide territories centered around their nests. Rathalos descend on invaders from the sky, attacking with poison claws and breath of fire.', 'Rathalos fear almost nothing else found in their habitat range, except other large predators and Elder Dragons. Rathalos may prey on lesser wyverns, particularly bird wyverns such as Jaggi, Velociprey and their alpha forms or pelagus such as Bullfango. Only certain predators in a Rathalos territory are strong enough to fight back if a Rathalos is attacking. Foremost among them are other wyverns and large monsters that live in the same habitat. Such predators include Lagiacrus, Seregios, Tigrex, Gore Magala, Brachydios, Deviljho, Stygian Zinogre, Agnaktor, Astalos, and the rare Rajang as they are large and powerful enough to threaten and possibly kill an adult Rathalos, but it will not go down without putting up a fight!'),
  ('Diablos', 'Sand Wyvern', 'Two-horned Wyverns found in desert zones. They are capable of burrowing into sand to attack from below. Incredibly violent and proud, they are known to unleash terrible wrath when accosted.', 'Diablos are Herbivores that readily feed on any kind of vegetation in their territory. Diablos are known to feed on different types of desert vegetation, most commonly giant cacti which can reach sizes of up to 12 feet tall. But with the size of the plants also comes rarity, so Diablos are always on the look out for these rare and succulent food, which leads to frequent territorial disputes. Although not a predator, Diablos is one of the dominant native monsters of the New World Wildspire Waste, alongside fellow native, Glavenus. Diablos are extremely territorial that it would jump into a fight against almost any monster to keep its turf, ranging from Barroth, Rathian, Glavenus and even another Diablos, although some threats like Bazelgeuse and Deviljho are more than a match for Diablos. Elder Dragons like Nergigante and Teostra seem to be the only contender that would make a Diablos consider to lay low.');


INSERT INTO lore (Story, Content)
VALUES
  ('Legend of flight', 'The sky takes flight and the earth trembles.'),
  ('Legend of hunt', 'The earth walks, strongest of all.');


INSERT INTO weapon (Weapon_Name, Weapon_Type, Attack, Element, ElementType, Sharpness, Firepower)
VALUES
  ('Strong Cleave', 1, 960, 0, 1, 4, 1),
  ('Wasserfallis', 2, 726, 240, 3, 7, 1),
  ('Euros', 2, 759, 0, 1, 7, 1),
  ('True Fatalis Lance', 5, 644, 580, 6, 6, 1),
  ('Kecha Clanvira', 8, 1248, 580, 2, 8, 1),
  ('Dancing Grisdrum', 8, 1508, 420, 1, 7, 1),
  ('Akantor Broadsword', 1, 1632, 0, 1, 5, 1),
  ('Doomhammer "Blood"', 7, 1508, 0, 1, 7, 1),
  ('Meteoric Core', 7, 1352, 700, 6, 7, 1),
  ('Deus Obelisk', 6, 529, 760, 6, 7, 3),
  ('Ceadeus Regalia', 10, 1080, 310, 3, 7, 1),
  ('Great Kelbi Deershot', 14, 288, 270, 1, 1, 2),
  ('Bounding Dalamadur', 11, 930, 320, 1, 7, 1),
  ('Vayu Sedition', 12, 390, 0, 1, 1, 2),
  ('Gravios Gigacannon', 13, 480, 0, 1, 1, 4),
  ('Stygian Luxuria', 4, 378, 430, 6, 7, 1);