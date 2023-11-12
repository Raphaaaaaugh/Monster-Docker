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
  ('Jaggi', 'Dog Wyvern', 'The Great Jaggi is the head of a Jaggi pack. At a certain age, males leave the pack to live on their own for a period of time before returning to fight for the right to be a leader. They have a very commanding presence. It is said they can call and give complex orders to their pack with their howls and barks.', 'The Great Jaggi are in the middle of the food chain. They hunt many animals, some larger than itself. Its prey include Aptonoth, Kelbi, Rhenoplos, Delex, Fish, Giggi, Slagtoth, and Moofah. It also may prey on eggs of other animals, along with those of larger predators such as Rathian. Great Jaggi meat has a high nutritional value to larger predators, so it tends to stay away from them, including the likes of Lagiacrus, Gore Magala, Rathalos, Tigrex, Deviljho, and Zinogre as these predators would easily kill it. However, should any monster stray too far into Great Jaggi territory, the raptor will try to get rid of the intruder. The Great Jaggi hunts in packs, which helps in the success of its hunt and the previously mentioned hunts of larger wyverns.'),
  ('Deviljho', 'Violent Wyvern', 'The dreaded, nomadic Deviljho have no specific territory of their own. Their muscles swell if provoked, revealing old wounds. Needing to feed constantly due to high body heat, they can hunt nearby animals to extinction.', 'An infamous nomadic predator, Deviljho has long been known as the "eater of worlds" and the "great devourer". They are constantly in search of prey, most often herbivores and lesser predators. Whether be it in the Old or New World, Deviljho will almost always enforce itself as the most dominant apex predator of any environment and locale it is found in. They will dominate said environment they are currently in and can cause massive destruction to the ecosystem, similar to Elder Dragons. Long ago healed gashes throughout its body reveals that it constantly engages in fights and turf wars with other powerful monsters. Top predators such as Rathalos, Legiana, Zinogre and even the aggressive herbivore Diablos will engage in fights if the brute wyvern is attacking. However it will usually end with Deviljho on top and the others forced to retreat. Occasionally, even these monsters will fall yet another victim to its constant hunger.'),
  ('Rathalos', 'Sky Wyvern', 'Terrible wyverns called the "Kings of the Skies". Together with Rathian, they stake wide territories centered around their nests. Rathalos descend on invaders from the sky, attacking with poison claws and breath of fire.', 'Rathalos fear almost nothing else found in their habitat range, except other large predators and Elder Dragons. Rathalos may prey on lesser wyverns, particularly bird wyverns such as Jaggi, Velociprey and their alpha forms or pelagus such as Bullfango. Only certain predators in a Rathalos territory are strong enough to fight back if a Rathalos is attacking. Foremost among them are other wyverns and large monsters that live in the same habitat. Such predators include Lagiacrus, Seregios, Tigrex, Gore Magala, Brachydios, Deviljho, Stygian Zinogre, Agnaktor, Astalos, and the rare Rajang as they are large and powerful enough to threaten and possibly kill an adult Rathalos, but it will not go down without putting up a fight!'),
  ('Diablos', 'Sand Wyvern', 'Two-horned Wyverns found in desert zones. They are capable of burrowing into sand to attack from below. Incredibly violent and proud, they are known to unleash terrible wrath when accosted.', 'Diablos are Herbivores that readily feed on any kind of vegetation in their territory. Diablos are known to feed on different types of desert vegetation, most commonly giant cacti which can reach sizes of up to 12 feet tall. But with the size of the plants also comes rarity, so Diablos are always on the look out for these rare and succulent food, which leads to frequent territorial disputes. Although not a predator, Diablos is one of the dominant native monsters of the New World Wildspire Waste, alongside fellow native, Glavenus. Diablos are extremely territorial that it would jump into a fight against almost any monster to keep its turf, ranging from Barroth, Rathian, Glavenus and even another Diablos, although some threats like Bazelgeuse and Deviljho are more than a match for Diablos. Elder Dragons like Nergigante and Teostra seem to be the only contender that would make a Diablos consider to lay low.'),
  ('Fatalis', 'Wyvern of Destruction', 'A legendary black dragon known only as Fatalis. Rumored to have destroyed a kingdom in a single night, and has taken its castle for a roost.', 'Fatalis is extremely hostile to all living things. It threatens the very existence of not only the Castle Schrade, but the very world around it. In legend, it is said a Fatalis could scorch the whole world with its flames in a few days, burning all lands to a crisp. Due to this, the Guild will secretly send hunters to hunt it down to prevent public panic. However, most hunters never return. Due to many incidents surrounding Schrade Kingdom and Fatalis, the Hunter Guild has classified everything about both away from the public. Fatalis armor and quest are only allowed to those that have proven they are quite credible. For those hunters that are trying to reach new heights of power, Fatalis is also looked at as A Hunter Ultimate Goal.'),
  ('Dalamadur', 'Serpent King Dragon', 'A huge elder dragon, massive beyond human comprehension. The only mention of its existence is found in fairy tales, which claim it can warp the very surface of the world and level mountains with a single twitch.', 'This massive serpentine beast possesses two powerful clawed forearms that are used for support, climbing, and burrowing in its mountainous environment. The claws on each hand are powerful enough to cause entire mountain spires to collapse with a single strike. While they still possess forelegs, Dalamadur have gradually lost their back legs and all that remains are two small spurs, similar to those of anacondas or pythons. The forked snake-like tongue of a Dalamadur has paralyzing properties that can easily immobilize hunters. Dalamadur are also capable of spewing an unknown fiery substance from their maws. On the chest of these beasts are vents that glow and huff steam when enraged, hinting at incredibly high internal temperatures. One ability that cannot be explained about Dalamadur is its ability to summon meteors. It is unknown how it is able to summon meteors, but this is being researched.');


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