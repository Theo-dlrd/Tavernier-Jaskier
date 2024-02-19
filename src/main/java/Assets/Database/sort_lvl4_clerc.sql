INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Contrôle de l''eau',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action',
        '90 mètres',
        'V, S, M (une goutte d''eau et une pincée de poussière)',
        'concentration, jusqu''à 10 minutes',
        'Jusqu''à la fin du sort, vous contrôlez toute étendue d''eau indépendante située dans la zone de votre choix, cette dernière devant tenir dans un cube d''au maximum 30 mètres d''arête. Quand vous lancez ce sort, vous pouvez choisir l''un des effets suivants. À votre tour, vous pouvez utiliser une action pour répéter l''effet ou en appliquer un nouveau.' || E'\n' || '**Inondation**: Vous faites monter le niveau d''une étendue d''eau isolée d''un maximum de 6 mètres. Si la zone comprend une rive, l''eau déborde et se répand sur la terre ferme.' || E'\n' || 'Si vous avez lancé le sort sur une grande étendue d''eau, vous créez une vague de 6 mètres de haut qui traverse la zone affectée d''un bout à l''autre pour se briser une fois arrivée à la fin de la zone. Tous les véhicules de taille Très Grande ou inférieure qui se trouvent sur le chemin de la vague sont emportés jusqu''au bout de la zone. Tous ces véhicules ont 25% de chances de chavirer.' || E'\n' || 'Le niveau de l''eau reste plus élevé jusqu''à la fin du sort ou jusqu''à ce que vous choisissiez un autre effet. Si l''effet d''inondation produit une vague, elle se reforme au début de votre prochain tour tant que vous gardez cet effet actif.' || E'\n' || '**Écarter les eaux**: Vous écartez les eaux de la zone pour y créer un passage. Il traverse toute la zone, les eaux formant une muraille de chaque côté. Le passage demeure jusqu''à la fin du sort ou jusqu''à ce que vous optiezpour un effet différent. Dans ces deux cas, l''eau remplit alors progressivement le passage, au fil du round suivant, jusqu''à ce que le niveau de l''eau revienne à la normale.' || E'\n' || '**Modifier le cours de l''eau**: Vous changez l''itinéraire de l''eau courante qui traverse la zone et l''envoyez dans la direction de votre choix, même si elle doit pour cela franchir des obstacles comme passer par-dessus un mur ou couler dans une direction improbable. L''eau suit vos instructions dans la zone affectée, mais dès qu''elle en sort, elle reprend un cours normal défini par le terrain qu''elle parcourt. L''eau continue de couler là où vous l''avez choisi jusqu''à la fin du sort oujusqu''à ce que vous décidiez d''un autre effet.' || E'\n' || '**Tourbillon**: Cet effet nécessite une étendue d''eau d''au moins 15 mètres carrés pour 7,50 mètres de fond et se traduit par la formation d''un tourbillon au centre de la zone. Il se présente sous forme d''un vortex de 1,50 mètre de large à sa base pour un maximum de 15 mètres de large au sommet et une hauteur de 7,50 mètres. Toutes les créatures et tous les objets qui se trouvent dans l''eau et dans un rayon de 7,50 mètres autour du tourbillon sont entraînés vers lui sur 3 mètres. Une créature peut s''éloigner à la nage si elle réussit un test de Force (Athlétisme) contre le DD du jet de sauvegarde de votre sort.' || E'\n' || 'Quand une créature entre dans le vortex pour la première fois de son tour ou qu''elle y commence son tour, elle doit faire un jet de sauvegarde de Force. Si elle échoue, elle reçoit 2d8 dégâts contondants et se fait emporter par le vortex jusqu''à la fin du sort. Si elle réussit son jet, elle subit seulement la moitié des dégâts et n''est pas prise dans le vortex. Une créature emportée par le vortex peut utiliser une action pour tenter de s''en éloigner comme décrit plus haut, mais elle est désavantagée lors de son test de Force (Athlétisme). À chaque tour, la première fois qu''un objet entre dans le vortex, il subit 2d8 dégâts contondants. Ces dégâts se répètent à chaque round passé dans le vortex.',
        NULL
    ),
    (
        'Divination',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action',
        'personnelle',
        'V, S, M (de l''encens et une offrande sacrificielle adaptée à votre religion, l''ensemble valant au moins 25 po, et que le sort consume)',
        'instantanée',
        'Grâce à votre magie et à une offrande, vous entrez en contact avec un dieu ou l''un de ses serviteurs. Vous lui posez une unique question à propos d''un objectif, d''un événement ou d''une activité qui doit se dérouler dans les sept jours à venir. Le MD vous donne une réponse sincère, pouvant être une courte phrase, des vers cryptiques ou un présage.' || E'\n' || 'Le sort ne tient pas compte d''une éventuelle modification des circonstances susceptible de bouleverser l''issue des événements, comme l''incantation de sorts supplémentaires ou la perte ou l''arrivée d''un compagnon.' || E'\n' || 'Si vous lancez ce sort à deux reprises ou plus avant un long repos, il y a 25% de chances par incantation en sus de la première que vous obteniez une prémonition aléatoire au lieu d''une prémonition fiable. C''est au MD de faire ce jet en secret.',
        NULL
    ),
    (
        'Façonnage de la pierre',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action',
        'contact',
        'V, S, M (argile molle, à façonner pour lui donner approximativement la forme de l''objet de pierre désiré)',
        'instantanée',
        'Vous touchez un objet de pierre de taille Moyenne ou inférieure ou une section de pierre d''un maximum de 1,50 mètre dans toutes les dimensions et lui donnez la forme que vous désirez. Vous pouvez, par exemple, façonner un gros caillou de manière à en faire une arme, une idole ou un coffre, ou bien creuser un étroit passage dans un mur, à condition que ce dernier ne fasse pas plus de 1,50 mètre d''épaisseur. Vous pouvez façonner une porte de pierre ou son chambranle pour la sceller. L''objet créé peut avoir au maximum deux charnières et un loquet, mais il est impossible de créer des mécanismes plus complexes.',
        NULL
    );