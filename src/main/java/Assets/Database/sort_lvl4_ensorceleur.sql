INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Confusion',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '27 mètres',
    'V, S, M (trois coquilles de noix)',
    'concentration, jusqu''à 1 minute',
    'Ce sort assaille et pervertit l''esprit des créatures, générant des hallucinations et provoquant des réactions incontrôlées. Toutes les créatures situées dans une sphère de 3 mètres de rayon autour d''un point de votre choix situé à portée doivent faire un jet de sauvegarde de Sagesse quand vous lancez le sort. Si elles échouent, le sort les affecte.' || E'\n' || 'Une cible affectée ne peut pas accomplir de réaction et doit lancer 1d1O au début de chacun de ses tours pour déterminer comment elle se comporte pendant le tour.' || E'\n' || '**d1O Comportement**' || '**1)** La créature utilise la totalité de son mouvement pour se déplacer dans une direction aléatoire. Pour déterminer cette dernière, lancez un d8 en assignant une direction à chaque face. La créature n''effectue aucune action pour ce tour.' || E'\n' || '**2-6)** La créature ne bouge pas et n''entreprend pas la moindre action pour ce tour.' || E'\n' || '**7-8)** La créature utilise son action pour porter une attaque au corps à corps contre une créature aléatoire à portée d''allonge. S''il n''y a pas de créature à portée, elle ne fait rien du tour.' || E'\n' || '**9-10)** La créature peut agir et se déplacer normalement.' || E'\n' || 'Une créature affectée peut faire un jet de sauvegarde de Sagesse à la fin de chacun de ses tours. En cas de succès, l''effet se termine pour elle.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 5 ou plus, le rayon de la sphère augmente de 1,50 mètre par niveau au-delà du 4e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/confusion-spell-bg3-wiki-guide-64px.png'
),
(
    'Dominer une bête',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '18 mètres',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Vous tentez d''envoûter une bête située à portée dans votre champ de vision. Elle doit réussir un jet de sauvegarde de Sagesse, sans quoi vous la charmez pendant toute la durée du sort. Elle est avantagée lors du jet de sauvegarde si vous ou des créatures amicales envers vous êtes en train de la combattre.' || E'\n' || 'Tant que la bête est charmée, vous entretenez un lien télépathique avec elle, qui persiste tant que vous vous trouvez sur le même plan d''existence. Vous pouvez utiliser ce lien télépathique pour donner des ordres à cette créature tant que vous êtes conscient (ce qui ne vous demande pas d''action). Elle fait de son mieux pour vous obéir. Vous pouvez lui donner un ordre simple et générique, comme « attaque cette créature », « cours jusque là-bas » ou « va chercher cet objet ». Si elle ne reçoit pas de nouvelles instructions de votre part une fois l''ordre exécuté, elle se contente de se défendre et de se préserver au mieux.' || E'\n' || 'Vous pouvez utiliser votre action pour prendre le contrôle total de votre cible et la diriger de façon précise. Jusqu''à la fin de votre prochain tour, elle exécute seulement les actions que vous choisissez et ne fait rien que vous ne lui ayez autorisé. Pendant cette période, vous pouvez aussi lui faire exécuter une réaction, mais pour cela, vous devez également dépenser votre propre réaction.' || E'\n' || 'Chaque fois que la cible subit des dégâts, elle a droit à un nouveau jet de sauvegarde de Sagesse contre le sort. Si elle le réussit, le sort prend fin.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 5, la durée devient « concentration, jusqu''à 10 minutes ». Si vous lancez ce sort en utilisant un emplacement de niveau 6, la durée devient « concentration, jusqu''à 1 heure ». Si vous lancez ce sort en utilisant un emplacement de niveau 7, la durée devient « concentration, jusqu''à 8 heures ».',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/dominatebeast-spell-bg3-wiki-guide-64px.png'
),
(
    'Flétrissement',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Nécromancie'),
    '1 action',
    '9 mètres',
    'V, S',
    'instantanée',
    'L''énergie nécromantique inonde une créature de votre choix située à portée dans votre champ de vision, et draine ses fluides corporels et sa vitalité. La cible doit faire un jet de sauvegarde de Constitution. Si elle échoue, elle reçoit 8d8 dégâts nécrotiques, la moitié seulement si elle réussit sonjet. Ce sort n''a aucun effet sur les morts-vivants ou les créatures artificielles.' || E'\n' || 'Si vous visez une créature végétale ou une plante magique, elle est désavantagée lors du jet de sauvegarde et le sort lui inflige le maximum de dégâts possible.' || E'\n' || 'Si vous visez une plante non magique qui n''est pas une créature, comme un arbre ou un buisson, elle n''a pas droit au moindre jet de sauvegarde, mais se flétrit et meurt.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 5 ou plus, les dégâts augmentent de 1d8 par niveau au-delà du 4e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/necromancy-blight-spell-bg3-wiki-guide-64px.png'
),
(
    'Invisibilité supérieure',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Illusion'),
    '1 action',
    'contact',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Vous devenez invisible jusqu''à ce que le sort se termine, ou vous pouvez accorder cet effet à une créature consentante que vous touchez. Tout ce que porte la cible devient invisible tant que les objets restent sur sa personne.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/greaterinvisibility-spell-bg3-wiki-guide-64px.png'
),
(
    'Métamorphose',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    '18 mètres',
    'V, S, M (un cocon de chenille)',
    'concentration, jusqu''à 1 heure',
    'Ce sort change la forme d''une créature située à portée dans votre champ de vision. Une créature non consentante doit faire un jet de sauvegarde de Sagesse pour éviter cet effet. Le sort n''a aucun effet sur un métamorphe ou une créature à 0 point de vie.' || E'\n' || 'La transformation persiste pendant toute la durée du sort ou jusqu''à ce que la cible tombe à O point de vie ou meure. Vous pouvez donner comme nouvelle forme celle de n''importe quelle bête dont l''indice de dangerosité est égal ou inférieur à celui de la cible (ou à son niveau,si elle n''a pas d''indice de dangerosité). Les statistiques de jeu de la cible, y compris ses valeurs de caractéristique mentales, sont remplacées par celles de la bête choisie. Elle conserve en revanche son alignement et sa personnalité.' || E'\n' || 'La cible possède les points de vie correspondant à sa nouvelle forme. Quand elle reprend sa forme normale, elle se retrouve avec le nombre de points de vie qui était le sien avant la transformation. Si elle reprend sa forme normale parce qu''elle est tombée à O point de vie, les éventuels dégâts en excès sont déduits des points de vie de sa forme normale. Tant que les dégâts en excès ne réduisent pas les points de vie normaux de la créature à 0, elle n''est pas inconsciente.' || E'\n' || 'La nouvelle forme de la créature limite les actions qu''elle peut entreprendre et elle ne peut ni parler, ni lancer de sorts, ni effectuer une action qui nécessite de parler ou de se servir de ses mains.' || E'\n' || 'L''équipement de la cible fusionne avec sa nouvelle forme, mais elle ne peut pas activer, utiliser, ni manier la moindre pièce d''équipement et ne peut pas non plus bénéficier de ses effets.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/polymorph-spell-bg3-wiki-guide-64px.png'
),
(
    'Mur de feu',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '36 mètres',
    'V, S, M (un éclat de phosphore)',
    'concentration, jusqu''à 1 heure',
    'Vous créez un mur de feu sur une surface solide située à portée. Il peut faire un maximum de 18 mètres de long, 6 mètres de haut et 30 centimètres d''épaisseur, ou prendre une forme circulaire de 6 mètres de diamètre pour 6 mètres de haut et 30 centimètres d''épaisseur. Le mur est opaque et persiste toute la durée du sort.' || E'\n' || 'Quand le mur apparaît, chaque créature présente dans sa zone d''effet doit faire un jet de sauvegarde de Dextérité. Celles qui échouent reçoivent 5d8 dégâts de feu, les autres la moitié seulement.' || E'\n' || 'Une face du mur (celle de votre choix) inflige 5d8 dégâts de feu à chaque créature qui termine son tour à 3 mètres d''elle ou moins ou au sein du mur. Une créature qui pénètre dans le mur pour la première fois de son tour ou y termine son tour subit les mêmes dégâts. L''autre face du mur n''inflige pas de dégâts.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 5 ou plus, les dégâts augmentent de 1d8 par niveau au-delà du 4e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/walloffire-spell-bg3-wiki-guide-64px.png'
),
(
    'Peau de pierre',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'contact',
    'V, S, M (poussière de diamant d''une valeur de 100 po, que le sort consume)',
    'concentration, jusqu''à 1 heure',
    'Ce sort modifie la chair d''une créature consentante pour la rendre aussi dure que de la pierre. Jusqu''à la fin du sort, la cible est résistante aux dégâts non magiques contondants, perforants et tranchants.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/stoneskin-spell-bg3-wiki-guide-64px.png'
),
(
    'Porte dimensionnelle',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '150 mètres',
    'V',
    'instantanée',
    'Vous vous téléportez depuis votre position actuelle vers n''importe quel emplacement désiré situé à portée. Vous arrivez exactement à l''endroit voulu. Ce peut être un endroit que vous voyez, que vous visualisez ou que vous pouvez décrire en donnant sa distance et sa direction, par exemple << 60 mètres plus bas en ligne droite » ou « en montant au nord-ouest à un angle de 45° sur 90 mètres ».' || E'\n' || 'Vous pouvez amener des objets avec vous, tant que leur poids ne dépasse pas la charge que vous êtes capable de porter. Vous pouvez également emmener avec vous une créature consentante de votre taille ou d''une taille inférieure, qui peut transporter du matériel dans la limite de ses capacités. Elle doit se trouver dans un rayon de 1,50 mètre autour de vous quand vous lancez le sort.' || E'\n' || 'Si vous deviez arriver dans un emplacement déjà occupé par un objet ou une créature, vous et la créature qui voyage avec vous subissez chacun 4d6 dégâts de force tandis que le sort s''avère incapable de vous téléporter.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/dimensiondoor-spell-bg3-wiki-guide-64px.png'
),
(
    'Tempête de grêle',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '90 mètres',
    'V, S, M (une pincée de poussière et quelques gouttes d''eau)',
    'instantanée',
    'Des grêlons durs comme de la pierre s''abattent dans un cylindre de 6 mètres de rayon pour 12 mètres de haut, centré sur un point à portée. Chaque créature présente dans le cylindre doit faire un jet de sauvegarde de Dextérité. Celles qui échouent subissent 2d8 dégâts contondants et 4d6 dégâts de froid tandis que les autres en subissent la moitié seulement.' || E'\n' || 'Les grêlons transforment la zone en terrain difficile jusqu''à la fin de votre prochain tour.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 5 ou plus, les dégâts contondants augmentent de 1d8 par niveau au-delà du 4e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/ice_storm_spell_evocation_school_baldursgate3_wiki_guide_64px.png'
);