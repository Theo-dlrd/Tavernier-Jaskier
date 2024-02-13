INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Bagou',
    8,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    'personnelle',
    'V',
    '1 heure',
    'Jusqu''à la fin du sort, chaque fois que vous faites un test de Charisme, vous pouvez remplacer le nombre obtenu au dé par un 15. De plus,quoi que vous disiez, la magie visant à déterminer si vous dites la vérité vous croit toujours sincère.',
    NULL
),
(
    'Demi-plan',
    8,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '18 mètres',
    'S',
    '1 heure',
    'Vous créez une porte floue sur une surface plate et solide située à portée dans votre champ de vision. Elle est assez large pour laisser passer sans mal des créatures de taille Moyenne. Quand quelqu''un ouvre la porte, elle donne sur un demi-plan ressemblant à une pièce vide de 9 mètres de côté (dans toutes les dimensions) faite de bois ou de pierre. La porte disparaît quand le sort se termine et les créatures et les objets encore dans le demi-plan y restent piégés, car elle s''efface aussi de leur côté.' || E'\n' || 'Vous pouvez créer un nouveau demi-plan pour chaque incantation du sort ou relier la porte à un demi-plan que vous avez précédemment créé via ce sort. De plus,si vous connaissez la nature et le contenu d''un demi-plan qu''une autre créature a créé grâce à ce sort, vous pouvez lui relier votre propre porte.',
    NULL
),
(
    'Esprit faible',
    8,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '45 mètres',
    'V, S, M (une poignée de sphères en argile, en cristal, en verre ou minérales)',
    'instantanée',
    'Vous vous attaquez à l''esprit d''une créature située à portée dans votre champ de vision en essayant de briser son intellect et sa personnalité. La cible subit 4d6 dégâts psychiques et doit faire un jet de sauvegarde d''Intelligence.' || E'\n' || 'Si la cible rate son jet, son Intelligence et son Charisme tombent à 1. Elle ne peut plus lancer de sorts, activer d''objet magique, comprendre une langue, ni communiquer de manière intelligible. En revanche, elle est toujours capable de reconnaître ses amis, de les suivre et même de les protéger.' || E'\n' || 'La créature peut refaire un jet de sauvegarde tous les 30 jours. Le sort se termine dès qu''elle réussit.' || E'\n' || 'On peut mettre un terme à ce sort avec _restauration supérieure_, _guérison_ ou _souhait_.',
    NULL
);