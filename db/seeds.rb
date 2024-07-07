# Create character races

CharacterRace.create!(
  name: 'Haut-Elfe',
  charisma: 6,
  intelligence: 5,
  stealth: 0,
  dexterity: 0,
  constitution: 0,
  speed: 2,
  strength: 0,
  mana: 7,
  min_size: 180,
  max_size: 200,
  min_weight: 70,
  max_weight: 90,
  effect: 'résistance aux sorts/mana  100%'
)

CharacterRace.create!(
  name: 'Elfe des bois',
  charisma: 4,
  intelligence: 5,
  stealth: 2,
  dexterity: 6,
  constitution: 0,
  speed: 3,
  strength: 0,
  mana: 0,
  min_size: 180,
  max_size: 200,
  min_weight: 70,
  max_weight: 90,
  effect: '80% de chance de faire fuir les animaux'
)

CharacterRace.create!(
  name: 'Humains',
  charisma: 4,
  intelligence: 8,
  stealth: 0,
  dexterity: 2,
  constitution: 2,
  speed: 2,
  strength: 2,
  mana: 0,
  min_size: 160,
  max_size: 180,
  min_weight: 50,
  max_weight: 90,
  effect: 'inventaire plus grand +3'
)

CharacterRace.create!(
  name: 'Halfelin',
  charisma: 2,
  intelligence: 3,
  stealth: 5,
  dexterity: 4,
  constitution: 2,
  speed: 4,
  strength: 0,
  mana: 0,
  min_size: 100,
  max_size: 120,
  min_weight: 20,
  max_weight: 30,
  effect: 'résistance de 30% aux malédictions'
)

CharacterRace.create!(
  name: 'Nains',
  charisma: 0,
  intelligence: 3,
  stealth: 4,
  dexterity: 4,
  constitution: 4,
  speed: 0,
  strength: 5,
  mana: 0,
  min_size: 120,
  max_size: 140,
  min_weight: 50,
  max_weight: 70,
  effect: '50% de chance de pouvoir avancer juste après sans besoin de repos'
)

CharacterRace.create!(
  name: 'Reptides',
  charisma: 0,
  intelligence: 5,
  stealth: 2,
  dexterity: 5,
  constitution: 3,
  speed: 3,
  strength: 2,
  mana: 0,
  min_size: 170,
  max_size: 190,
  min_weight: 70,
  max_weight: 110,
  effect: 'une queue qui sert de 3ème main'
)

CharacterRace.create!(
  name: 'Orque',
  charisma: 0,
  intelligence: 3,
  stealth: 0,
  dexterity: 2,
  constitution: 5,
  speed: 4,
  strength: 6,
  mana: 0,
  min_size: 200,
  max_size: 220,
  min_weight: 130,
  max_weight: 170,
  effect: 'résistance 100% à l\'empoisonnement et l\'endormissement'
)

CharacterRace.create!(
  name: 'Wolfimidé',
  charisma: 2,
  intelligence: 2,
  stealth: 0,
  dexterity: 2,
  constitution: 4,
  speed: 6,
  strength: 4,
  mana: 0,
  min_size: 160,
  max_size: 180,
  min_weight: 60,
  max_weight: 100,
  effect: 'Garou: pour chaque combat, 20% de chance d\'avoir un bonus+5 en force sur tout le combat'
)

CharacterRace.create!(
  name: 'Ogre',
  charisma: 0,
  intelligence: 0,
  stealth: 0,
  dexterity: 0,
  constitution: 7,
  speed: 3,
  strength: 10,
  mana: 0,
  min_size: 220,
  max_size: 240,
  min_weight: 230,
  max_weight: 270,
  effect: '20% de chance de faire fuir tous les adversaires'
)

CharacterRace.create!(
  name: 'Fée',
  charisma: 8,
  intelligence: 2,
  stealth: 2,
  dexterity: 0,
  constitution: 0,
  speed: 3,
  strength: 0,
  mana: 5,
  min_size: 70,
  max_size: 90,
  min_weight: 6,
  max_weight: 12,
  effect: 'peut voler dans les airs: bonus +5 pour la fuite, 100% de réussite pour grimper, aller dans les trous, etc'
)

# Create these character classes

CharacterClass.create!(
  name: 'Pretres',
  charisma: 9,
  intelligence: 5,
  stealth: 0,
  dexterity: 0,
  constitution: 0,
  speed: 0,
  strength: 0,
  mana: 6,
  salary: 10,
  effect: 'protection divine: résistance aux malédictions de 50%'
)

CharacterClass.create!(
  name: 'Druides',
  charisma: 4,
  intelligence: 4,
  stealth: 0,
  dexterity: 0,
  constitution: 0,
  speed: 0,
  strength: 0,
  mana: 10,
  salary: 20,
  effect: 'à la fin de chaque tour, regagne 10pv'
)

CharacterClass.create!(
  name: 'Alchimistes',
  charisma: 0,
  intelligence: 8,
  stealth: 0,
  dexterity: 0,
  constitution: 0,
  speed: 0,
  strength: 0,
  mana: 8,
  salary: 30,
  effect: '1 potion gratuite à chaque fois qu\'il va en ville'
)

CharacterClass.create!(
  name: 'Chevaliers',
  charisma: 5,
  intelligence: 0,
  stealth: 0,
  dexterity: 0,
  constitution: 2,
  speed: 2,
  strength: 7,
  mana: 0,
  salary: 30,
  effect: 'à la fin de chaque combat, a 40% de chance de récupérer tous ses PV'
)

CharacterClass.create!(
  name: 'Assassin',
  charisma: 0,
  intelligence: 2,
  stealth: 5,
  dexterity: 5,
  constitution: 0,
  speed: 2,
  strength: 0,
  mana: 0,
  salary: 40,
  effect: 'rajoute un dé6 de dégats à la première attaque, +1 point de notoriété si la cible meurt à la première attaque'
)

CharacterClass.create!(
  name: 'Politiciens',
  charisma: 10,
  intelligence: 6,
  stealth: 0,
  dexterity: 0,
  constitution: 0,
  speed: 0,
  strength: 0,
  mana: 0,
  salary: 30,
  effect: 'Quand il s\'arrête en ville, peut choisir comme action de tenir un discours pour 1 point de notoriété'
)

CharacterClass.create!(
  name: 'Marchands',
  charisma: 8,
  intelligence: 4,
  stealth: 0,
  dexterity: 0,
  constitution: 0,
  speed: 0,
  strength: 0,
  mana: 0,
  salary: 50,
  effect: 'inventaire plus grand +5. si il veut, en ville 20% de chance de voir les prix doublés si il veut'
)

CharacterClass.create!(
  name: 'Pilleur',
  charisma: 0,
  intelligence: 0,
  stealth: 4,
  dexterity: 0,
  constitution: 2,
  speed: 5,
  strength: 3,
  mana: 0,
  salary: 40,
  effect: 'trouve un objet de plus au choix dans les coffres'
)

CharacterClass.create!(
  name: 'Savant',
  charisma: 4,
  intelligence: 12,
  stealth: 0,
  dexterity: 0,
  constitution: 2,
  speed: 0,
  strength: 0,
  mana: 0,
  salary: 20,
  effect: 'Connait les niveaux de compétences de chaque adversaire rencontré'
)

CharacterClass.create!(
  name: 'Paladin',
  charisma: 0,
  intelligence: 0,
  stealth: 0,
  dexterity: 4,
  constitution: 4,
  speed: 2,
  strength: 6,
  mana: 4,
  salary: 10,
  effect: 'Peut changer d\'objet dans ses mains au cours d\'un combat'
)
