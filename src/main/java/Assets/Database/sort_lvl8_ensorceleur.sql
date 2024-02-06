INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Dominer un monstre',
    8,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '18 mètres',
    'V, S',
    'concentration, jusqu''à 1 heure',
    'Vous tentez d''envoûter une créature située à portée dans votre champ de vision. Elle doit réussir un jet de sauvegarde de Sagesse, sans quoi vous la charmez pendant toute la durée du sort. Elle est avantagée lors du jet de sauvegarde si vous ou des créatures amicales envers vous êtes en train de la combattre.' || E'\n' || 'Tant que la créature est charmée, vous entretenez un lien télépathique avec elle qui persiste tant que vous vous trouvez sur le même plan d''existence. Vous pouvez utiliser ce lien télépathique pour donner des ordres à cette créature tant que vous êtes conscient (ce qui ne vous demande pas d''action). Elle fait de son mieux pour vous obéir. Vous pouvez lui donner un ordre simple et générique, comme « attaque cette créature », « cours jusque là-bas » ou « va chercher cet objet ». Si elle ne reçoit pas de nouvelles instructions de votre part une fois l''ordre exécuté, elle se contente de se défendre et de se préserver au mieux.' || E'\n' || 'Vous pouvez utiliser votre action pour prendre le contrôle total de votre cible et la diriger de façon précise. Jusqu''à la fin de votre prochain tour, elle exécute seulement les actions que vous choisissez et ne fait rien que vous ne lui ayez autorisé. Pendant cette période, vous pouvez aussi lui faire exécuter une réaction, mais pour cela, vous devez également dépenser votre propre réaction.' || E'\n' || 'Chaque fois que la cible subit des dégâts, elle a droit à un nouveau jet de sauvegarde de Sagesse contre le sort. Si elle le réussit, le sort prend fin.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 9, la durée devient « concentration, jusqu''à 8 heures ».',
    NULL
),
(
    'Eclat du soleil',
    8,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '45 mètres',
    'V, S, M (du feu et un éclat d''héliotrope)',
    'instantanée',
    'La chaude lumière du soleil illumine une zone de 18 mètres de rayon centrée sur un point de votre choix situé à portée. Chaque créature présente dans cette lumière doit faire un jet de sauvegarde de Constitution. Celles qui échouent subissent 12d6 dégâts radiants et sont aveuglées pendant 1 minute. Les autres subissent seulement la moitié des dégâts et ne sont pas aveuglées par le sort. Les vases et les morts-vivants sont désavantagés lors de ce jet de sauvegarde.' || E'\n' || 'Une créature aveuglée par le sort fait un autre jet de Constitution à la fin de chacun de ses tours. Dès qu''elle réussit, sa cécité disparaît.' || E'\n' || 'Ce sort dissipe toutes les ténèbres présentes dans la zone qui sont issues d''un sort.',
    NULL
),
(
    'Mot de pouvoir étourdissant',
    8,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '18 mètres',
    'V',
    'instantanée',
    'Vous prononcez un mot de pouvoir capable de submerger l''esprit d''une créature située à portée dans votre champ de vision. Elle en est abasourdie. Si elle possède 150 points de vie ou moins, elle est étourdie, sinon le sort est sans effet. Une cible étourdie a droit à un jet de sauvegarde de Constitution à la fin de chacun de ses tours. L''effet d''étourdissement se termine dès qu''elle en réussit un.',
    NULL
),
(
    'Nuage incendiaire',
    8,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '45 mètres',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Un nuage de fumée ondoyant constellé de braises rougeoyantes apparaît sous la forme d''une sphère de 6 mètres de rayon centrée sur un point à portée. Le nuage se répand en contournant les angles si nécessaire et, à l''intérieur, la visibilité est fortement obstruée. Le nuage persiste pendant toute la durée du sort ou jusqu''à ce qu''un vent fort ou modéré (au moins 15 km/h) le disperse.' || E'\n' || 'Quand le nuage apparaît, chaque créature se trouvant à l''intérieur doit faire un jet de sauvegarde de Dextérité. Celles qui échouent reçoivent 10d8 dégâts de feu, les autres la moitié seulement. Une créature doit aussi faire ce jet quand elle entre dans la zone affectée pour la première fois du tour ou qu''elle y finit son tour.' || E'\n' || 'Le nuage s''éloigne de vous sur 3 mètres dans la direction de votre choix au début de chacun de vos tours.',
    NULL
),
(
    'Tremblement de terre',
    8,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '150 mètres',
    'V, S, M (une pincée de poussière, un caillou et un peu d''argile)',
    'concentration, jusqu''à 1 minute',
    'Vous créez une perturbation sismique en un point situé au niveau du sol, à portée dans votre champ de vision. Pendant toute la durée du sort, d''intenses secousses agitent le sol dans un cercle de 30 mètres de rayon centré sur le point choisi. Elles ébranlent toutes les créatures et structures en contact avec le sol de cette zone.' || E'\n' || 'Le sol affecté devient un terrain difficile. Toute créature qui se trouve en contact avec le sol et en pleine concentration doit réussir un jet de sauvegarde de Constitution sous peine de voir sa concentration se briser.' || E'\n' || 'Quand vous lancez ce sort et à la fin de chacun de vos tours passés à vous concentrer dessus, toutes les créatures en contact avec le sol de la zone affectée doivent faire unjet de sauvegarde de Dextérité. Celles qui échouent tombent à terre. Le sort a des effets supplémentaires selon le terrain affecté. C''est au MD de déterminer cela.' || E'\n' || '**Fissures**: Une fois que vous avez lancé le sort, des fissures s''ouvrent dans toute la zone affectée au début de votre tour suivant. 1d6 fissures s''ouvrent en des points choisis par le MD. Chacune fait 1d1O x 3 mètres de profondeur pour 3 mètres de large et s''étend d''un bout de la zone sismique à l''autre. Une créature qui se tient sur l''emplacement d''une fissure en train de s''ouvrir doit faire un jet de sauvegarde de Dextérité. Si elle le rate,elle tombe dedàns, sinon elle réussit à s''écarter à temps. Une structure s''effondre automatiquement si une fissure s''ouvre sous elle (voir plus loin).' || E'\n' || 'Structures. Les secousses infligent 50 dégâts contondants à toute structure en contact avec le sol au moment où vous lancez le sort et au début de chacun de vos tours jusqu''à la fin du sort. Si l''une d''elles tombe à 0 point de vie, elle s''effondre et blesse peut-être les créatures voisines. Une créature qui se trouve près d''un bâtiment en train de s''effondrer, à une distance égale ou inférieure à la moitié de la hauteur de ce bâtiment, doit faire un jet de sauvegarde de Dextérité. Si elle échoue, elle subit 5d6 dêgâts contondants, elle tombe à terre et elle est ensevelie sous les décombres. Il faut réussir un test de Force (Athlétisme) DD20 via une action pour y échapper. Le MD peut modifier le DD en fonction de la nature des décombres. Si la créature réussit son jet de sauvegarde, elle subit seulement la moitié des dégâts, ne tombe pas à terre et n''est pas ensevelie.',
    NULL
)ON CONFLICT(nom_sort) DO NOTHING;