INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Allié planaire',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '10 minutes',
        '18 mètres',
        'V, S',
        'instantanée',
        'Vous demandez de l''aide à une entité appartenant à un autre monde. Vous devez connaître cet être, que ce soit un dieu, un primordial, un prince démoniaque ou une autre créature à la puissance cosmique. L''entité vous envoie un céleste, un élémentaire ou un fiélon qui lui est loyal. Cette créature apparaît dans un emplacement libre à portée. Si vous connaissez le nom d''une créature spécifique, vous pouvez le mentionner lors de l''incantation pour demander à ce que ce soit elle que l''entité vous envoie, bien qu''elle puisse tout de même vous envoyer un autre émissaire (au MD de décider).' || E'\n' || 'Quand la créature apparaît, elle n''a aucune obligation de se comporter d''une manière particulière. Vous pouvez lui demander d''accomplir un service rémunéré, mais elle n''est pas obligée d''accepter. Votre requête peut être très simple (nous faire passer en volant au-dessus de ce précipice, nous aider à livrer un combat...) ou plus complexe (espionner nos ennemis, nous protéger lors de l''exploration de ce donjon...). Pour négocier un service, vous devez être en mesure de communiquer avec la créature.' || E'\n' || 'Le paiement peut se faire sous diverses formes. Un céleste peut demander une importante donation en or ou en objets magiques à un temple allié tandis qu''un fiélon peut exiger un sacrifice vivant ou un trésor. Certaines créatures monnayent leurs services contre une quête à accomplir de votre côté.' || E'\n' || 'En règle générale, une tâche qui s''accomplit en quelques minutes se paie 100 po la minute. Une tâche qui demande plusieurs heures coûte 1 000 po de l''heure, et une tâche effectuée sur plusieurs jours (10 au maximum) vaut 10 000 po la journée. Le MD peut modifier le montant en fonction des circonstances dans lesquelles vous lancez le sort. Si la tâche à accomplir s''accorde avec l''éthique de la créature, elle peut réduire son salaire de moitié ou même y renoncer. Les tâches qui ne présentent aucun risque coûtent souvent la moitié du prix indiqué précédemment tandis que les missions particulièrement dangereuses valent parfois bien plus cher. Une créature accepte rarement une tâche visiblement suicidaire.' || E'\n' || 'Une fois que la créature a accompli la tâche demandée ou quand la durée de service décidée est arrivée à son terme, elle retourne sur son plan d''origine après vous avoir fait son rapport, si la tâche l''exige et qu''elle est en mesure de le faire.' || E'\n' || 'Si vous êtes incapable de vous mettre d''accord avec la créature sur le prix de ses services, elle retourne immédiatement sur son plan natal.' || E'\n' || 'Une créature enrôlée dans votre groupe compte comme un membre à part entière et reçoit sa part de points d''expérience.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/planar-ally-spells-bg3-wiki-guide-min.png'
    ),
    (
        'Barrière de lames',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        '27 mètres',
        'V, S',
        'concentration, jusqu''à 10 minutes',
        'Vous créez un mur vertical constitué de lames toumoyantes faites d''énergie magique et tranchantes comme des rasoirs. Le mur apparaît à portée et persiste pour toute la durée du sort. Vous pouvez créer un mur droit d''un maximum de 30 mètres de long, 6 mètres de haut et 1,50 mètre d''épaisseur, ou un mur circulaire d''un maximum de 18 mètres de diamètre, 6 mètres de haut et 1,50 mètre d''épaisseur. Le mur offre un abri important aux créatures qui se trouvent derrière lui, et son espace est traité comme un terrain difficile.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/blade-barrier-spells-bg3-wiki-guide.png'
    ),
    (
        'Contamination',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Nécromancie'),
        '1 action',
        '18 mètres',
        'V, S',
        'instantanée',
        'Vous transmettez une maladie virulente à une créature située à portée dans votre champ de vision. La cible doit faire un jet de sauvegarde de Constitution. Si elle échoue, elle subit 14d6 dégâts nécrotiques, la moitié seulement si elle réussit. Ces ne peuvent pas faire passer les points de vie de la cible au-dessous de 1. Si la cible rate son jet de sauvegarde, son total de points de vie maximum est réduit, pendant 1 heure, d''un montant égal aux dégâts nécrotiques reçus. Tout effet qui guérit les maladies ramène le maximum de points de vie de la cible à la normale sans avoir besoin d''attendre une heure.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/harm-spells-bg3-wiki-guide-min.png'
    ),
    (
        'Festin des héros',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '10 minutes',
        '9 mètres',
        'V, S, M (un bol incrusté de gemmes d''une valeur minimale de 1 000 po, que le sort consume)',
        'instantanée',
        'Vous matérialisez un grand festin, comprenant des boissons et des mets de grande qualité. Il faut une heure pour terminer le festin qui disparaît au bout de cette durée. Ses effets bénéfiques se manifestent uniquement une fois cette heure écoulée. Douze créatures au maximum peuvent vous accompagner lors de ce repas.' || E'\n' || 'Une créature qui participe au festin bénéficie de plusieurs avantages. Elle est guérie de toutes les maladies et de tous les poisons qui l''affectaient, elle est immunisée contre le poison et l''état terrorisé, et elle est avantagée lors de tous ses jets de sauvegarde de Sagesse. Son maximum de points de vie augmente de 2d10 et elle gagne le même nombre de points de vie. Ces avantages persistent pendant 24 heures.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/spell_conjuration_heroesfeast_(2)_baldurs_gate_3_wiki_guide_65px.png'
    ),
    (
        'Guérison',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        '18 mètres',
        'V, S',
        'instantanée',
        'Choisissez une créature située à portée dans votre champ de vision. Une bouffée d''énergie positive la traverse et lui rend 70 points de vie. Ce sort met aussi un terme à la cécité, la surdité et toutes les maladies qui l''affectent. Ce sort n''a aucun effet sur les créatures artificielles et les morts-vivants.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 7 ou plus, la quantité de soins prodigués augmente de 10 points par niveau au-delà du 6e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/heal-spells-bg3-wiki-guide-min.png'
    ),
    (
        'Interdiction',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '10 minutes',
        'contact',
        'V, S, M (un peu d''eau bénite, un encens rare et un rubis en poudre d''une valeur minimale de 1 000 po)',
        '1 jour',
        'Vous créez un sceau empêchant les déplacements magiques dans une zone de 3 700 m2 au sol et d''une hauteur de 9 mètres. Pendant toute la durée du sort, les créatures ne peuvent pas se téléporter dans la zone ni y entrer via un portail comme celui issu du sort du même nom. Le sort protège la zone contre tous les modes de déplacement planaire et empêche donc les créatures d''y entrer en passant par le plan astral, le plan éthéré, la Féerie sauvage, !''Obscur ou en utilisant un sort de _changement de plan_.' || E'\n' || 'De plus, le sort blesse les créatures des types choisis lors de son incantation. Choisissez un ou plusieurs de ces types : célestes, élémentaires, fées, fiélons, morts-vivants. Quand une créature d''un type choisi pénètre dans la zone pour la première fois de son tour ou y commence son tour, elle subit 5d10 dégâts radiants ou nécrotiques (à vous de choisir quand vous lancez le sort).' || E'\n' || 'Vous pouvez décider d''un mot de passe lors de l''incantation du sort. Si une créature le prononce en entrant dans la zone, elle ne subit pas de dégâts.' || E'\n' || 'La zone d''effet de ce sort ne peut pas se superposer à celle d''un autre sort d''interdiction. Si vous lancez interdiction tous les jours pendant 30 jours au même endroit, le sort persiste jusqu''à dissipation et les composantes matérielles sont consommées lors de la dernière incantation.',
        NULL
    ),
    (
        'Mot de retour',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 action',
        '1,50 mètre',
        'V',
        'instantanée',
        'Vous et un maximum de cinq créatures consentantes situées dans un''rayon de 1,50 mètre autour de vous vous téléportez immédiatement dans un sanctuaire précédemment choisi. Vous et les créatures qui se téléportent éventuellement avec vous apparaissez dans l''emplacement inoccupé le plus proche de l''endroit que vous avez désigné lorsque vous avez préparé votre sanctuaire (voir plus bas). Si vous lancez ce sort sans avoir préparé un sanctuaire au préalable, il n''a aucun effet.' || E'\n' || 'Pour désigner un sanctuaire, vous devez lancer ce sort en un lieu dédié à votre divinité, comme un temple, ou entretenant des liens étroits avec elle. Si vous tentez de lancer ainsi le sort dans une zone qui n''est pas dédiée à votre divinité, il n''a aucun effet.',
        NULL
    );