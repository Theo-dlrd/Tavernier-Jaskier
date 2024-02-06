INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Cercle de mort',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Nécromancie'),
    '1 action',
    '45 mètres',
    'V, S, M (la poudre d''une perle noire broyée d''une valeur minimale de 500 po)',
    'instantanée',
    'Une sphère d''énergie négative s''étend dans un rayon de 18 mètres à partir d''un point situé à portée. Chaque créature située dans la sphère doit faire un jet de sauvegarde de Constitution. Celles qui échouent subissent 8d6 dégâts nécrotiques, les autres la moitié seulement.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 7 ou plus, les dégâts augmentent de 2d6 par niveau au-delà du 6e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/circleofdeath_spell_necromancy_school_baldursgate3_wiki_guide_64px.png'
),
(
    'Chaine d''éclairs',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '450 mètres',
    'V, S, M ( un éclat d''ambre, de verre ou de cristal, trois épingles en argent et un morceau de fourrure )',
    'instantanée',
    'Vous créez un arc électrique qui file vers une cible de votre choix, située à portée dans votre champ de vision. Trois éclairs bondissent ensuite de cette cible sur un maximum de trois autres cibles qui doivent toutes se trouver dans un rayon de 9 mètres autour de la première. Une cible peut être une créature ou un objet et ne peut recevoir qu''un seul éclair.' || E'\n' || 'Chaque cible doit faire un jet de sauvegarde de Dextérité et subit 10d8 dégâts de foudre en cas d''échec, la moitié en cas de réussite.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 7 ou plus, un éclair de plus bondit de la première cible vers une autre pour chaque niveau au-delà du 6e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/chainlightning_spell_evocation_school_baldursgate3_wiki_guide_64px.png'
),
(
    'Déplacer la terre',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    '36 mètres',
    'V, S, M (une lame de fer et un petit sac contenant un mélange de terres : de l''argile, du terreau et du sable)',
    'concentration, jusqu''à 2 heures',
    'Choisissez une zone de terrain à portée d''un maximum de 12 mètres de côté. Vous pouvez remodeler la terre, le sable ou l''argile qu''elle comporte comme bon vous semble pendant toute la durée du sort. Vous pouvez augmenter ou diminuer l''altitude de la zone, creuser ou combler une tranchée, ériger ou abattre un mur, ou former un pilier. L''amplitude de ces modifications ne peut pas excéder la moitié de la dimension la plus importante de la zone affectée. Donc, si vous modifiez une zone de 12 mètres de côté, vous pouvez créer un pilier de 6 mètres de haut au maximum, modifier l''altitude de la zone de 6 mètres au plus, creuser une tranchée d''un maximum de 6 mètres de profondeur, etc. Il faut 10 minutes pour finaliser ces modifications.' || E'\n' || 'Au bout de chaque période de 10 minutes passées à vous concentrer sur le sort, vous pouvez choisir une nouvelle zone de terrain à modifier.' || E'\n' || 'Comme les transformations se produisent lentement, il est bien rare qu''une créature se retrouve piégée ou blessée à cause des mouvements du terrain.' || E'\n' || 'Ce sort est incapable de manipuler la pierre naturelle et les constructions de pierre. La roche et les structures s''adaptent au nouvel agencement du terrain. Si vos modifications déstabilisent une structure, elle peut très bien s''effondrer.' || E'\n' || 'De même, le sort n''affecte pas directement la croissance des plantes. La terre déplacée emporte les végétaux avec elle.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/dethrone-bg3-wiki-guide.png'
),
(
    'Désintégration',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    '18 mètres',
    'V, S, M (de la magnétite et une pincée de poussière)',
    'instantanée',
    'Un mince rayon de lumière verte jaillit de votre doigt pointé vers une cible située à portée dans votre champ de vision. La cible peut être une créature, un objet ou une création de force magique, comme un mur issu d''un _mur de force_.' || E'\n' || 'Une créature visée par ce sort doit faire un jet de sauvegarde de Dextérité. Si elle le rate, elle subit 10d6+40 dégâts de force. Si ces dégâts la réduisent à 0 point de vie, elle est désintégrée.' || E'\n' || 'Une créature désintégrée est réduite à l''état de fine poussière grise, tout comme tous les objets qu''elle porte et transporte, à l''exception des objets magiques. Pour ressusciter une créature ainsi désintégrée, il faut impérativement recourir à une _résurrection suprême_ ou à un _souhait_.' || E'\n' || 'Ce sort désintègre automatiquement les objets non magiques de taille Grande ou inférieure et les créations de force magique. Si la cible est un objet de taille Très Grande ou plus, le sort désintègre un cube de 3 mètres d''arête au sein de l''objet. Ce sort reste sans effet sur les objets magiques.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 7 ou plus, les dégâts augmentent de 3d6 par niveau au-delà du 6e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/disintegrate_spell_transmutation_school_baldursgate3_wiki_guide_64px.png'
),
(
    'Globe d''invulnérabilité',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'personnelle (3 mètres de diamètre)',
    'V, S, M (une perle de verre ou de cristal qui explose à la fin du sort)',
    'concentration, jusqu''à 1 minute',
    'Une barrière immobile scintille légèrement dans un rayon de 3 mètres autour de vous et persiste pendant toute la durée du sort.' || E'\n' || 'Tout sort de niveau 5 ou inférieur lancé depuis l''extérieur de la barrière se trouve dans l''incapacité d''affecter les créatures et les objets se trouvant à l''intérieur, même si l''incantateur lance son sort en utilisant un emplacement de niveau supérieur. Le sort peut très bien viser les créatures et les objets situés au sein de la barrière, mais il n''a aucun effet sur eux. De même, la zone protégée par la barrière est exclue de la zone affectée par les sorts de ces niveaux.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 7 ou plus, la barrière bloque les sorts d''un niveau de plus par niveau au-delà du 6e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/blobe_of_invulnerability_spell_abjuration_school_baldursgate3_wiki_guide_64px.png'
),
(
    'Mauvais oeil',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Nécromancie'),
    '1 action',
    'personnelle',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Pendant la durée du sort, vos yeux deviennent deux trous noirs regorgeant d''un pouvoir terrifiant. Une créature de votre choix, située dans votre champ de vision et dans un rayon de 18 mètres doit réussir un jet de sauvegarde de Sagesse ou se voir affectée par l''un des effets suivants, choisi par vos soins, pendant toute la durée du sort. À chacun de vos tours jusqu''à ce que le sort se termine, vous pouvez utiliser votre action pour viser une autre créature, mais vous ne pouvez pas reprendre pour cible une créature ayant déjà réussi un jet de sauvegarde contre l''incantation de mauvais œil en cours.' || E'\n' || '**Endormi**: La cible tombe inconsciente. Elle se réveille si elle subit le moindre dégât ou si une tierce personne utilise une action pour la réveiller en la secouant.' || E'\n' || '**Paniqué**: Vous terrorisez la cible. À chacun de ses tours, la cible terrorisée doit utiliser l''action se précipiter et s''éloigner de vous via l''itinéraire le plus rapide et le plus sûr, à moins qu''elle n''ait nulle part où aller. Cet effet se termine si la cible gagne un emplacement situé à au moins 18 mètres de vous et d''où elle ne vous voit plus.' || E'\n' || '**Écœuré**: La cible est désavantagée lors des jets d''attaque et des tests de caractéristique. Elle a droit à un nouveau jet de sauvegarde de Sagesse à la fin de chacun de ses tours. L''effet se termine si elle le réussit.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/eyebite_spell_necromancy_school_baldursgate3_wiki_guide_64px.png'
),
(
    'Portail magique',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '150 mètres',
    'V, S',
    'concentration, jusqu''à 10 minutes',
    'Vous créez des portails de téléportation reliés qui restent ouverts pendant toute la durée du sort. Choisissez deux points au sol, tous deux situés dans votre champ de vision, l''un devant se trouver dans un rayon de 3 mètres autour de vous, l''autre dans un rayon de 150 mètres autour de vous. Un portail circulaire de 3 mètres de diamètre s''ouvre en chaque point. Si un portail est censé s''ouvrir dans l''emplacement qu''occupe une créature, le sort échoue et l''incantation est gaspillée.' || E'\n' || 'Ces portails se présentent sous forme d''anneaux luisants en deux dimensions emplis de brume, qui flottent à quelques centimètres du sol, perpendiculaires aux points que vous avez choisis. Chaque anneau se voit seulement d''un côté (celui de votre choix), qui correspond à la face fonctionnant comme un portail.' || E'\n' || 'Toute créature ou tout objet entrant dans un portail ressort par l''autre, comme si les deux étaient adjacents. En revanche, il ne se passe rien si quelque chose traverse l''emplacement du portail en passant par la face qui ne fait pas office de portail. La brume qui emplit chaque portail est opaque et bloque toute visibilité. À votre tour, vous pouvez faire pivoter le portail par une action bonus pour que la face active se tourne dans une nouvelle direction.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/arcane_gate_conjuration_school_baldursgate3_wiki_guide_64px.png'
),
(
    'Rayon de soleil',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    'personnelle (ligne de 18 mètres)',
    'V, S, M (une loupe)',
    'concentration, jusqu''à 1 minute',
    'Un rayon de vive lumière jaillit de votre main sur une ligne de 18 mètres de long pour 1,50 mètre de large. Chaque créature située sur cette ligne doit faire un jet de sauvegarde de Constitution. Celles qui échouent subissent 6d8 dégâts radiants et sont aveuglées jusqu''à la fin de votre prochain tour. Les autres subissent seulement la moitié des dégâts et ne sont pas aveuglées. Les vases et les morts-vivants sont désavantagés lors de ce jet de sauvegarde.' || E'\n' || 'Vous pouvez créer une nouvelle ligne de lumière en dépensant votre action à n''importe quel tour jusqu''à la fin du sort.' || E'\n' || 'Pendant toute la durée du sort, une boule de lumière brille dans votre main. Elle émet une vive lumière dans un rayon de 9 mètres et une faible lumière dans un rayon de 9 mètres supplémentaires. Cette lumière est de la même nature que la lumière du soleil.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/sunbeam_spell_evocation_school_baldursgate3_wiki_guide_64px.png'
),
(
    'Suggestion de groupe',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '18 mètres',
    'V, M (une langue de serpent et soit un rayon de miel, soit une goutte d''huile d''olive)',
    '24 heures',
    'Vous visez un maximum de douze créatures de votre choix, situées à portée et dans votre champ de vision et à même de vous entendre et de vous comprendre. Vous les influencez par magie de façon à ce qu''elles suivent la conduite que vous leur proposez (en seulement une phrase ou deux). Les créatures insensibles au charme sont immunisées contre ce sort. Vous devez formuler votre suggestion de manière à ce que la conduite à tenir semble tout à fait raisonnable. Si vous demandez à une créature de se poignarder, de se laisser tomber sur une lance, de s''immoler ou d''accomplir n''importe quelle action à l''évidence néfaste, l''effet du sort s''annule automatiquement.' || E'\n' || 'Chaque cible doit faire un jet de sauvegarde de Sagesse. En cas d''échec, la cible fait de son mieux pour suivre la conduite que vous lui avez suggérée et cela peut occuper toute la durée du sort. Si l''activité suggérée peut se finir plus rapidement, le sort se termine quand la cible a accompli ce que vous lui avez demandé.' || E'\n' || 'Vous pouvez spécifier des conditions qui déclenchent une activité spéciale pendant la durée du sort. Par exemple, vous pouvez suggérer à un groupe de soldats de donner tout leur argent au premier mendiant qu''ils rencontrent. Si les conditions ne sont pas remplies avant la fin du sort, la cible n''accomplit pas l''activité.' || E'\n' || 'Si vous (ou l''un de vos compagnons) blessez une créature affectée par ce sort, le sort se termine pour elle.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 7 ou plus, la durée du sort est de 10 jours. Si vous utilisez un emplacement de niveau 8, elle est de 30 jours et si vous utilisez un emplacement de niveau 9, elle est d''un an et un jour.',
    NULL
),
(
    'Vision suprême',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '1 action',
    'contact',
    'V, S, M (un collyre coûtant 25 po, fait de poudre de champignon, de safran et de graisse, que le sort consume)',
    '1 heure',
    'Grâce à ce sort, la créature consentante que vous touchez est capable de voir les choses telles qu''elles sont réellement. Pendant toute la durée du sort, la cible bénéficie de _vision parfaite_, repère les portes dérobées cachées par magie et voit le plan éthéré, tout cela dans un rayon de 36 mètres.',
    NULL
)ON CONFLICT(nom_sort) DO NOTHING;