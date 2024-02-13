CREATE TABLE ecole(
    id_ecole serial PRIMARY KEY,
    nom_ecole varchar(50)
);

INSERT INTO ecole (nom_ecole)
VALUES ('Abjuration'),('Divination'),('Enchantement'),('Evocation'),('Illusion'),('Invocation'),('Nécromancie'),('Transmutation');

CREATE TABLE sort(
    id_sort serial PRIMARY KEY,
    nom_sort varchar(100),
    niveau_sort int,
    ecole_sort int,
    duree_incantation varchar(200),
    portee varchar(200),
    composantes varchar(200),
    duree_sort varchar(200),
    description text,
    img_sort text
);

CREATE OR REPLACE FUNCTION verif_nom_sort_existence()
    RETURNS TRIGGER AS $$
    BEGIN
        IF EXISTS (SELECT 1 FROM sort WHERE nom_sort = NEW.nom_sort) THEN
            RAISE EXCEPTION 'Le nom du sort % existe déjà dans la base de données.', NEW.nom_sort;
        END IF;
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trig_verif_nom_sort_existence
BEFORE INSERT ON sort
FOR EACH ROW
EXECUTE FUNCTION verif_nom_sort_existence();


CREATE TABLE classe(
    id_classe serial PRIMARY KEY,
    nom_classe varchar(50),
    description text,
    de_vie varchar(10),
    caract_principale varchar(50),
    jet_sauv varchar(50),
    arm_skill text,
    img_classe text
);

INSERT INTO classe(nom_classe,description,de_vie,caract_principale,jet_sauv,arm_skill,img_classe)
VALUES
('Barbare','Un féroce combattant primitif capable de devenir enragé.','d12','Force','Force et Constitution','Armures légères et intermédiaires, bouclier, armes courantes et de guerre','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/barbarian_class_icon_alt.png'),
('Barde','Un mage capable d''inspirer ses camarades et dont les pouvoirs font écho à la musique de la création.','d8','Charisme','Dextérité et Charisme','Armure légère, armes courantes, arbalète de poing, épée longue, rapière, épée courte','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/bard_icon_class_bg3_wiki_guide.png'),
('Clerc','Un champion ecclésiastique qui use de magie divine au service d''une puissance supérieure.','d8','Sagesse','Sagesse et Charisme','Armures légères et intermédiaires, boucliers, armes courantes','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/cleric_class_icon_baldursgate3_wiki_guide_75px.png'),
('Druide','Un adepte de l''antique religion qui manie les pouvoirs de la nature (la lumière de la lune et la croissance végétale, le feu et la foudre) et peut revêtir une forme sauvage.', 'd8','Sagesse','Intelligence et Sagesse','Armures légères et intermédiaires (jamais en métal), bouclier (jamais en métal), gourdin, fléchette, javeline, masse d''armes, bâton, cimeterre, serpe, fronde, lance','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/druid_class_icon_1_baldursgate3_wiki_guide_75px.png'),
('Ensorceleur','Un mage qui tire ses pouvoirs magiques innés de sa lignée ou d''un don.','d6','Charisme','Constitution et Charisme','Dague, fléchette, fronde, bâton, arbalète légère','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/sorcerer_class_icon_baldurs_gate_3_wiki_guide_250px.png'),
('Guerrier','Un maître de guerre sachant utiliser tout un éventail d''armes et d''armures.','d10','Force ou Dextérité','Force et Constitution','Toutes les armures, bouclier, armes courantes et de guerre','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/fighter_class_icon_baldursgate3_wiki_guide_75px.png'),
('Magicien','Un utilisateur de magie académique capable de manipuler le tissu de la réalité','d6','Intelligence','Intelligence et Sagesse','Dague, fléchette, fronde, bâton, arbalète légère','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/warlock_class_icon_baldursgate3_wiki_guide_75px.png'),
('Moine','Un maître des arts martiaux qui puise dans sa puissance corporelle afin d''atteindre la perfection physique et spirituelle','d8','Dextérité et Sagesse','Force et Dextérité','Armes courantes, épée courte','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/monk_class_icon_baldursgate3_wiki_guide_75px.png'),
('Paladin','Un guerrier saint lié par un serment sacré','d10','Force et Charsime','Sagesse et Charisme','Toutes les armures, bouclier, armes courantes et de guerre','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/paladin_class_bg3_wiki_guide75px.png'),
('Rodeur','Un combattant qui recourt aux prouesses martiales et à la magie du monde naturel pour lutter contre les dangers rôdant en lisière de la civilisation','d10','Dextérité et Sagesse','Force et Dextérité','Armures légères et intermédiaires, bouclier, armes courantes et de guerre','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/ranger_class_icon_baldursgate3_wiki_guide_75px.png'),
('Roublard','Une crapule qui surmonte les obstacles et triomphe de ses ennemis grâce à sa discrétion et ses ruses','d8','Dextérité','Dextérité et Intelligence','Armures légères, armes courantes, arbalète de poing, épée longue, rapière, épée courte','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/rogue_class_icon_baldursgate3_wiki_guide_75px.png'),
('Sorcier','Un mage qui doit ses pouvoirs au marché passé avec une entité extraplanaire','d8','Charisme','Sagesse et Charisme','Armures légères, armes courantes','https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/wizard_class_icon_baldursgate3_wiki_guide_75px.png');

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

