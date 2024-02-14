INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Armure d''Agathys',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'personnelle',
    'V, S, M (un verre d''eau)',
    '1 heure',
    'Une force magique protectrice vous entoure et se manifeste sous la forme d''une pellicule de givre spectral qui recouvre votre personne et votre équipement. Vous gagnez 5 points de vie temporaires pendant toute la durée du sort. Si une créature vous touche avec une attaque de corps à corps alors que vous possédez encore ces points de vie temporaires, elle subit 5 dégâts de froid.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les points de vie temporaires et les dégâts de froid augmentent de 5 par emplacement de sort au-delà du 1er.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/armor_of_agathys_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Maléfice',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action bonus',
    '27 mètres',
    'V, S, M (œil de triton pétrifié)',
    'concentration, jusqu''à 1 heure',
    'Vous lancez une malédiction sur une créature située à portée dans votre champ de vision. Tant que la durée du sort n''a pas expiré, vous infligez 1d6 dégâts nécrotiques supplémentaires à la cible chaque fois que vous la touchez avec une attaque. Lorsque vous lancez le sort, choisissez une caractéristique. La cible est désavantagée lors des tests concernant cette caractéristique.' || E'\n' || 'Si la cible tombe à O point de vie avant que le sort n''expire, vous pouvez utiliser votre action bonus lors d''un tour ultérieur pour affecter une nouvelle créature.' || E'\n' || 'Si la cible bénéficie du sort _lever une malédiction_, _maléfice_ se termine immédiatement.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 3 ou 4, vous pouvez vous concentrer sur le sort pendant 8 heures. Si vous utilisez un emplacement de niveau 5 ou plus, vous pouvez maintenir votre concentration sur le sort jusqu''à 24 heures.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/hex_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Représailles infernales',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 réaction en réponse aux dégâts que vous inflige une créature située dans votre champ de vision et dans un rayon de 18 mètres autour de vous',
    '18 mètres',
    'V, S',
    'instantanée',
    'Il vous suffit de pointer le doigt vers la créature qui vient de vous blesser pour qu''elle soit momentanément enveloppée d''un linceul de flammes infernales. Elle doit faire un jet de sauvegarde de Dextérité. Si elle échoue, elle subit 2d10 dégâts de feu, sinon la moitié seulement.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts augmentent de 1d10 par emplacement de sort au-delà du 1er.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/hellish_rebuke_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Serviteur invisible',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '18 mètres',
    'V, S, M (un bout de ficelle et un morceau de bois)',
    '1 heure',
    'Ce sort crée une force invisible, dépourvue de forme et d''intellect, mais capable d''accomplir des tâches simples sur votre ordre jusqu''à la fin du sort. Le serviteur se matérialise au sol, dans un emplacement inoccupé situé à portée. Il a une CA de 10, 1 pv, une Force de 2 et il est incapable d''attaquer. S''il tombe à 0 point de vie, le sort se termine.' || E'\n' || 'Une fois à chacun de vos tours, vous pouvez utiliser une action bonus pour ordonner mentalement à votre serviteur de se déplacer d''un maximum de 4,50 mètres et d''interagir avec un objet. Le serviteur peut accomplir des tâches simples, à la portée d''un domestique humain, comme aller chercher des affaires, faire le ménage, repriser, plier les habits, allumer la cheminée, servir les plats et la boisson, etc. Une fois que vous avez donné votre ordre, il fait de son mieux pour y obéir jusqu''à ce qu''il ait terminé. Il attend alors l''ordre suivant.' || E'\n' || 'Si vous ordonnez à votre serviteur d''accomplir une tâche qui l''éloigne à plus de 18 mètres de vous, le sort se termine.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/faerie_fire_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Tentacules d''Hadar',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    'personnelle (3 mètres de rayon',
    'V, S',
    'instantanée',
    'Vous invoquez la puissance d''Hadar, le Sombre Appétit. Des filaments d''énergie noire jaillissent de vous et fouettent toutes les créatures situées dans un rayon de 3 mètres. Chacune doit faire un jet de sauvegarde de Force. En cas d''échec, une créature subit 2d6 dégâts nécrotiques et ne peut pas utiliser de réaction jusqu''à son prochain tour. Une créature qui réussit son jet de sauvegarde subit seulement la moitié des dégâts et ne souffre pas d''autres effets.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts augmentent de 1d6 par emplacement de sort au-delà du 1er.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/arms_of_hadar_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Texte illusoire',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Illusion'),
    '1 minute',
    'contact',
    'S, M (de l''encre à base de plomb valant au minimum 10 po, que le sort consume)',
    '10 jours',
    'Vous écrivez sur un papier, un parchemin ou un autre matériau adapté à l''écriture et l''imprégnez d''une puissante illusion qui persiste pendant toute la durée du sort.' || E'\n' || 'À vos yeux et à ceux de toutes les créatures que vous désignez lors de l''incantation, l''écriture semble normale, de votre main, et transmet le message que vous aviez en tête en rédigeant le texte. Pour les autres personnes, vos écrits semblent appartenir à une langue inconnue ou magique complètement inintelligible, ou alors ils transmettent un message complètement différent de la réalité, rédigé d''une main qui n''est pas la vôtre et dans une autre langue de votre connaissance.' || E'\n' || 'Si quelqu''un dissipe le sort, l''illusion disparaît, mais le message original aussi.' || E'\n' || 'Une créature dotée de vision parfaite est capable de lire le message original.',
    NULL
);