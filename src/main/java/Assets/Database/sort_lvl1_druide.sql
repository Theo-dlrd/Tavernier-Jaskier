INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Baies nourricières',
        1,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
        '1 action',
        'contact',
        'V, S, M (un brin de gui)',
        'instantanée',
        'Jusqu''à dix baies apparaissent dans votre main. Elles sont imprégnées de magie pendant une journée. Une créature peut utiliser son action pour manger une baie, ce qui lui rend un point de vie et la nourrit pour la journée.' || E'\n' || 'Les baies perdent leurs propriétés si personne ne les mange dans les 24 heures qui suivent l''incantation.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/goodberry_spell_baldursgate3_wiki_guide_150px.png'
    ),
    (
        'Enchevêtrement',
        1,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 action',
        '27 mètres',
        'V, S',
        'concentration, jusqu''à 1 minute',
        'Des herbes et des lianes entremêlées jaillissent du sol dans un carré de 6 mètres de côté centré sur un point à portée. Pendant toute la durée du sort, les végétaux transforment la zone en terrain difficile.' || E'\n' || 'Une créature qui se trouve dans la zone affectée lorsque vous lancez le sort doit réussir un jet de sauvegarde de Force, sans quoi elle reste entravée dans les plantes jusqu''à ce que le sort se termine. Une créature entravée peut utiliser une action pour faire un test de Force contre le DD du sort. Si elle réussit, elle se libère.' || E'\n' || 'Quand le sort se termine, les plantes invoquées se flétrissent.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/entangle_spell_baldursgate3_wiki_guide_150px.png'
    );