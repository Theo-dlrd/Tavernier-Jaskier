INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Assassin imaginaire',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Illusion'),
        '1 action',
        '36 mètres',
        'V, S',
        'concentration, jusqu''à 1 minute',
        'Vous puisez dans les cauchemars d''une créature située à portée dans votre champ de vision pour créer une manifestation illusoire de ses pires terreurs, qu''elle sera la seule à voir. La cible doit faire un jet de sauvegarde de Sagesse. Si elle le rate, elle est terrorisée pendant toute la durée du sort. Tant que le sort n''est pas terminé, la cible doit faire un jet de sauvegarde de Sagesse à la fin de chacun de ses tours. Elle subit 4d10 dégâts psychiques à chaque échec. Le sort se termine dès qu''elle réussit un jet de sauvegarde.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 5 ou plus, les dégâts augmentent de 1d10 par niveau au-delà du 4e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/phantasmalkiller-spell-bg3-wiki-guide-64px.png'
    ),
    (
        'Bouclier de feu',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '1 action bonus',
        '18 mètres',
        'V, S, M (un petit parchemin avec un extrait de texte sacré)',
        'concentration, jusqu''à 10 minutes',
        'Un champ scintillant apparaît autour d''une créature de votre choix située à portée et lui donne un bonus de +2 à la CA pendant toute la durée du sort.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/fireshield-spell-bg3-wiki-guide-64px.png'
    ),
    (
        'Chien de garde de Mordenkainen',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 action',
        '9 mètres',
        'V,S, M (un petit sifflet en argent, un éclat d''os et une ficelle)',
        '8 heures',
        'Vous invoquez un chien de garde fantomatique dans un emplacement inoccupé situé à portée et dans votre champ de vision. Il reste là pendant toute la durée du sort ou jusqu''à ce que vous le renvoyiez par une action ou que vous vous éloigniez à plus de 30 mètres de lui.' || E'\n' || 'Le chien est invisible pour tout le monde sauf pour vous et il est impossible de le blesser. Il se met à aboyer dès qu''une créature de taille Petite ou supérieure arrive à 9 mètres de lui sans prononcer d''abord le mot de passe que vous avez choisi lors de l''incantation. Le chien perçoit les créatures invisibles et voit ce qui se passe sur le plan éthéré. Il ignore les illusions.' || E'\n' || 'Au début de votre tour, le chien tente de mordre une créature qui vous est hostile et située dans un rayon de 1,50 mètre autour de lui. Son bonus d''attaque est égal à votre modificateur de caractéristique d''incantation+ votre bonus de maîtrise. S''il touche, il inflige 4d8 dégâts perforants.',
        NULL
    ),
    (
        'Coffre secret de Léomund',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 action',
        'contact',
        'V, S, M (un superbe coffre de 90x60x60 centimètres, fait de matériaux rares d''une valeur minimale de 5 000 po et une réplique du coffre de taille Très Petite, faite des mêmes matériaux et valant au moins 50 po)',
        'instantanée',
        'Vous dissimulez un coffre et son contenu sur le plan éthéré. Pour cela, vous devez toucher le coffre et la réplique qui sert de composante matérielle au sort. Le coffre peut contenir un maximum de 324 décimètres cubes (90x60x60 centimètres) de matière non vivante.' || E'\n' || 'Tant que le coffre reste sur le plan éthéré, vous pouvez utiliser une action pour toucher la réplique et le rappeler à vous. Il apparaît en un emplacement libre au sol, situé dans un rayon de 1,50 mètre autour de vous. Vous pouvez renvoyer le coffre dans le plan éthéré en utilisant une action et en touchant le coffre et sa réplique.' || E'\n' || 'Au bout de 60 jours, il y a 5% de chances cumulatifs par jour que les effets du sort se terminent. Ils s''achèvent aussi si vous lancez de nouveau le sort, si la petite réplique du coffre est détruite ou si vous décidez de mettre un terme au sort par une action. Si le sort se termine alors que le grand coffre est encore sur le plan éthéré, ce coffre est irrémédiablement perdu.',
        NULL
    ),
    (
        'Fabrication',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '10 minutes',
        '36 mètres',
        'V, S',
        'instantanée',
        'Vous convertissez des matériaux bruts en produits finis faits de la même matière. Par exemple, vous pouvez fabriquer un pont de bois à partir de souches d''arbres, une corde à base d''un tas de chanvre, et des habits à partir de lin ou de laine.' || E'\n' || 'Choisissez des matériaux bruts situés à portée et dans votre champ de vision. Vous pouvez fabriquer un objet de taille Grande ou inférieure (contenu dans un cube de 3 mètres de côté ou dans huit cubes reliés de 1,50 mètre de côté) à condition d''avoir assez de matière première. Toutefois, si vous travaillez avec du métal, de la pierre ou une autre substance minérale, l''objet fabriqué ne doit pas dépasser la taille Moyenne (donc tenir dans un cube de 1,50 mètre de côté). La qualité de l''objet fabriqué dépend de celle des matières premières.' || E'\n' || 'Il est impossible de créer ou de transmuter des créatures ou des objets magiques à l''aide de ce sort. Vous ne pouvez pas non plus y recourir pour fabriquer des objets demandant un haut degré d''expertise, comme des bijoux, des armes, du verre ou une armure, à moins que vous ne soyez formé à l''utilisation des outils d''artisanat nécessaires à l''élaboration de tels objets.',
        NULL
    ),
    (
        'oeil magique',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Divination'),
        '1 action',
        '9 mètres',
        'V, S, M (des poils de chauve-souris)',
        'concentration, jusqu''à 1 heure',
        'Vous créez un œil magique invisible à portée qui flotte dans les airs pendant toute la durée du sort.' || E'\n' || 'Il vous envoie mentalement des informations visuelles grâce à sa vision normale et dans le noir dans un rayon de 9 mètres. Il peut regarder dans toutes les directions.' || E'\n' || 'Par une action, vous pouvez déplacer l''œil d''un maximum de 9 mètres dans la direction de votre choix. Il peut s''éloigner de vous sur une distance illimitée, mais il ne peut pas entrer dans un autre plan d''existence. Une barrière solide l''empêche de passer, mais il peut se glisser à travers une ouverture d''au minimum 2,5 centimètres de diamètre.',
        NULL
    ),
    (
        'Sanctuaire privé de Mordenkainen',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '10 minutes',
        '36 mètres',
        'V, S, M (une mince couche de plomb, un morceau de verre opaque, un bout de coton ou de tissu et de la chrysolite en poudre)',
        '24 heures',
        'Vous sécurisez par magie une zone à portée. Il s''agit d''un cube d''au minimum 1,50 mètre d''arête et d''au maximum 30 mètres d''arête. Le sort persiste pendant toute sa durée ou jusqu''à ce que vous utilisiez une action pour le révoquer.' || E'\n' || 'Vous décidez de la sécurité offerte par le sort au moment de l''incantation en choisissant une ou plusieurs propriétés parmi les suivantes.' || E'\n' || '* Les sons ne peuvent pas franchir la barrière qui délimite la zone protégée.' || E'\n' || '* La barrière délimitant la zone protégée est sombre et brumeuse, ce qui empêche de voir au travers (même avec la vision dans le noir).' || E'\n' || '* Les organes sensoriels créés via un sort de divination ne peuvent pas apparaître au sein de la zone protégée ni traverser la barrière qui délimite son périmètre.' || E'\n' || '* Les sorts de divination ne peuvent pas prendre les créatures de la zone pour cible.' || E'\n' || '* Rien ne peut se téléporter à l''intérieur ou à l''extérieur de la zone protégée.' || E'\n' || 'Les voyages planaires sont bloqués au sein de la zone protégée.' || E'\n' || 'Si on lance ce sort tous les jours au même endroit pendant un an, ses effets deviennent permanents.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 5 ou plus, vous pouvez augmenter la taille du cube de 30 mètres par niveau au-delà du 4e. Ainsi, avec un emplacement de niveau 5, vous pouvez protéger une zone de 60 mètres de côté.',
        NULL
    ),
    (
        'Sphère résiliente d''Otiluke',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        '9 mètres',
        'V, S, M (un bout de cristal transparent hémisphérique et son équivalent en gomme arabique)',
        'concentration, jusqu''à 1 minute',
        'Une sphère de force scintillante englobe une créature ou un objet de taille Grande ou inférieure situés à portée. Si la cible n''est pas consentante, elle a droit à un jet de sauvegarde de Dextérité. Si elle le rate, elle est enfermée dans la sphère pour toute la durée du sort.' || E'\n' || 'Rien ne peut franchir la barrière que forme la sphère ni les objets physiques, ni l''énergie, ni les effets des autres sorts. En revanche, une créature qui se trouve au sein de la sphère y respire sans mal. La sphère est immunisée contre tous les types de dégâts. De plus, les attaques et les effets originaires de l''extérieur de la sphère ne peuvent pas blesser la créature ou l''objet qu''elle abrite; de même, une créature au sein de la sphère est incapable d''endommager ce qui se trouve à l''extérieur.' || E'\n' || 'La sphère ne pèse rien et elle est tout juste assez grande pour contenir la créature ou l''objet qu''elle renferme. Une créature enfermée dans la sphère peut utiliser son action pour exercer une poussée sur la paroi de la sphère et la faire rouler à la moitié de sa vitesse habituelle. De même, une tierce personne peut ramasser la sphère ou la déplacer.' || E'\n' || 'Un sort de _désintégration_ visant la sphère la détruit sans endommager ce qu''elle contient.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/otilukes-resilient-sphere-spells-bg3-wiki-guide-min.png'
    ),
    (
        'Tentacules noirs d''Evard',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 action',
        '27 mètres',
        'V, S,M (un bout de tentacule appartenant à une pieuvre ou un calmar géant)',
        'concentration, jusqu''à 1 minute',
        'Des tentacules noirs grouillants envahissent le sol d''un emplacement de 6 mètres de côté situé à portée et dans votre champ de vision. Pendant toute la durée du sort,ils transforment la zone en terrain difficile.' || E'\n' || 'Quand une créature pénètre dans la zone affectée pour la première fois au cours d''un tour, ou quand elle débute son tour dans cette zone, elle doi� réussir un jet de sauvegarde de Dextérité, sans quoi elle reçoit 3d6 dégâts contondants et se retrouve entravée par les tentacules jusqu''à la fin du sort. Une créature qui commence son tour déjà entravée dans la zone subit 3d6 dégâts contondants.' || E'\n' || 'Une créature entravée par les tentacules peut utiliser son action pour faire un test de Force ou de Dextérité (à elle de choisir) contre le DD de sauvegarde de votre sort. Si elle le réussit, elle parvient à se libérer.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/evardsblacktentacles-spell-bg3-wiki-guide-64px.png'
    );




