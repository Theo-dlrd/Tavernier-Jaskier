CREATE TABLE ecole(
    id_ecole serial PRIMARY KEY,
    nom_ecole varchar(50)
);

INSERT INTO ecole (nom_ecole)
VALUES ('Abjuration'),('Divination'),('Enchantement'),('Evocation'),('Illusion'),('Invocation'),('Nécromancie'),('Transmutation');

CREATE TABLE sort(
    id_sort serial PRIMARY KEY,
    nom_sort varchar(50),
    niveau_sort int,
    ecole_sort int,
    duree_incantation varchar(50),
    portee varchar(50),
    composantes varchar(100),
    duree_sort varchar(100),
    description text
);

CREATE TABLE classe(
    id_classe serial PRIMARY KEY,
    nom_classe varchar(50),
    desc text
    de_vie varchar(10),
    caract_principale varchar(50),
    jet_sauv varchar(50),
    arm_skill text
);

INSERT INTO classe(nom_classe,desc,de_vie,caract_principale,jet_sauv,arm_skill)
VALUES
('Barbare','Un féroce combattant primitif capable de devenir enragé.','d12','Force','Force et Constitution','Armures légères et intermédiaires, bouclier, armes courantes et de guerre'),
('Barde','Un mage capable d''inspirer ses camarades et dont les pouvoirs font écho à la musique de la création.','d8','Charisme','Dextérité et Charisme','Armure légère, armes courantes, arbalète de poing, épée longue, rapière, épée courte'),
('Clerc','Un champion ecclésiastique qui use de magie divine au service d''une puissance supérieure.','d8','Sagesse','Sagesse et Charisme','Armures légères et intermédiaires, boucliers, armes courantes'),
('Druide','Un adepte de l''antique religion qui manie les pouvoirs de la nature (la lumière de la lune et la croissance végétale, le feu et la foudre) et peut revêtir une forme sauvage.', 'd8','Sagesse','Intelligence et Sagesse','Armures légères et intermédiaires (jamais en métal), bouclier (jamais en métal), gourdin, fléchette, javeline, masse d''armes, bâton, cimeterre, serpe, fronde, lance'),
('Ensorceleur','Un mage qui tire ses pouvoirs magiques innés de sa lignée ou d''un don.','d6','Charisme','Constitution et Charisme','Dague, fléchette, fronde, bâton, arbalète légère'),
('Guerrier','Un maître de guerre sachant utiliser tout un éventail d''armes et d''armures.','d10','Force ou Dextérité','Force et Constitution','Toutes les armures, bouclier, armes courantes et de guerre'),
('Magicien','Un utilisateur de magie académique capable de manipuler le tissu de la réalité','d6','Intelligence','Intelligence et Sagesse','Dague, fléchette, fronde, bâton, arbalète légère'),
('Moine','Un maître des arts martiaux qui puise dans sa puissance corporelle afin d''atteindre la perfection physique et spirituelle','d8','Dextérité et Sagesse','Force et Dextérité','Armes courantes, épée courte'),
('Paladin','Un guerrier saint lié par un serment sacré','d10','Force et Charsime','Sagesse et Charisme','Toutes les armures, bouclier, armes courantes et de guerre'),
('Rodeur','Un combattant qui recourt aux prouesses martiales et à la magie du monde naturel pour lutter contre les dangers rôdant en lisière de la civilisation','d10','Dextérité et Sagesse','Force et Dextérité','Armures légères et intermédiaires, bouclier, armes courantes et de guerre'),
('Roublard','Une crapule qui surmonte les obstacles et triomphe de ses ennemis grâce à sa discrétion et ses ruses','d8','Dextérité','Dextérité et Intelligence','Armures légères, armes courantes, arbalète de poing, épée longue, rapière, épée courte'),
('Sorcier','Un mage qui doit ses pouvoirs au marché passé avec une entité extraplanaire','d8','Charisme','Sagesse et Charisme','Armures légères, armes courantes');

CREATE TABLE race(
    id_race serial PRIMARY KEY,
    nom_race varchar(20)
);

INSERT INTO race(nom_race)
VALUES ('Elfe'),('Halfelin'),('Humain'),('Nain'),('Demi-elfe'),('Demi-orc'),('Gnome'),('Sangdragon'),('Tieffelin');

CREATE TABLE sortClasse(
    id_classe int REFERENCES classe(id_classe),
    id_sort int REFERENCES sort(id_sort)
);

INSERT INTO sortClasse
VALUES
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Bénédiction')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Bouclier de la foi')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Détection de la magie')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Détection du mal et du bien')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Détection du poison et des maladies')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Duel forcé')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Faveur divine')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Frappe ardente')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Frappe colérique')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Frappe tonitruante')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Héroïsme')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Injonction')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Protection contre le mal et le bien')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Purification de la nourriture et de l''eau')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Soin des blessures')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Aide')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Arme magique')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Frappe lumineuse')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Localiser un objet')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Protection contre le poison')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Restauration inférieure')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Trouver une monture')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Zone de vérité')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Arme élémentaire')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Aura de vitalité')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Aura du croisé')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Cercle magique')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Création de nourriture et d''eau')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Dissipation de la magie')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Frappe aveuglante')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Lever une malédiction')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Lumière du jour')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Revigorer')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Aura de pureté')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Aura de vie')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Bannissement')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Frappe assomante')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Localiser une créature')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Protection contre la mort')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Cercle de pouvoir')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Coercition mystique')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Dissipation du mal et du bien')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Frappe du banissement')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Relever les morts')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Vague destructrice'));                                                                                    '

