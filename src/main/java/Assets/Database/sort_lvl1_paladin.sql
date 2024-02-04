INSERT INTO sort(nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description)
VALUES
(
    'Bénédiction',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '9 mètres',
    'V, S, M (un peu d''eau bénite à asperger)',
    'concentration,jusqu''à 1 minute',
    'Vous bénissez jusqu''à trois créatures de votre choix situées à portée. Quand une cible fait un jet d''attaque ou de sauvegarde avant la fin du sort, elle lance 1d4 et ajoute le montant obtenu au jet d''attaque ou de sauvegarde.' || E'\n' || '**À plus haut niveau**, Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, vous pouvez affecter une créature de plus par niveau au-delà du 1er.'
),
(
    'Bouclier de la foi',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action bonus',
    '18 mètres',
    'V, S, M (un petit parchemin avec un extrait de texte sacré)',
    'concentration,jusqu''à 10 minutes',
    'Un champ scintillant apparaît autour d''une créature de votre choix située à portée et lui donne un bonus de +2 à la CA pendant toute la durée du sort.'
),
(
    'Détection de la magie',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '1 action (rituel)',
    'personnelle',
    'V, S',
    'concentration.jusqu''à 10 minutes',
    'Pendant toute la durée du sort, vous percevez la présence de magie dans un rayon de 9 mètres. Si vous percevez ainsi une magie, vous pouvez dépenser votre action pour discerner une faible aura autour d''une créature ou d''un objet visible dans la zone et imprégné de magie. Vous découvrez aussi à quelle école appartient cette magie, le cas échéant.' || E'\n' || 'Le sort ignore la plupart des obstacles, mais il ne peut pas franchir 30 centimètres de pierre, 2,5 centimètres de métal ordinaire, une mince feuille de plomb, ni 1 mètre de bois ou de terre.'
),
(
    'Détection du bien et du mal',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '1 action',
    'personnelle',
    'V, S',
    'concentration.jusqu''à 10 minutes',
    'Pendant toute la durée du sort, vous savez s''il y a une aberration, un céleste, un élémentaire, une fée, un fiélon ou un mort-vivant dans un rayon de 9 mètres autour de vous et vous savez précisément où il se trouve. De même, vous savez si un lieu ou un objet situé dans un rayon de 9 mètres a été consacré ou profané.' || E'\n' || 'Le sort ignore la plupart des obstacles, mais il ne peut pas franchir 30 centimètres de pierre, 2,5 centimètres de métal ordinaire, une mince feuille de plomb, ni 1 mètre de bois ou de terre.'
),
(
    'Détection du poison et des maladies',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '1 action (rituel)',
    'personnelle',
    'V, S, M (un brin d''if )',
    'concentration.jusqu''à 10 minutes',
    'Pendant toute la durée du sort, vous percevez la présence de poisons, de créatures venimeuses et de maladies dans un rayon de 9 mètres autour de vous. Vous déterminez également leur emplacement et identifiez à chaque fois le type de poison, de créature ou de maladie concerné.' || E'\n' || 'Le sort ignore la plupart des obstacles, mais il ne peut pas franchir 30 centimètres de pierre, 2,5 centimètres de métal ordinaire, une mince feuille de plomb, ni 1 mètre de bois ou de terre.'
),
(
    'Duel forcé',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action bonus',
    '9 mètres',
    'V',
    'concentration,jusqu''à 1 minute',
    'Vous poussez une créature à vous affronter en duel. Une créature située à portée dans votre champ de vision doit faire un jet de sauvegarde de Sagesse. Si elle le rate, vous l''obnubilez et elle ne peut résister à votre injonction divine. Pendant toute la durée du sort, elle est désavantagée lors des jets d''attaque effectués contre toute créature autre que vous et doit faire un jet de sauvegarde de Sagesse chaque fois qu''elle tente de s''éloigner à plus de 9 mètres de vous. Si elle réussit ce jet de sauvegarde, le sort ne gêne pas ses mouvements pour ce tour.' || E'\n' || 'Le sort se termine si vous attaquez une créature autre que celle visée par ce sort, si vous lancez un sort sur une créature hostile autre qu''elle, si une créature amicale envers vous la blesse ou lui lance un sort néfaste ou si vous terminez votre tour à plus de 9 mètres d''elle.
'
),
(
    'Faveur divine',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action bonus',
    'personnelle',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Vos prières vous imprègnent d''une aura radieuse. Jusqu''à la fin du sort, les attaques que vous portez avec une arme infligent 1d4 dégâts radiants supplémentaires en cas de coup au but.'
),
(
    'Frappe ardente',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action bonus',
    'personnelle',
    'V',
    'concentration,jusqu''à 1 minute',
    'Lors de la prochaine attaque armée qui vous permet de toucher une créature pendant la durée du sort, votre arme flamboie, comme chauffée à blanc, et l''attaque inflige 1d6 dégâts de feu supplémentaires. Elle embrase également la cible qui doit faire un jet de sauvegarde de Constitution au début de chacun de ses tours jusqu''à la fin du sort. Si elle échoue, elle subit 1d6 dégâts de feu, si elle réussit le sort se termine. Si la cible ou une créature située dans un rayon de 1,50 mètre autour d''elle utilise une action pour éteindre les flammes ou si un effet les étouffe (si la cible est plongée dans l''eau par exemple), le sort se termine.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts initiaux augmentent de 1d6 par emplacement de sort au-delà du 1e.'
),
(
    'Frappe colérique',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action bonus',
    'personnelle',
    'V',
    'concentration,jusqu''à 1 minute',
    'Lorsque vous touchez une cible avec une attaque armée au corps à corps pour la première fois pendant la durée de ce sort, votre attaque inflige 1d6 dégâts psychiques supplémentaires. De plus, si la cible est une créature, elle doit réussir un jet de sauvegarde de Sagesse, sans quoi elle est terrorisée à votre vue jusqu''à ce que le sort se termine. Par une action, elle peut faire un jet de sauvegarde de Sagesse contre le DD du jet de sauvegarde de votre sort pour rassembler son courage et mettre fin au sort.'
),
(
    'Frappe tonitruante',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action bonus',
    'personnelle',
    'V',
    'concentration, jusqu''à 1 minute',
    'Lorsque vous touchez une cible avec une attaque armée au corps à corps pour la première fois pendant la durée de ce sort, votre arme fait retentir un fracas tonitruant audible dans un rayon de 90 mètres autour de vous, et l''attaque inflige 2d6 dégâts de tonnerre supplémentaires. De plus, si la cible est une créature, elle doit réussir un jet de sauvegarde de Force ou se trouver repoussée sur 3 mètres à l''opposé de votre position et tomber à terre.'
),
(
    'Héroïsme',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    'contact',
    'V, S',
    'concentration,jusqu''à 1 minute',
    'Vous imprégnez une créature consentante que vous touchez de courage. Jusqu''à la fin du sort, elle est immunisée contre l''état terrorisé et, au début de chacun de ses tours, elle gagne un montant de points de vie temporaires égal à votre modificateur de caractéristique d''incantation. Quand le sort se termine, la cible perd les éventuels points de vie temporaires restants issus de ce sort.' || E'\n' || '**À plus haut niveau**, Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, vous pouvez affecter une créature de plus par niveau au-delà du 1er.'
),
(
    'Injonction',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '18 mètres',
    'V',
    '1 round',
    'Vous lancez un ordre d''un mot à une créature située à portée dans votre champ de vision. Elle doit réussir un jet de sauvegarde de Sagesse, sans quoi elle exécute votre ordre à son prochain tour. Le sort reste sans effet si la cible est un mort vivant, si elle ne comprend pas votre langue ou si votre ordre la met directement en danger.' || E'\n' || 'Voici quelques ordres typiques et leurs effets. Vous pouvez donner un ordre différent de ceux présentés là, mais dans ce cas, c''est au MD de décider comment la victime se comporte. Le sort se termine si elle se trouve dans l''incapacité d''obéir à l''ordre reçu.' || E'\n' || '* **Approche**: La cible s''approche de vous en empruntant l''itinéraire le plus court et le plus direct. Elle termine son tour dès qu''elle arrive dans un rayon de 1,50 mètre autour de vous.' || E'\n' || '* **Lâche**: La cible lâche ce qu''elle tient et son tour se termine.' || E'\n' || '* **Fuis**: La cible passe son tour à s''éloigner de vous par la méthode la plus rapide à sa disposition.' || E'\n' || '* **Rampe**: La cible se laisse tomber à terre et termine son tour.' || E'\n' || '* **Stop**: La cible ne bouge pas et n''entreprend aucune action.' || E'\n' || 'Une créature en vol reste dans les airs, à condition qu''elle soit en mesure de le faire. Si elle est obligée de se déplacer pour rester en vol, elle parcourt la distance minimum requise pour ce faire. **À plus haut niveau**, Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, vous pouvez affecter une créature de plus par niveau au-delà du 1er . Ces créatures doivent toutes se trouver à 9 mètres ou moins les unes des autres lorsque vous lancez le sort.'
),
(
    'Protection contre le bien et le mal',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'contact',
    'V, S, M (eau bénite ou poudre de fer et d''argent, que le sort consume)',
    'concentration, jusqu''à 10 minutes',
    'Jusqu''à la fin du sort, une créature consentante que vous touchez est protégée contre certains types de créatures : les aberrations, les célestes, les élémentaires, les fées, les fiélons et les morts-vivants.' || E'\n' || 'Cette protection se traduit par plusieurs avantages. Les créatures des types précédemment nommés sont désavantagées lors des jets d''attaque contre la cible et ne peuvent pas la charmer, la terroriser, ni la posséder. Si elle est déjà sous l''effet d''un tel état émanant d''une telle créature, elle est avantagée lors d''un éventuel nouveau jet de sauvegarde contre l''effet en question.'
),
(
    'Purification de la nourriture et de l''eau',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    '3 mètres',
    'V, S',
    'instantanée',
    'Toute la nourriture et les boissons non magiques présentes dans une sphère d''un rayon de 1,50 mètre centrée autour d''un point de votre choix situé à portée sont purifiées et débarrassées de tout poison et maladie.'
),
(
    'Soin des blessures',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    'contact',
    'V, S',
    'instantanée',
    'La créature que vous touchez récupère un nombre de points de vie égal à 1d8 + votre modificateur de caractéristique d''incantation. Ce sort n''a aucun effet sur les morts-vivants et les créatures artificielles.' || E'\n' || '**À plus haut niveau**, Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les soins augmentent de 1d8 par niveau au-delà du 1er.'
);