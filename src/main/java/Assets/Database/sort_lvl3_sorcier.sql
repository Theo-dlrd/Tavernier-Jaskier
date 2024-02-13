INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Appétit d''Hadar',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '45 mètres',
    'V, S, M (tentacule de pieuvre en saumure)',
    'concentration, jusqu''à 1 minute',
    'Vous ouvrez un portail sur le vide intersidéral, une région plongée dans les ténèbres et infestée par des horreurs inconnues. Une sphère de 6 mètres de rayon apparaît. Elle est faite de ténèbres et d''un froid mordant et centrée sur un point à portée. Elle reste là pendant toute la durée du sort. Dans ce néant, on entend une cacophonie de sinistres murmures et de bruits de mastication, audibles dans un rayon de 9 mètres. Aucune lumière, ni magique ni autre, ne peut illuminer la zone et toute créature entièrement englobée en son sein est aveuglée. Le néant crée une distorsion dans le tissu de l''espace et la zone est considérée comme un terrain difficile. Toute créature qui y commence son tour subit 2d6 dégâts de froid. Une créature qui y termine son tour doit réussir un jet de sauvegarde de Dextérité, sans quoi des tentacules laiteux venus d''ailleurs la palpent et lui infligent 2d6 dégâts d''acide.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/hunger_of_hadar_conjuration_spell_bg3_wiki_64px.png'
),
(
    'Caresse du vampire',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    'personnelle',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Le simple contact de votre main enveloppée d''ombres peut siphonner la force vitale d''autrui pour soigner vos propres plaies. Faites une attaque de sort au corps à corps contre une créature située à une distance inférieure ou égale à votre allonge. Si vous touchez, elle subit 3d6 dégâts nécrotiques et vous récupérez un montant de points de vie égal à la moitié des dégâts infligés. Vous pouvez dépenser votre action à chacun de vos tours pour répéter cette attaque jusqu''à la fin du sort.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 4 ou plus, les dégâts augmentent de 1d6 par niveau au-delà du 3e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/vampiric_touch_spells_bg3_wiki_guide64px.png'
);