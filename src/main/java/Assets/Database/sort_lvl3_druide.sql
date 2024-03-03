INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Appel de la foudre',
        3,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 action',
        '36 mètres',
        'V, S',
        'concentration, jusqu''à 10 minutes',
        'Un nuage orageux apparaît sous forme d''un cylindre de 3 mètres de haut pour 18 mètres de rayon, centré sur un point situé dans votre champ de vision et à 30 mètres directement au-dessus de vous. Le sort échoue si vous ne pouvez voir le point situé à cette hauteur, là où le nuage doit se former (si vous vous trouvez dans une pièce trop petite pour accueillir le nuage par exemple).' || E'\n' || 'Quand vous lancez le sort, vous devez choisir un point situé à portée et dans votre champ de vision. Un éclair jaillit du nuage et vient frapper ce point. Chaque créature située dans un rayon de 1,50 mètre autour de ce point doit faire un jet de sauvegarde de Dextérité. Celles qui échouent subissent 3d10 dégâts de foudre, les autres la moitié seulement. À chacun de vos tours jusqu''à la fin du sort, vous pouvez dépenser votre action pour appeler ainsi la foudre, en visant le même point ou un autre.' || E'\n' || 'Si, au moment de l''incantation, vous vous trouvez en extérieur et que les conditions sont déjà orageuses, le sort vous donne le contrôle de l''orage déjà présent au lieu d''en créer un nouveau. Dans ce cas, les dégâts du sort augmentent de 1d10.' || E'\n' || '**À plus haut niveau:** Si vous lancez ce sort en utilisant un emplacement de niveau 4 ou plus, les dégâts augmentent de 1d10 par niveau au-delà du 3e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/call_lightning_icon_baldurs_gate_3_wiki_guide_64px.png'
    ),
    (
        'Invoquer des animaux',
        3,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 action',
        '18 mètres',
        'V, S',
        'concentration, jusqu''à 1 heure',
        'Vous invoquez des esprits féeriques qui prennent la forme d''animaux et apparaissent dans des cases inoccupées situées à portée et dans votre champ de vision. Choisissez l''une des options suivantes pour déterminer quelles créatures apparaissent.' || E'\n' || '* Une bête d''une dangerosité de 2 ou moins.' || E'\n' || '* Deux bêtes d''une dangerosité de 1 ou moins.' || E'\n' || '* Quatre bêtes d''une dangerosité de 1/2 ou moins.' || E'\n' || '* Huit bêtes d''une dangerosité de 1/4 ou moins.' || E'\n' || 'Chacune de ces bêtes est aussi considérée comme une fée et disparaît dès qu''elle tombe à 0 point de vie ou quand le sort se termine.' || E'\n' || 'Les créatures invoquées se montrent amicales envers vous et vos compagnons. Lancez l''initiative pour les créatures invoquées en tant que groupe qui dispose de ses propres tours de jeu. Les animaux obéissent aux ordres verbaux que vous leur donnez (sans que cela vous demande d''utiliser une action). En l''absence d''ordre, ils se défendent contre les créatures hostiles, mais n''entreprennent pas d''autre action.' || E'\n' || 'C''est le MD qui dispose des statistiques des créatures.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant certains emplacements de niveau supérieur, vous choisissez l''une des options d''invocation décrites précédemment et faites apparaître plus de créatures : deux fois plus pour un emplacement de niveau 5, trois fois plus pour un emplacement de niveau 7 et quatre fois plus pour un emplacement de niveau 9.',
        NULL
    ),
    (
        'Mur de vent',
        3,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
        '1 action',
        '36 mètres',
        'V, S, M (un petit éventail et une plume exotique)',
        'concentration, jusqu''à 1 minute',
        'Un mur de vent fort se lève soudain depuis le sol en un point de votre choix à portée. Vous pouvez lui faire couvrir jusqu''à 15 mètres de long, 4,50 mètres de haut et 30 centimètres d''épaisseur. Vous pouvez lui donner la forme que vous voulez tant qu''il dessine un chemin continu au sol. Ce mur persiste pendant toute la durée du sort.' || E'\n' || 'Quand le mur apparaît, chaque créature située dans sa zone doit faire unjet de sauvegarde de Force. Les créatures qui échouent subissent 3d8 dégâts contondants, les autres la moitié seulement.' || E'\n' || 'Le vent fort maintient la brume, la fumée et les autres gaz à l''écart. Les créatures et objets volants de taille Petite ou inférieure ne peuvent pas traverser le mur. Les matériaux libres et légers s''envolent si on les apporte dans le mur. Les flèches, les carreaux et autres projectiles ordinaires visant une cible située derrière le mur sont systématiquement détournés vers le haut et ratent automatiquement leur cible. (Ce phénomène n''affecte pas les rochers que lancent les géants ou les engins de siège, ni les projectiles similaires.) Les créatures sous forme gazeuse ne peuvent pas franchir le mur.',
        NULL
    );
