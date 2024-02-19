INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Aura sacrée',
        8,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '1 action',
        'personnelle',
        'V, S, M (un petit reliquaire d''une valeur minimum de 1 000 po contenant une relique sacrée, comme un bout de la robe d''un saint ou un morceau de parchemin prélevé sur un texte sacré)',
        'concentration,jusqu''à 1 minute',
        'Une lumière divine émane de votre personne et forme un doux halo qui vous enveloppe dans un rayon de 9 mètres. Les créatures de votre choix se trouvant dans ce rayon au moment où vous lancez ce sort émettent une faible lumière dans un rayon de 1,50 mètre. De plus, jusqu''à la fin du sort, elles sont avantagées lors des jets de sauvegarde tandis que les autres créatures sont désavantagées quand elles effectuent un jet d''attaque contre elles. Quand un fiélon ou un mort-vivant touche une créature affectée avec une attaque au corps à corps, l''aura qui enveloppe la créature flamboie soudain. L''assaillant doit réussir un jet de sauvegarde de Constitution ou se retrouver aveugle jusqu''à la fin du sort.',
        NULL
    ),
    (
        'Champ antimagie',
        8,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '1 action',
        'personnelle (sphère de 3 mètres de rayon)',
        'V, S,M (une pincée de poudre de fer ou de limaille)',
        'concentration, jusqu''à 1 heure',
        'Une sphère d''antimagie invisible de 3 mètres de rayon vous entoure. La zone qu''elle englobe est coupée de l''énergie magique qui imprègne le multivers. En son sein, il est impossible de lancer un sort, les créatures invoquées disparaissent et même les objets magiques deviennent ordinaires. La sphère reste centrée sur vous et se déplace avec vous jusqu''à la fin du sort.' || E'\n' || 'Les sorts et autres effets magiques, en dehors de ceux émanant d''un artefact ou d''une divinité, sont supprimés au sein de la sphère et ne peuvent pénétrer dans son espace. Un emplacement dépensé pour lancer un sort ainsi supprimé est tout de même consommé. L''effet ne fonctionne pas tant qu''il est supprimé, mais le temps passé sous suppression est tout de même décompté de sa durée d''efficacité.' || E'\n' || '**Effets visant une cible** Les sorts et autres effets magiques visant une créature ou un objet situé dans la sphère, comme _projectile magique_ ou _charme-personne_, n''ont aucun effet sur cette cible.' || E'\n' || '**Zones de magie**: L''aire d''un sort ou d''un effet magique, comme celle d''une _boule de feu_, ne peut pas s''étendre au sein de la sphère. Si la sphère recouvre une zone de magie existante, l''effet de cette dernière est supprimé dans la partie recouverte par la sphère. Par exemple, les flammes d''un _mur de feu_ sont supprimées au sein de la sphère, créant un trou dans le mur si la partie recouverte est assez grande.' || E'\n' || '**Sort**: Tout sort ou effet magique actif sur une créature ou un objet est supprimé dès qu''elle ou il se trouve à l''intérieur et pendant tout le temps qu''elle ou il y reste.' || E'\n' || '**Objets magiques**: Les propriétés et les pouvoirs d''un objet magique sont supprimés une fois au sein de la sphère. Par exemple, une épée longue +1 située dans la sphère fonctionne comme une épée longue ordinaire.' || E'\n' || 'Les propriétés et les pouvoirs d''une arme magique sont supprimés si son utilisateur la manie contre une cible située dans la sphère ou s''il se trouve dans la sphère. Si une arme ou une munition magique quitte entièrement la sphère (par exemple si vous tirez une flèche magique ou projetez une lance magique en dehors de la sphère), la suppression de magie cesse d''affecter l''objet dès qu''il quitte la sphère.' || E'\n' || '**Déplacement magique**: La téléportation et les voyages planaires échouent systématiquement au sein de la sphère, que cette dernière serve de destination ou de point de départ à ce type de déplacement. Un portail menant en un autre lieu, sur un autre monde ou sur un autre plan d''existence se ferme temporairement tant qu''il est englobé dans la sphère, de même que l''ouverture sur un espace extradimensionnel telle celle créée par le sort _corde enchantée_.' || E'\n' || '**Créatures et objets**: Une créature ou un objet invoqués ou créés par magie disparaissent temporairement si la sphère les recouvre. Ils réapparaissent instantanément dès que l''espace qu''ils occupent ne se trouve plus au sein de la sphère.' || E'\n' || '**Dissipation de la magie**: Les sorts et les effets magiques comme _dissipation de la magie_ n''ont aucun effet sur la sphère. De même, les sphères issues de divers sorts de champ antimagie ne s''annulent pas les unes les autres.',
        NULL
    ),
    (
        'Contrôle du climat',
        8,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '10 minutes',
        'personnelle (rayon de 7,5 kilomètres)',
        'V, S, M (encens incandescent et un peu de bois et de terre mélangés dans de l''eau)',
        'concentration, jusqu''à 8 heure',
        'Vous prenez le contrôle de la météo dans un rayon de 7,5 kilomètres autour de vous pendant toute la durée du sort. Vous devez être en extérieur au moment de l''incantation. Si vous vous rendez dans un endroit d''où vous ne voyez pas directement le ciel, le sort se termine prématurément.' || E'\n' || 'Au moment de l''incantation, vous changez les conditions météorologiques actuelles déterminées par le MD en fonction du climat et de la saison. Vous pouvez modifier les précipitations, la température et le vent. Il faut ld4 x 10 minutes pour que les nouvelles conditions s''installent. Vous pouvez ensuite les modifier à nouveau. Le temps retourne progressivement à la normale une fois le sort terminé.' || E'\n' || 'Quand vous modifiez les conditions météorologiques, cherchez les conditions actuelles dans les tables suivantes vous pouvez les décaler d''un cran vers le haut ou le bas. Quand vous modifiez le vent, vous pouvez changer sa direction.' || E'\n' || '**PRÉCIPITATIONS**' || E'\n' || '**Etape - Condition**' || E'\n' || '1 - Ciel dégagé' || E'\n' || '2 - Quelques nuages' || E'\n' || '3 - Ciel couvert ou brume au sol' || E'\n' || '4 - Pluie, grêle ou neige' || E'\n' || '5 - Pluies torrentielles, forte grêle ou blizzard' || E'\n' || '**TEMPÉRATURE**' || E'\n' || '**Etape - Condition**' || E'\n' || '1 - Chaleur insoutenable' || E'\n' || '2 - Forte chaleur' || E'\n' || '3 - Tiède' || E'\n' || '4 - Frais' || E'\n' || '5 - Grand froid' || E'\n' || '6 - Froid polaire' || E'\n' || '**VENT**' || E'\n' || '**Etape - Condition**' || E'\n' || '1 - Temps calme' || E'\n' || '2 - Vent modéré' || E'\n' || '3 - Vent fort' || E'\n' || '4 - Grand vent' || E'\n' || '5 - Tempête',
        NULL
    );
