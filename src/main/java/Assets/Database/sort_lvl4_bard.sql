INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Compulsion',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Enchantement'),
    '1 action',
    '9 mètres',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Les créatures de votre choix situées à portée dans votre champ de vision et en mesure de vous entendre doivent faire un jet de sauvegarde de Sagesse. Une cible impossible à charmer réussit automatiquement sonjet. Si la cible rate son jet, elle est affectée par le sort. Jusqu''à la fin de celui-ci, vous pouvez, à chaque tour, utiliser une action bonus pour désigner une direction horizontale par rapport à vous. Chaque cible affectée doit alors utiliser son déplacement au mieux pour aller dans cette direction à son prochain tour. Elle peut effectuer son action avant de se déplacer. Une fois qu''elle s''est ainsi déplacée, elle peut faire un nouveau jet de sauvegarde de Sagesse pour tenter de mettre un terme à l''effet du sort.' || E'\n' || 'Une cible n''est pas obligée de se rendre au sein d''une zone à l''évidence dangereuse, comme un brasier ou une fosse béante, mais elle est prête à provoquer des attaques d''opportunité pour se déplacer dans la direction indiquée.',
    NULL
);