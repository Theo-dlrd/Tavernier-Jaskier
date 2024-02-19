INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Amitié avec les animaux',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Enchantement'),
    '1 action',
    '9 mètres',
    'V, S, M (un peu de nourriture)',
    '24 heures',
    'Grâce à ce sort, vous convainquez une bête que vous ne lui voulez pas de mal. Choisissez une bête située à portée dans votre champ de vision. Elle doit vous voir et vous entendre. Le sort échoue si elle possède une Intelligence de 4 ou plus. Dans le cas contraire, elle doit réussir unjet de Sagesse, sans quoi vous la charmez pendant toute la durée du sort. Le sort se termine si vous ou l''un de vos camarades blessez la cible.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, vous pouvez affecter une bête supplémentaire par emplacement de sort au-delà du 1er.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/animal_friendship_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Fou rire de Tasha',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Enchantement'),
    '1 action',
    '9 mètres',
    'V, S, M (de minuscules tartes et une plume à agiter dans les airs)',
    'concentration, jusqu''à 1 minute',
    'Une créature de votre choix située à portée dans votre champ de vision trouve soudain tout ce qui l''entoure d''une drôlerie hilarante et succombe à un fou rire irrépressible dès que ce sort l''affecte. Elle doit réussir un jet de sauvegarde de Sagesse ou se retrouver à terre, neutralisée et incapable de se relever pendant toute la durée du sort. Ce sort n''affecte pas les créatures dotées d''une Intelligence de 4 ou moins.' || E'\n' || 'À la fin de chacun de ses tours et chaque fois qu''elle subit des dégâts, la cible a droit à un nouveau jet de sauvegarde de Sagesse. Elle est avantagée lors de ce jet si ce sont des dégâts qui l''ont provoqué. Si la cible le réussit, le sort se termine.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/tasha''s_hideous_laughter_spell_baldursgate3_wiki_guide_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Grande foulée',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
    '1 action',
    'contact',
    'V, S, M (une pincée de poussière)',
    '1 heure',
    'Vous touchez une créature dont la vitesse augmente de 3 mètres jusqu''à la fin du sort.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, vous pouvez affecter une créature de plus par niveau au-delà du 1er.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/longstrider_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Identification',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Divination'),
    '1 minute',
    'contact',
    'V, S, M (une perle d''une valeur minimale de 100 po et une plume de hibou)',
    'instantanée',
    'Vous choisissez un objet avec lequel vous devez rester en contact pendant toute l''incantation du sort. Si c''est un objet magique ou un objet imprégné de magie,vous apprenez immédiatement quelles sont ses propriétés et comment vous en servir. Vous savez aussi s''il faut s''harmoniser avec lui pour l''utiliser et combien de charges il possède, le cas échéant. Vous savez si des sorts affectent l''objet et quel est leur nom. Si l''objet a été créé grâce à un sort, vous apprenez quel sort lui a dqnné naissance.' || E'\n' || 'Si,à la place,vous touchez une créature pendant toute l''incantation, vous découvrez quels sorts l''affectent présentement,le cas échéant.',
    NULL
),
(
    'Lueurs féériques',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
    '1 action',
    '18 mètres',
    'V',
    'concentration, jusqu''à 1 minute',
    'Tous les objets contenus dans un cube de 6 mètres d''arête situé à portée sont auréolés d''une lumière bleue, verte ou violette (à vous de choisir). Les créatures qui se trouvent dans la zone au moment de l''incantation sont aussi entourées de lumière, à moins de réussir un jet de sauvegarde de Dextérité. Pendant toute la durée du sort, les créatures et les objets affectés émettent une faible luminosité dans un rayon de 3 mètres.' || E'\n' || 'Un assaillant a l''avantage lors du jet d''attaque contre une cible affectée s''il peut la voir. Les créatures et les objets affectés ne peuvent pas bénéficier des effets de l''invisibilité.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/faerie_fire_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Mot de guérison',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
    '1 action bonus',
    '18 mètres',
    'V',
    'instantanée',
    'Une créature de votre choix située à portée dans votre champ de vision récupère un montant de points de vie égal à 1d4 + votre modificateur de caractéristique d''incantation. Ce sort n''a aucun effet sur les créatures artificielles et les morts-vivants.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les soins augmentent de 1d4 par niveau au-delà du 1er.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/healing_word_spell_icon_baldursgate3_wiki_guide_200px.png'
),
(
    'Murmures dissonants',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Enchantement'),
    '1 action',
    '18 mètres',
    'V',
    'instantanée',
    'Vous fredonnez une mélodie discordante qu''entend une seule créature de votre choix, située à portée. La malheureuse est alors victime de terribles douleurs et doit faire unjet de sauvegarde de Sagesse. Si elle échoue, elle subit 3d6 dégâts psyclùques et doit immédiatement dépenser sa réaction (si elle le peut) pour s''éloigner de vous autant que sa vitesse de déplacement le lui permet. Elle ne s''avance pas dans des zones à l''évidence dangereuses, comme un brasier ou une fosse. Si la cible réussit son jet de sauvegarde, elle subit seulement la moitié des dégâts et n''a pas à s''éloigner. Une créature assourdie réussit automatiquement sonjet de sauvegarde.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts augmentent de 1d6 par emplacement de sort au-delà du 1er.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/dissonant_whispers_spell_baldursgate3_wiki_guide_150px_2.png'
);