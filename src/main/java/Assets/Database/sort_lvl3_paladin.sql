INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Arme élémentaire',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    'contact',
    'V, S',
    'concentration,jusqu''à 1 heure',
    'Vous touchez une arme non magique pour la rendre magique. Choisissez l''un des types de dégâts suivants : acide, feu, foudre, froid ou tonnerre. Pendant toute la durée du sort, l''arme bénéficie d''un bonus de +1 aux jets d''attaque et inflige 1d4 dégâts supplémentaires du type choisi.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 5 ou 6, le bonus aux jets d''attaque passe à+2 et les dégâts supplémentaires à 2d4. Quand vous utilisez un emplacement de sort de niveau 7 ou plus, le bonus passe à +3 et les dégâts supplémentaires à 3d4.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/elementalweapon-spell-bg3-wiki-guide-150px.png'
),
(
    'Aura de vitalité',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    'personnelle (9 m de rayon)',
    'V',
    'concentration,jusqu''à 1 minute',
    'Une énergie curative émane de vous et forme une aura dans un rayon de 9 mètres. Cette aura se déplace avec vous jusqu''à la fin du sort et reste centrée sur vous. Vous pouvez utiliser une action bonus pour rendre 2d6 points de vie à une créature située au sein de l''aura, vous y compris.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/wardenofvitality-spell-bg3-wiki-guide-150px.png'
),
(
    'Aura du croisé',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    'personnelle',
    'V',
    'concentration,jusqu''à 1 minute',
    'Une puissance sacrée émane de vous et forme une aura d''un rayon de 9 mètres, réveillant la combativité de vos amis. L''aura est centrée sur vous et se déplace avec vous jusqu''à la fin du sort. Toutes les créatures non hostiles (y compris vous-même) situées en son sein infligent 1d4 dégâts radiants de plus quand elles touchent une cible avec une attaque armée.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/crusadersmantle-spell-bg3-wiki-guide-150px.png'
),
(
    'Cercle magique',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 minute',
    '3 mètres',
    'V, S, M (eau bénite/poudre d''argent et de fer d''une (valeur>=100 po), que le sort consume)',
    '1 heure',
    'Vous créez un cylindre d''énergie magique de 3 mètres de rayon pour 6 mètres de haut, centré sur un point au sol situé à portée et dans votre champ de vision. Des runes luisantes apparaissent là où le cylindre touche le sol ou une autre surface.' || E'\n' || 'Choisissez l''un des types de créatures suivants: célestes, élémentaires, fées, fiélons ou morts-vivants. Le cercle affecte une créature du type choisi de la manière suivante.' || E'\n' || 'La créature ne peut pas entrer de son plein gré dans le cylindre par des moyens non magiques. Si elle tente d''utiliser la téléportation ou le voyage extraplanaire pour y pénétrer, elle doit auparavant réussir un jet de sauvegarde de Charisme.' || E'\n' || 'La créature est désavantagée lors des jets d''attaque contre les créatures se trouvant dans le cylindre.' || E'\n' || 'La créature ne peut ni charmer, ni terroriser, ni posséder les créatures situées dans le cylindre.' || E'\n' || 'Quand vous lancez ce sort, vous pouvez décider que sa magie agira à l''envers, empêchant les créatures du type choisi de quitter le cercle et protégeant contre elles les individus situés à l''extérieur du cercle.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 4 ou plus, la durée du sort augmente d''une heure par niveau au-delà du 3e.',
    NULL
),
(
    'Création de nourriture et d''eau',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '9 mètres',
    'V, S',
    'instantanée',
    'Vous créez 22,5 kilos de nourriture et 120 litres d''eau, soit par terre, soit dans des récipients installés à portée. Cela suffit à nourrir et abreuver un maximum de quinze humanoïdes ou de cinq montures pendant 24 heures. Les vivres sont fades mais nourrissants. Ils se gâtent si personne ne les a mangés dans les 24 heures suivant leur création. L''eau est claire et ne croupit pas.',
    NULL
),
(
    'Dissipation de la magie',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    '36 mètres',
    'V, S',
    'instantanée',
    'Choisissez une créature, un objet ou un effet magique à portée. Tout sort de niveau 3 ou inférieur qui l''affecte se termine. Si la cible est affectée par un sort de niveau 4 ou plus, faites un test de caractéristique en utilisant votre caractéristique d''incantation. Le DD est de 10 + niveau du sort. Ce dernier se termine si vous réussissez votre test.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 4 ou plus, vous mettez automatiquement un terme à un sort affectant la cible quand le niveau de ce sort est égal ou inférieur au niveau de l''emplacement de sort que vous utilisez.',
    NULL
),
(
    'Frappe aveuglante',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action bonus',
    'personnelle',
    'V',
    'concentration,jusqu''à 1 minute',
    'La prochaine attaque armée qui vous permet de toucher une créature avant la fin de ce sort voit votre arme briller d''une vive lumière et inflige 3d8 dégâts radiants de plus à votre cible. De plus, la cible doit réussir un jet de sauvegarde de Constitution, sans quoi elle est aveuglée jusqu''à la fin du sort.' || E'\n' || 'Une créature aveuglée par ce sort a droit à un nouveau jet de sauvegarde de Constitution à la fin de chacun de ses tours. Dès qu''elle en réussit un, elle n''est plus aveuglée.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/blindingsmite-spell-bg3-wiki-guide-150px.png'
),
(
    'Lever une malédiction',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'contact',
    'V, S',
    'instantanée',
    'À votre contact, toutes les malédictions qui affectent une créature ou un objet disparaissent. Si l''objet est un objet magique maudit, la malédiction persiste, mais le sort rompt l''harmonisation entre l''objet et son détenteur, ce qui permet à ce dernier de l''ôter ou de s''en débarrasser.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/remove_curse_spells_bg3_wiki_guide150px.png'
),
(
    'Lumière du jour',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '18 mètres',
    'V, S',
    '1 heure',
    'Une sphère de lumière de 18 mètres de rayon s''étend depuis un point de votre choix situé à portée. Elle émet une lumière vive dans ce rayon et une lumière faible dans un rayon de 18 mètres de plus.' || E'\n' || 'Si le point que vous avez choisi est un objet en votre possession ou un objet qui n''est ni porté ni transporté par autrui, la lumière irradie de l''objet et se déplace avec lui. Il suffit de recouvrir complètement l''objet affecté avec un objet opaque, comme un bol ou un heaume, pour bloquer la lumière.' || E'\n' || 'Si une partie de la zone affectée par ce sort chevauche une zone de ténèbres issue d''un sort de niveau 3 ou moins, elle dissipe le sort de ténèbres.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/daylight_spell_bg3_wiki_guide150px.png'
),
(
    'Revigorer',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Nécromancie'),
    '1 action',
    'contact',
    'V, S, M (diamant d''une valeur de 300 po, que le sort consume)',
    'instantanée',
    'Vous touchez une créature morte au cours de la minute précédente. Elle revient à la vie avec 1 point de vie. Ce sort ne ramène pas à la vie les créatures mortes de vieillesse et ne restaure pas les parties manquantes du corps.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/revivify_necromancy_spell_bg3_wiki_150px.png'
)ON CONFLICT(nom_sort) DO NOTHING;