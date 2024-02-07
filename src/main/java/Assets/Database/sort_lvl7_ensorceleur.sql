INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Boule de feu à explosion retardée',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '45 mètres',
    'V, S, M (une petite boule de guano de chauve- souris et du soufre)',
    'concentration, jusqu''à 1 minute',
    'Un rayon de lumière jaune jaillit de votre doigt tendu et se condense pour former une bille luisante en un point de votre choix situé à portée pendant toute la durée du sort. Quand le sort se termine, soit parce que votre concentration se brise, soit parce que vous y mettez volontairement un terme, la bille se dilate dans un grondement sourd et explose en une gerbe de feu qui s''étend en franchissant les angles éventuels. Toutes les créatures situées dans une sphère de 6 mètres de rayon centrée sur le point où se trouvait la bille doivent faire un jet de sauvegarde de Dextérité. Celles qui échouent reçoivent un montant de dégâts de feu égal au total de dégâts accumulés (voir plus loin), les autres reçoivent la moitié de ce montant seulement.' || E'\n' || 'De base, le sort inflige 12d6 dégâts de feu. À la fin de votre tour, si la bille n''a pas encore explosé, ces dégâts augmentent de 1d6.' || E'\n' || 'Si quelqu''un touche la bille avant la fin de l''intervalle, il doit faire un jet de sauvegarde de Dextérité. S''il échoue, le sort se termine immédiatement et la bille explose. S''il réussit, il peut lancer la bille à une distance maximale de 12 mètres. Si elle touche un objet solide ou une créature, le sort se termine et la bille explose.' || E'\n' || 'Les flammes endommagent les objets qui se trouvent dans la zone et embrasent les objets inflammables qui ne sont ni portés ni transportés.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 8 ou plus, les dégâts de base augmentent de 1d6 par niveau au-delà du 7e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/chromatic_orb_fire_spell_icon_baldurs_gate3_wiki_guide_64px.png'
),
(
    'Changement de plan',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    'contact',
    'V, S, M (un diapason de métal valant au moins 250 po, harmonisé avec un plan d''existence donné)',
    'instantanée',
    'Vous et un maximum de huit autres créatures consentantes vous donnez la main pour former un cercle et êtes transportés sur un autre plan d''existence. Vous pouvez spécifier une destination en termes génériques, comme la Cité d''airain sur le plan élémentaire du Feu ou le palais de Dispater dans la deuxième strate des Neuf Enfers. Vous apparaîtrez alors à cet endroit ou à proximité. Par exemple, si vous tentez d''atteindre la Cité d''airain, vous pouvez arriver dans sa rue de l''Acier, devant la Porte des cendres ou de l''autre côté de la mer de Feu d''où vous la contemplez. C''est au MD de décider.' || E'\n' || 'Sinon, si vous connaissez la séquence de glyphes magiques d''un cercle de téléportation présent sur un autre plan d''existence, ce sort peut vous conduire dans ce cercle. S''il est trop étroit pour accueillir toutes les créatures qui voyagent avec vous, les créatures en trop apparaissent dans les emplacements inoccupés les plus proches du cercle.' || E'\n' || 'Vous pouvez aussi utiliser ce sort pour bannir une créature non consentante sur un autre plan. Choisissez une créature à votre portée et faites une attaque de sort au corps à corps contre elle. Si vous touchez, elle doit faire un jet de sauvegarde de Charisme. Si elle le rate, elle est emportée en un endroit aléatoire du plan d''existence que vous nommez. Une fois là, c''est à elle de trouver un moyen de rentrer sur son plan natal.',
    NULL
),
(
    'Doigt de mort',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Nécromancie'),
    '1 action',
    '18 mètres',
    'V, S',
    'instantanée',
    'Vous envoyez de l''énergie négative dans le corps d''une créature située à portée dans votre champ de vision, ce qui lui inflige des douleurs déchirantes. La cible doit faire un jet de sauvegarde de Constitution. Si elle échoue, elle subit 7d8+30 dégâts nécrotiques, la moitié seulement si elle réussit.' || E'\n' || 'Si ce sort achève un humanoïde, ce dernier se relève au début de votre prochain tour sous forme de zombi à jamais sous votre contrôle. Il suit vos ordres verbaux au mieux de ses capacités.',
    NULL
),
(
    'Embruns prismatique',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    'personnelle (cône de 18 mètres)',
    'V, S',
    'instantanée',
    'Huit rayons de lumière multicolores jaillissent de votre main. Chacun a une couleur différente et possède des pouvoirs et objectifs distincts. Chaque créature présente dans un cône de 18 mètres doit faire un jet de sauvegarde de Dextérité. Lancez 1d8 par cible pour savoir quelle couleur l''affecte.' || E'\n' || '**1. Rouge**: La cible subit 10d6 dégâts de feu si elle rate son jet de sauvegarde, la moitié seulement si elle le réussit.' || E'\n' || '**2. Orange**: La cible subit 10d6 dégâts d''acide si elle rate son jet de sauvegarde, la moitié seulement si elle le réussit.' || E'\n' || '**3. Jaune**: La cible subit 10d6 dégâts de foudre si elle rate son jet de sauvegarde, la moitié seulement si elle le réussit.' || E'\n' || '**4. Vert**: La cible subit 1Od6 dégâts de poison si elle rate son jet de sauvegarde, la moitié seulement si elle le réussit.' || E'\n' || '**5. Bleu**: La cible subit 10d6 dégâcs de froid si elle rate son jet de sauvegarde, la moitié seulement si elle le réussit.' || E'\n' || '**6. Indigo**: Si la cible rate son jet de sauvegarde, elle est entravée et doit alors faire un jet de sauvegarde de Constitution à la fin de chacun de ses tours. Si elle en réussit trois, le sort se termine, si elle en rate trois, elle se change définitivement en pierre et elle est en proie à l''état pétrifié. Les succès et les échecs n''ont pas à être consécutifs : tenez le compte dans chaque catégorie jusqu''à ce que l''une d''elles arrive à trois.' || E'\n' || '**7. Violet**: La cible est aveugle si elle rate son jet de sauvegarde. Elle doit alors faire un jet de sauvegarde de Sagesse au début de votre prochain tour. Si elle le réussit, elle recouvre la vue ; si elle Je rate, elle est emportée sur un autre plan d''existence choisi par le MD et recouvre aussi la vue. (En général, une créature qui ne se trouve pas sur son propre plan d''existence est bannie là-bas tandis que les autres créatures sont envoyées sur le plan astral ou éthéré).' || E'\n' || '**8. Spécial**: Deux rayons viennent frapper la cible. Relancez deux fois le dé en le relançant chaque fois que vous sortez un 8.',
    NULL
),
(
    'Forme éthérée',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    'personnelle',
    'V, S',
    'jusqu''à 8 heure',
    'Vous pénétrez dans la région frontalière du plan éthéré, dans une zone où il chevauche votre plan actuel. Vous restez sur la Frontière éthérée pendant toute la durée du sort ou jusqu''à ce que vous utilisiez une action pour y mettre fin. Pendant cette période, vous pouvez vous déplacer dans n''importe quelle direction. Si vous optez pour un déplacement vers le haut ou le bas, le prix du mouvement est doublé, chaque mètre de déplacement vous coûtant un mètre supplémentaire. Vous voyez et entendez ce qui se passe sur le plan d''où vous venez, mais tout y est gris et vous ne voyez plus rien au-delà de 18 mètres.' || E'\n' || 'Une fois sur le plan éthéré, vous pouvez affecter uniquement des créatures situées sur ce plan et elles sont les seules à pouvoir vous affecter. Celles qui ne se trouvent pas sur ce plan ne vous perçoivent pas et sont incapables d''interagir avec vous, à moins qu''un pouvoir spécial ou magique ne le leur permette.' || E'\n' || 'Les objets et effets qui ne se trouvent pas sur le plan éthéré n''ont aucune incidence sur vous, ce qui vous permet de traverser des objets que vous apercevez sur le plan d''où vous venez.' || E'\n' || 'Quand le sort se termine, vous retournez immédiatement sur le plan d''où vous venez, à l''endroit que vous occupez actuellement. Si vous occupez le même emplacement qu''un objet solide ou une créature lorsque cela se produit, vous êtes immédiatement projeté dans l''espace inoccupé le plus proche susceptible de vous accueillir et subissez un montant de dégâts de force égal à 6,5 x le nombre de mètres sur lesquels vous avez été projeté.' || E'\n' || 'Ce sort n''a aucun effet si vous le lancez alors que vous vous trouvez sur le plan éthéré ou sur un plan non limitrophe, comme les plans extérieurs.' || E'\n'|| '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 8 ou plus, vous pouvez affecter jusqu''à trois créatures consentantes (vous y compris) par niveau au-delà du 7e. Toutes ces créatures doivent se trouver dans un rayon de 3 mètres autour de vous quand vous lancez le sort.',
    NULL
),
(
    'Inversion de la gravité',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    '30 mètres',
    'V, S, M (de la magnétite et de la limaille de fer)',
    'concentration, jusqu''à 1 minutes',
    'Ce sort inverse la gravité dans un cylindre de 15 mètres de rayon et 30 mètres de haut centré sur un point à portée. Toutes les créatures et tous les objets qui ne sont pas ancrés au sol, d''une manière ou d''une autre, tombent vers le haut jusqu''à atteindre le sommet de la zone affectée par le sort. Une créature peut faire un jet de sauvegarde de Dextérité pour s''accrocher à un objet fixe situé à sa portée, afin d''éviter la chute.' || E'\n' || 'Si un objet solide (comme un plafond) se trouve sur la trajectoire de la chute,les créatures et les objets le percutent comme lors d''une chute ordinaire vers le bas. Si un objet ou une créature atteint le sommet de la zone affectée sans heurter quoi que ce soit, il reste là, à osciller légèrement, pendant toute la durée du sort.' || E'\n' || 'Une fois la durée du sort écoulée, les objets et les créatures affectés retombent à terre.',
    NULL
),
(
    'Téléportation',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '3 mètres',
    'V',
    'instantanée',
    'Ce sort vous transporte instantanément à la destination de votre choix, ainsi qu''un maximum de huit créatures consentantes de votre choix situées à portée et dans votre champ de vision ou bien ainsi qu''un unique objet situé à portée et dans votre champ de vision. Si vous prenez un objet pour cible, il doit tenir dans un cube de 3 mètres de côté et il ne doit pas être porté ni transporté par une créature non consentante. Vous devez choisir une destination connue, située sur le même plan d''existence que vous. C''est votre degré de familiarité avec la destination qui détermine vos chances d''arriver sur place. Le MD lance 1d1O0 et consulte la table suivante.' || E'\n' || '**Familiarité = Incident / Zone similaire / A proximité / Sur place**' || E'\n' || 'Cercle permanent = - / - / - / 01-100' || E'\n' || 'Objet associé = - / - / - / 01-100' || E'\n' || 'Très familier = 01-05 / 06-13 / 14-24 / 25-100' || E'\n' || 'Vu à quelques reprises = 01-33 / 34-43 / 44-53 / 54-100' || E'\n' || 'Vu une seule fois = 01-43 / 44-53 / 54-73 / 74-100' || E'\n' || 'Description = 01-43 / 44-53 / 54-73 / 74-100' || E'\n' || 'Destination factice = 01-50 / 51-100 / - / - ' || E'\n' || '**Familiarité**: « Cercle permanent » désigne un cercle de téléportation dont vous connaissez la séquence de symboles. « Objet associé » indique que vous possédez un objet prélevé à la destination choisie au cours des six derniers mois, comme un livre sorti de l''étagère de la bibliothèque d''un magicien, les draps d''une suite royale ou un éclat de marbre arraché au tombeau secret d''une liche.' || E'\n' || '« Très familier » désigne un endroit où vous vous êtes souvent rendu, un lieu que vous avez soigneusement étudié ou un endroit que vous voyez au moment de l''incantation. « Vu à quelques reprises » correspond aux endroits que vous avez vus plus d''une fois, mais avec lesquels vous n''êtes pourtant pas très familier. « Vu une fois » représente un lieu vu une seule fois, éventuellement par magie. « Description » correspond à un endroit que vous connaissez seulement via la description d''autrui, aussi bien au niveau de son emplacement que de son apparence, éventuellement grâce à une carte.' || E'\n' || '« Destination factice » désigne les endroits qui n''existent pas, si par exemple vous avez tenté de scruter le sanctuaire d''un ennemi mais n''avez vu qu''une il lusion ou si vous essayez de vous téléporter en un endroit familier qui n''existe plus.' || E'\n' || '**Sur place**: Vous et vos compagnons (ou l''objet téléporté) apparaissez exactement où vous le souhaitiez.' || E'\n' || '**À proximité**: Vous et vos compagnons (ou l''objet téléporté) apparaissez à une distance aléatoire de votre destination, éloignés dans une direction tout aussi aléatoire. La distance qui vous sépare de votre destination est de 1d1O x 1d1O % de la distance que le sort vous a fait parcourir. Par exemple,si vous essayez de vous téléporter à une destination située à 180 kilomètres de votre position, que vous arrivez à proximité, et que vous obtenez 5 et 3 aux d10, vous allez arriver à 15% de distance de votre destination, c''est-à-dire à 27 kilomètres. Le MD détermine la direction dans laquelle vous vous êtes éloignés de la cible en lançant un d8, le 1 représentant le nord, le 2 le nord-est, le 3 l''est, etc., jusqu''à faire le tour de la rose des vents. Si vous comptiez vous téléporter dans une cité portuaire et arrivez à 27 kilomètres au large de ses côtes, en pleine mer, vous pourriez bien avoir quelques ennuis.' || E'\n' || '**Zone similaire**: Vous et vos compagnons (ou l''objet téléporté) arrivez dans une zone différente de celle prévue, mais dotée de caractéristiques visuelles ou thématiques similaires. Par exemple, si vous comptiez regagner votre laboratoire, vous pourriez arriver dans celui d''un autre magicien ou dans une boutique d''alchimie qui possède nombre d''outils et d''appareils présents dans votre laboratoire. En général, vous apparaissez dans l''endroit ressemblant à votre destination le plus proche de celle-ci, mais comme le sort n''a pas de limite de portée, vous pouvez tout à fait arriver n''importe où sur votre plan d''existence.' || E'\n' || '**Incident**: La magie imprévisible du sort complique le voyage. Chaque créature téléportée (ou l''objet téléporté) subit 3d10 dégâts de force tandis que le MD relance le dé pour savoir où vous arrivez (sachant qu''il peut se produire plusieurs incidents, chacun infligeant ses propres dégâts).',
    NULL
),
(
    'Tempête de feu',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '45 mètres',
    'V, S',
    'instantanée',
    'Une tempête faite de nuages de feu ronflant se forme à l''endroit que vous avez choisi, à portée. La tempête occupe une zone composée d''un maximum de dix cubes de 3 mètres d''arête, que vous pouvez disposer comme bon vous semble. Chaque cube doit avoir au moins une face adjacente à celle d''un autre cube. Chaque créature de la zone doit faire un jet de sauvegarde de Dextérité. Celles qui échouent subissent 7d10 dégâts de feu, les autres la moitié seulement.' || E'\n' || 'Le feu endommage les objets présents dans la zone et embrase les objets inflammables de la zone que personne ne porte ou ne transporte. Si vous le désirez, les flammes peuvent épargner la végétation présente dans la zone.',
    NULL
);