INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Balisage',
        1,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        '36 mètres',
        'V, S',
        '1 round',
        'Un rayon de lumière frappe une créature de votre choix située à portée. Faites un jet d''attaque de sort à distance contre elle. Si vous touchez, elle subit 4d6 dégâts radiants et scintille d''une faible lumière mystique jusqu''à la fin de votre prochain tour. D''ici là et grâce à cette lueur, le prochain jet d''attaque effectué contre elle est avantagé.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts augmentent de 1d6 par niveau au-delà du 1er.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/guiding_bolt_spell_baldursgate3_wiki_guide_150px_2.png'
    ),
    (
        'Blessure',
        1,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Nécromancie'),
        '1 action',
        'contact',
        'V, S',
        'instantanée',
        'Faites une attaque de sort au corps à corps contre une créature située à une distance inférieure ou égale à votre allonge. Si vous la touchez, elle subit 3d10 dégâts nécrotiques.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts augmentent de 1d1O par niveau au-delà du 1er.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/inflict_wounds_spell_baldursgate3_wiki_guide_150px_2.png'
    ),
    (
        'Création ou destruction d''eau',
        1,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action',
        '9 mètres',
        'V, S, M (une goutte d''eau pour créer de l''eau ou quelques grains de sable pour en détruire)',
        'instantanée',
        'Vous créez ou détruisez de l''eau.' || E'\n' || '**Création d''eau**: Vous créez jusqu''à 40 litres d''eau potable qui apparaissent à portée, dans un récipient ouvert.' || E'\n' || 'Sinon, l''eau peut tomber en pluie dans un cube de 9 mètres d''arête à portée, éteignant toutes les flammes à nu dans la zone.' || E'\n' || '**Destruction d''eau**: Vous détruisez jusqu''à 40 litres d''eau situés à portée dans un récipient ouvert.' || E'\n' || 'Sinon, vous pouvez détruire le brouillard dans un cube de 9 mètres d''arête situé à portée.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, vous créez ou détruisez 40 litres d''eau de plus par niveau au-delà du 1er ou bien l''arête du cube affecté augmente de 1,50 mètre par niveau au-delà du 1er.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/create_water_spell_baldursgate3_wiki_guide_150px_2.png'
    ),
    (
        'Sanctuaire',
        1,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '1 action bonus',
        '9 mètres',
        'V, S, M (un petit miroir en argent)',
        '1 minute',
        'Vous protégez une créature à portée contre les attaques. Jusqu''à la fin du sort, toute créature qui vise la cible avec une attaque ou un sort néfaste doit d''abord faire un jet de sauvegarde. Si elle le rate, elle doit choisir une nouvelle cible, sans quoi l''attaque ou le sort est perdu. Ce sort ne protège pas la cible contre les effets de zone, comme l''explosion d''une boule de feu.' || E'\n' || 'Ce sort se termine si la créature protégée attaque ou lance un sort affectant une créature ennemie.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/sanctuary_spell_abjuration_bg3_wiki_64px.png'
    );