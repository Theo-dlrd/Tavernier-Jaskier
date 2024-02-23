INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Croissance d''épines',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
        '1 action',
        '45 mètres',
        'V, S, M (sept épines acérées ou sept brindilles taillées en pointe)',
        'concentration, jusqu''à 10 minutes',
        'Dans une zone de 6 mètres de rayon centrée sur un point à portée, le sol se met à se déformer et donne naissance à un tapis de pointes et d''épines. La zone se mue en terrain difficile pendant toute la durée du sort. Quand une créature entre dans la zone ou s''y déplace, elle reçoit 2d4 dégâts perforants par tranche de 1,50 mètre parcouru.' || E'\n' || 'La transformation du sol est camouflée, de manière à ce que le terrain ait l''air naturel. Une créature dans l''incapacité de voir la zone au moment de l''incantation doit faire un test de Sagesse (Perception) contre le DD du jet de sauvegarde de votre sort. Si elle le réussit, elle remarque que le terrain est dangereux avant d''y entrer.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/spike_growth_spell_baldursgate3_wiki_guide_150px.png'
    ),
    (
        'Lame de feu',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
        '1 action bonus',
        'personnelle',
        'V, S, M (feuille de sumac)',
        'concentration, jusqu''à 10 minutes',
        'Vous invoquez une lame enflammée dans votre main libre. Au niveau de la taille et de la forme, elle ressemble à un cimeterre et persiste pendant toute la durée du sort. Si vous la lâchez, elle disparaît, mais vous pouvez l''invoquer de nouveau par une action bonus.' || E'\n' || 'Vous pouvez utiliser votre action pour faire une attaque de sort au corps à corps avec la lame enflammée. Si vous touchez la cible, cette dernière subit 3d6 dégâts de feu.' || E'\n' || 'La lame enflammée émet une vive lumière dans un rayon de 3 mètres et une faible lumière dans un rayon de 3 mètres de plus.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 4 ou plus, les dégâts augmentent de 1d6 tous les deux niveaux au-delà du 2e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/flame_blade_spell_baldursgate3_wiki_guide_150px.png'
    ),
    (
        'Passage sans trace',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
        '1 action',
        'personnelle',
        'V, S, M (cendres d''une feuille de gui et une brindille d''épicéa)',
        'concentration, jusqu''à 1 heure',
        'Une aura d''ombre et de silence émane de vous et enveloppe vos compagnons, vous dissimulant aux sens d''autrui. Pendant toute la durée du sort, chaque créature que vous choisissez et qui se trouve dans un rayon de 9 mètres (vous y compris) bénéficie d''un bonus de +10 aux tests de Dextérité (Discrétion) et il devient impossible de suivre sa piste à moins de recourir à des méthodes magiques. Une créature qui profite de ce bonus ne laisse aucune trace ni autre indice de son passage derrière elle.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/pass_without_trace_spell_baldursgate3_wiki_guide_150px_.png'
    ),
    (
        'Peau d''écorce',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
        '1 action',
        'contact',
        'V, S, M (une poignée d''écorce de chêne)',
        'concentration, jusqu''à 1 heure',
        'Vous touchez une créature consentante. Pendant toute la durée du sort, sa peau prend la consistance et l''apparence de l''écorce, et sa CA ne peut pas descendre au-dessous de 16, quelle que soit l''armure qu''elle porte.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/barkskin_spell_baldursgate3_wiki_guide_35px.png'
    ),
    (
        'Sens animal',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
        '1 action',
        'contact',
        'S',
        'concentration, jusqu''à 1 heure',
        'Vous touchez un animal consentant. Pendant toute la durée du sort, vous pouvez utiliser votre action pour voir par ses yeux et entendre par ses oreilles. Vous continuez de percevoir le monde ainsi jusqu''à ce que vous utilisiez votre action pour reprendre l''usage de vos propres sens. Tant que vous utilisez les sens de la créature, vous bénéficiez de ses éventuels sens spéciaux, mais vous êtes sourd et aveugle à tout ce qui se passe autour de vous.',
        NULL
    ),
    (
        'Sphère de feu',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 action',
        '18 mètres',
        'V, S, M (un bout de suif, une pincée de soufre et un peu de poudre de fer)',
        'concentration, jusqu''à 1 minute',
        'Une sphère de feu de 1,50 mètre de diamètre apparaît dans un espace inoccupé de votre choix situé à portée et subsiste pendant toute la durée du sort. Chaque créature qui termine son tour dans un rayon de 1,50 mètre autour de la sphère doit faire un jet de sauvegarde de Dextérité. Celles qui échouent subissent 2d6 dégâts de feu, les autres la moitié seulement.' || E'\n' || 'Vous pouvez déplacer la sphère sur un maximum de 9 mètres par une action bonus. Si vous lui faites heurter une créature, cette dernière doit réussir un jet de sauvegarde contre les dégâts de la sphère qui arrête de se déplacer pour ce tour.' || E'\n' || 'Quand vous déplacez la sphère, vous pouvez lui faire franchir des obstacles de 1,50 mètre de haut et la faire sauter par-dessus des fosses de 3 mètres de large. Elle embrase les objets inflammables qui ne sont ni portés ni transportés. Elle émet une vive lumière dans un rayon de 6 mètres et une faible lu�ière dans un rayon de 6 mètres de plus.' || E'\n' || '**A plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 3 ou plus, les dégâts augmentent de 1d6 par niveau au-delà du 2e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/flaming_sphere_spell_baldursgate3_wiki_guide_150px.png'
    );