INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Arme spirituelle',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action bonus',
        '18 mètres',
        'V, S',
        '1 minute',
        'Vous créez à portée une arme spectrale flottante qui persiste pendant toute la durée du sort ou jusqu''à ce que vous le lanciez de nouveau. Lors de l''incantation, vous pouvez faire une attaque de sort au corps à corps contre une créature située dans un rayon de 1,50 mètre autour de l''arme. Si vous touchez, la cible reçoit un montant de dégâts de force égal à 1d8 + votre modificateur de caractéristique d''incantation.' || E'\n' || 'À votre tour et par une action bonus, vous pouvez déplacer l''arme d''un maximum de 6 mètres et répéter l''attaque contre une créature située dans un rayon de 1,50 mètre autour d''elle.' || E'\n' || 'L''arme peut revêtir la forme de votre choix. Les clercs des divinités associées àune arme particulière (comme St Cuthbert, connu pour sa masse ou Thor pour son marteau) font en sorte que l''arme générée ressemble à l''arme iconique de leur protecteur.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 3 ou plus, les dégâts augmentent de 1d8 par niveau au-delà du 2e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/spiritual-weapon-spells-bg3-wiki-guide-min.png'
    ),
    (
        'Augure',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Divination'),
        '1 minute',
        'personnelle',
        'V, S, M (bâtonnets, os ou petits objets similaires d''une valeur minimale de 25 po, portant des marques spéciales)',
        'instantanée',
        'Vous lancez des bâtonnets ornés de gemmes ou des os de dragon, tirez des cartes ornementées ou utilisez une autre méthode de divination pour recevoir un présage de la part d''une entité d''un autre monde. Ce présage concerne les résultats de la conduite que vous comptez tenir dans les trente prochaines minutes. C''est au MD de choisir l''un des présages suivants :' || E'\n' || '* _Bonheur_ pour un résultat positif' || E'\n' || '* _Malheur_ pour un résultat négatif' || E'\n' || '* _Bonheur_ et _malheur_ pour un résultat compor tant du positif et du négatif' || E'\n' || '* _Rien_ pour un résultat n''étant ni positif ni négatif' || E'\n' || 'Le sort ne tient pas compte d''une éventuelle modification des circonstances, comme l''incantation de sorts supplémentaires, ou la perte ou l''arrivée d''un compagnon.' || E'\n' || 'Si vous lancez ce sort à deux reprises ou plus avant un long repos, il y a 25% de chances par incantation en sus de la première que vous obteniez une prémonition aléatoire au lieu d''une prémonition fiable. C''est au MD de faire ce jet en secret.',
        NULL
    ),
    (
        'Doux repos',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Nécromancie'),
        '1 action',
        'contact',
        'V, S, M (une pincée de sel et une pièce de cuivre à poser sur chaque œil du cadavre et qui doivent rester en place pendant toute la durée du sort)',
        '10 jours',
        'Vous touchez un cadavre ou assimilé. Pendant toute la durée du sort, la cible est protégée contre la décomposition et ne peut pas se transformer en mort-vivant.' || E'\n' || 'Le sort rallonge aussi la période pendant laquelle on peut rappeler la cible d''entre les morts, car les jours passés sous l''influence de ce sort ne sont pas décomptés de la période pendant laquelle on peut utiliser des sorts comme _relever les morts_.',
        NULL
    ),
    (
        'Flamme éternelle',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        'contact',
        'V, S, M (poussière de rubis d''une valeur de 50 po, que le sort consume)',
        'jusqu''à disssipation',
        'Une flamme à la luminosité égale à celle d''une torche embrase soudain l''objet que vous touchez. L''effet du sort ressemble à une flamme ordinaire, mais ne dégage pas de chaleur et ne consomme pas d''oxygène. On peut couvrir ou cacher la _flamme éternelle_, mais pas l''étouffer ni l''éteindre avec de l''eau.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/flaming_sphere_spell_baldursgate3_wiki_guide_150px.png'
    ),
    (
        'Lien de protection',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '1 action',
        'contact',
        'V,S, M (une paire d''anneaux de platine valant chacun au moins 50 po, que la cible et vous devez porter pendant toute la durée)',
        '1 heure',
        'Ce sort protège une créature consentante et crée un lien mystique entre vous et votre cible jusqu''à la fin du sort. Tant que la cible se trouve dans un rayon de 18 mètres autour de vous, elle gagne un bonus de +1 à la CA et aux jets de sauvegarde et devient résistante à tous les types de dégâts. En revanche, chaque fois qu''elle subit des dégâts, vous subissez exactement les mêmes.' || E'\n' || 'Le sort se termine si vous tombez à 0 point de vie ou si votre cible et vous êtes séparés de plus de 18 mètres. Il se termine aussi si vous le lancez de nouveau sur l''une des deux créatures liées. Vous pouvez également révoquer le sort par une action.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/wardingbond-spell-bg3-wiki-guide-64px.png'
    ),
    (
        'Prière de soins',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '10 minutes',
        '9 mètres',
        'V',
        'instantanée',
        'Un maximum de six créatures de votre choix, situées à portée et dans votre champ de vision, récupèrent chacune un montant de points de vie égal à 2d8 + votre modificateur de caractéristique d''incantation. Ce sort n''a aucun effet sur les morts-vivants et les créatures artificielles.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 3 ou plus, les soins augmentent de 1d8 par niveau au-delà du 2e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/prayer_of_healing_spell_baldursgate3_wiki_guide_150px_2.png'
    ),
    (
        'Trouver les pièges',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Divination'),
        '1 action',
        '36 mètres',
        'V, S',
        'instantanée',
        'Vous percevez la présence de tout piège se trouvant à portée et dans votre champ de vision. Concernant ce sort, le terme de piège désigne toute chose qui inflige soudainement ou de façon inattendue un effet considéré comme néfaste ou indésirable et que son créateur a conçue dans ce but. Ainsi, le sort prévient si une zone est affectée par une alarme, un _glyphe de garde_ ou une fosse piégée mécanique, mais il ne révèle pas une faiblesse naturelle dans un plancher, un plafond instable ou une doline cachée.' || E'\n' || 'Le sort indique simplement qu''il y a un piège ; il ne précise pas où, mais vous donne une idée générale de la nature du danger qu''il représente.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/pass_without_trace_spell_baldursgate3_wiki_guide_35px_.png'
    );