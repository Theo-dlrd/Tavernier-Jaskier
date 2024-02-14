INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Apaisement des émotions',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Enchantement'),
    '1 action',
    '18 mètres',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Vous tentez de supprimer les émotions fortes au sein d''un groupe de gens. Chaque humanoïde qui se trouve dans une sphère de 6 mètres de rayon centrée autour d''un point de votre choix situé à portée doit faire un jet de sauvegarde de Charisme. Une créature peut décider de rater volontairement ce jet, sachant que lorsqu''une créature rate son jet de sauvegarde, vous l''affectez avec l''un des deux effets suivants, à votre choix.' || E'\n' || 'Vous débarrassez temporairement la cible de tout état charmé ou terrorisé. Une fois le sort terminé, l''état s''applique de nouveau, à moins que sa durée n''ait expiré.' || E'\n' || 'Sinon, vous rendez la cible indifférente vis-à-vis des créatures de votre choix, envers lesquelles elle était auparavant hostile. Cette indifférence prend fin si la cible est attaquée ou affectée par un sort néfaste, ou bien si elle voit l''un de ses amis se faire ainsi molester. La cible redevient hostile dès que le sort se termine, à moins que le MD n''en décide autrement.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/calm_emotions_spell_bg3_wiki_guide_75px.png'
),
(
    'Bouche magique',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Illusion'),
    '1 minute',
    '9 mètres',
    'V, S, M (un rayon de miel et de la poussière de jade d''une valeur de 10 po, que le sort consume)',
    'jusqu''à dissipation',
    'Vous implantez un message dans un objet situé à portée. On entend le message dès que les conditions le déclenchant sont remplies. Choisissez un objet situé dans votre champ de vision qui n''est ni porté ni transporté par une autre créature. Prononcez ensuite le message, qui doit se composer de 25 mots au maximum, mais peut se répéter pendant un maximum de 10 minutes. Enfin, déterminez les circonstances dans lesquelles Je message s''activera.' || E'\n' || 'Quand les conditions de déclenchement sont remplies, une bouche magique apparaît sur l''objet et récite le message avec la même voix que vous et au volume où vous l''avez prononcé. Si l''objet choisi possède une bouche ou quelque chose qui y ressemble (comme la bouche d''une statue), la bouche magique apparaît de manière à donner l''impression que les paroles sortent des lèvres de l''objet. Lors de l''incantation, vous pouvez décider que le sort se termine une fois le message transmis ou qu''il reste actif et répète le message chaque fois que les conditions de déclenchement sont remplies.' || E'\n' || 'Ces dernières peuvent être aussi génériques ou spécifiques que vous le désirez, mais elles doivent se baser sur des données visuelles ou audibles, perceptibles dans un rayon de 9 mètres autour de l''objet. Par exemple, vous pouvez ordonner à la bouche de parler dès qu''une créature approche à 9 mètres ou moins de l''objet ou quand une cloche d''argent retentit dans un rayon de 9 mètres.',
    NULL
),
(
    'Chauffer le métal',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
    '1 action',
    '18 mètres',
    'V, S, M (un bout de fer et une flamme)',
    'concentration, jusqu''à 1 minute',
    'Choisissez un objet manufacturé en métal, comme une arme métallique ou une armure métallique lourde ou intermédiaire. Il doit être situé à portée et dans votre champ de vision et se met alors à luire d''un rouge incandescent. Une créature en contact physique avec l''objet reçoit 2d8 dégâts de feu lorsque vous lancez le sort. Vous pouvez dépenser une action bonus à chacun de vos tours suivants jusqu''à la fin du sort pour infliger de nouveau ce montant de dégâts.' || E'\n' || 'Si une créature tient l''objet qui lui inflige des dégâts ou le porte sur elle, elle doit réussir un jet de sauvegarde de Constitution, sans quoi elle le lâche, si elle peut. Si elle le conserve, elle est désavantagée lors des jets d''attaque et des tests de caractéristique jusqu''au début de votre prochain tour.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 3 ou plus, les dégâts augmentent de 1d8 par niveau au-delà du 2e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/heat_metal_spell_baldursgate3_wiki_guide_150px.png'
),
(
    'Localiser des animaux ou des plantes',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Divination'),
    '1 action',
    'contact',
    'V, S, M (des poils de chien de chasse)',
    'instantanée',
    'Décrivez ou nommez un type spécifique de bête ou de plante. Vous vous concentrez sur la voix de la nature qui vous entoure et découvrez dans quelle direction et à quelle distance se trouve le spécimen le plus proche dans un rayon de 7,5 kilomètres,s''il y en a.',
    NULL
),
(
    'Messager animal',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Enchantement'),
    '1 action',
    '9 mètres',
    'V,S,M (un peu de nourriture)',
    '24 heures',
    'Grâce à ce sort, vous chargez un animal de livrer un message pour vous. Choisissez une bête de taille Très Petite située à portée dans votre champ de vision, comme un écureuil ,un geai ou une chauve-souris. Vous lui précisez l''endroit où se rendre (où vous devez vous être déjà vous-même rendu auparavant) et donnez une description générale du destinataire, comme « un homme ou une femme vêtus de l''uniforme de la garde de la ville » ou « un nain roux avec un chapeau pointu ». Vous prononcez ensuite votre message, de vingt-cinq mots au maximum. La bête chargée du message fait alors route vers la destination indiquée pendant toute la durée du sort. Elle parcourt dans les 75 kilomètres par 24 heures si elle vole ou dans les 35 kilomètres si elle en est incapable.' || E'\n' || 'Quand elle arrive sur place, elle transmet votre message à la créature que vous avez décrite, imitant le son de votre voix. Le messager parle uniquement à une créature correspondant à la description que vous lui avez donnée. S''il n''atteint pas sa destination avant la fin du sort, le message est perdu et l''animal retourne là où vous avez lancé le sort.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 3 ou plus, la durée du sort augmente de 48 heures par niveau au-delà du 2e.',
    NULL
),
(
    'Silence',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Illusion'),
    '1 action',
    '36 mètres',
    'V, S',
    'concentration, jusqu''à 10 minutes',
    'Pendant toute la durée du sort, aucun son ne peut se créer au sein d''une sphère de 6 mètres de rayon centrée sur un point de votre choix situé à portée, ni la traverser. Une créature ou un objet entièrement contenu dans la sphère sont immunisés contre les dégâts de tonnerre, et les créatures entièrement contenues dans la sphère sont sourdes. Il est impossible de lancer un sort à composante verbale dans la sphère.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/silence_spell_baldursgate3_wiki_guide_150px_2.png'
);