INSERT INTO sortclasse
VALUES
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Bénédiction')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Bouclier de la foi')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Détection de la magie')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Détection du bien et du mal')),
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
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Frappe assommante')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Localiser une créature')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Protection contre la mort')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Cercle de pouvoir')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Coercition mystique')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Dissipation du mal et du bien')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Frappe du bannissement')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Relever les morts')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Vague destructrice')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Sens divin')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Imposition des mains')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Châtiment divin')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Aura de protection')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Aura de courage')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Paladin'),(SELECT id_sort FROM sort WHERE nom_sort='Contact purifiant'));


INSERT INTO sortclasse
VALUES
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Amis')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Aspersion acide')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Bouffée de poison')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Contact glacial')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Illusion mineure')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Lumière')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Lumières dansantes')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Main du mage')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Message')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Poigne électrique')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Prestidigitation')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Protection contre les armes')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Rayon de givre')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Réparation')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Trait de feu')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Viser juste')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Armure du mage')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Bouclier')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Carreau ensorcelé')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Charme-personne')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Compréhension des langues')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Couleurs dansantes')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Déguisement')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Détection de la magie')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Image silencieuse')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Léger comme une plume')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Bouffée de poison')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Contact glacial')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Illusion mineure')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Lumière')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Lumières dansantes')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Main du mage')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Message')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Poigne électrique')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Prestidigitation')),
    ((SELECT id_classe FROM classe WHERE nom_classe='Ensorceleur'),(SELECT id_sort FROM sort WHERE nom_sort='Protection contre les armes'));;

mains brûlantes
nappe de brouillard
orbe chromatique
projectile magique
rayon empoisonné
repli expéditif
saut
simulacre de vie
sommeil
vague tonnante
NIVEAU 2
agrandir/rétrécir
amélioration de caractéristique
bourrasque
bciser
cécité/surdité
couronne du dément
déblocage
détection des pensées
flou
force fantasmagorique image miroir
immobiliser un humanoïde invisibilité
lévitation
modifier son apparence nuée de dagues
pas brumeux
pattes d'araignée
rayon ardent
suggestion
ténèbres
toile d'araignée
vision dans le noir
voir l'invisible
NIVEAU 3
boule de feu
clairvoyance
clignotement
contresort
dissipation de la magie
éclair
forme gazeuse
hâte
image majeure
langues
lenteur
lumière du jour
marche sur l'eau
motif hypnotique
nuage puant
peur
protection contre l'énergie
respiration aquatique
tempête de neige vol
NIVEAU 4
bannissement
confusion
dominer une bête
flétrissement
invisibilité supérieure
métamorphose
mur de feu
peau de pierre
porte dimensionnelle tempête de grêle
NIVEAU 5
animation des objets
apparence trompeuse
cercle de téléportation
cône de froid
création
dominer un humanoïde
fléau d'insectes
immobiliser un monstre
mur de pierre
nuage mortel
télékinésie
NIVEAU 6
cercle de mort
chaîne d'éclairs
déplacer la terre
désintégration
globe d'invulnérabilité
mauvais œil
portail magique rayon de soleil suggestion de groupe vision suprême
NIVEAU 7
boule de feu à explosion
retardée
changement de plan
doigt de mort
embruns prismatiques
forme éthérée
inversion de la gravité
téléportation
tempête de feu
NIVEAU 8
dominer un monstre
éclat du soleil
mot de pouvoir étourdissant
nuage incendiaire
tremblement de terre
NIVEAU 9
arrêt du temps
mot de pouvoir mortel
nuée de météores
portail
souhait