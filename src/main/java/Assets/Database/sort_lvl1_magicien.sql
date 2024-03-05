INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Appel de familier',
        1,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 heure',
        '3 mètres',
        'V, S, M (10 po de charbon, d''encens et d''herbes à faire brûler dans un brasero en laiton)',
        'instantanée',
        'Vous vous attachez les services d''un familier, un esprit qui prend la forme d''un animal de votre choix : une chauve-souris, un chat, un crabe, une grenouille (ou un crapaud), un faucon, un lézard, une pieuvre, une chouette, un serpent venimeux, un poisson (un piranha), un rat, un corbeau, un hippocampe, une araignée ou une belette. Le familier apparaît dans un emplacement inoccupé à portée et possède les mêmes statistiques que l''animal dont il revêt la forme, bien qu''il soit un céleste, une fée ou un fiélon (à vous de choisir) au lieu d''une bête.' || E'\n' || 'Votre familier agit indépendamment de vous, mais il obéit toujours à vos ordres. Lors d''un combat, il lance son propre dé d''initiative et agit à son tour. Il ne peut pas attaquer, mais il peut effectuer d''autres actions normalement.' || E'\n' || 'Quand le familier tombe à 0 point de vie, il disparaît sans laisser de cadavre derrière lui. Il réapparaît si vous lancez de nouveau ce sort.' || E'\n' || 'Vous pouvez communiquer par télépathie avec votre familier tant qu''il se trouve dans un rayon de 30 mètres autour de vous. De plus, vous pouvez dépenser votre action pour percevoir le monde par les yeux et les oreilles de votre familier jusqu''au début de votre prochain tour. Vous bénéficiez aussi de tout sens spécial que possède votre familier. Pendant ce temps, vos yeux et vos oreilles ne fonctionnent plus.' || E'\n' || 'Vous pouvez renvoyer temporairement votre familier par une action. Il gagne alors une poche dimensionnelle où il attend que vous le rappeliez. Vous pouvez aussi le renvoyer définitivement. Vous pouvez utiliser une action alors qu''il est temporairement renvoyé pour le faire réapparaitre dans un emplacement inoccupé situé dans un rayon de 9 mètres autour de vous.' || E'\n' || 'Vous ne pouvez avoir qu''un familier à la fois. Si vous lancez ce sort alors que vous avez déjà un familier, vous attribuez simplement une nouvelle forme à celui que vous possédez déjà choisissez une des formes de la liste précédente, que votre familier adopte de suite.' || E'\n' || 'Enfin, quand vous lancez un sort avec une portée de « contact » votre familier peut délivrer le sort comme si c''était lui qui le lançait. Il doit se trouver à 30 mètres de vous ou moins et utiliser sa réaction pour transmettre le sort au moment où vous le lancez. Si le sort exige un jet d''attaque, vous utilisez votre propre modificateur d''attaque lors du jet.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/find_familiar_spell_baldursgate3_wiki_guide_150px_2.png'
    ),
    (
        'Disque flottant de Tenser',
        1,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 action',
        '3 mètres',
        'V, S, M (une goutte de mercure)',
        '1 heure',
        'Ce sort crée un plan de force circulaire horizontal d''un mètre de diamètre pour 2,5 centimètres d''épaisseur. Il flotte à un mètre du sol dans un espace inoccupé de votre choix situé à portée et dans votre champ de vision. Le disque persiste pendant toute la durée du sort et peut accueillir jusqu''à 250 kilos. Si on pose plus de poids dessus, le sort se termine et tout ce qui se trouvait sur le disque tombe à terre.' || E'\n' || 'Le disque reste immobile tant que vous vous tenez dans un rayon de 6 mètres. Si vous vous en éloignez plus que cela, il vous suit de manière à rester dans les 6 mètres autour de vous. Il peut se déplacer sur un terrain irrégulier, monter ou descendre des escaliers, des pentes, etc. Mais il ne peut pas franchir une différence de niveau de trois mètres ou plus.' || E'\n' || 'Par exemple, il ne peut pas passer au-dessus d''une fosse de 3 mètres de profondeur ni la quitter s''il a été formé au fond.' || E'\n' || 'Si vous vous éloignez à plus de 30 mètres du disque (typiquement parce qu''il ne peut pas contourner un obstacle pour vous suivre), le sort se termine.',
        NULL
    ),
    (
        'Graisse',
        1,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 action',
        '18 mètres',
        'V, S, M (de la couenne de porc ou du beurre)',
        '1 minute',
        'Une couche de graisse particulièrement glissante recouvre le sol dans une zone de 3 mètres de côté centrée sur un point situé à portée et le change en terrain difficile pour toute la durée du sort.' || E'\n' || 'Lorsque la graisse apparaît, chaque créature se trouvant dans la zone affectée doit réussir un jet de sauvegarde de Dextérité ou tomber à terre. Une créature qui entre dans la zone ou y termine son tour doit aussi réussir ce jet sous peine de se retrouver à terre.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/grease_spell_baldursgate3_wiki_guide_150px_2.png'
    );