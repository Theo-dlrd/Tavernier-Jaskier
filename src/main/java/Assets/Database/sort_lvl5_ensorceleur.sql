INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Animation des objets',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    '36 mètres',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Les objets prennent vie sur votre ordre. Choisissez jusqu''à dix objets non magiques à portée que personne ne porte ni ne transporte. Les cibles de taille Moyenne comptent comme deux objets, celles de taille Grande comme quatre et celles de taille Très Grande comme huit. Vous ne pouvez pas animer d''objet de taille supérieure. Chaque cible s''anime et devient une créature placée sous votre contrôle jusqu''à la fin du sort ou jusqu''à tomber à O point de vie.' || E'\n' || 'Par une action bonus, vous pouvez donner un ordre mental à toute créature créée via ce sort qui se trouve au maximum à 150 mètres de vous (si vous en contrôlez plusieurs, vous pouvez donner un ordre à l''une d''elles, certaines d''entre elles ou toutes à la fois, à condition de donner le même ordre à toutes). À vous de décider quelle action la créature va entreprendre et à quel endroit elle se déplacera au cours du tour suivant, mais vous pouvez aussi lui donner un ordre plus générique, comme de garder une salle ou un couloir. En l''absence d''ordre, la créature se contente de se défendre contre les créatures hostiles. Une fois qu''elle a reçu un ordre, elle continue à le suivre jusqu''à ce qu''elle ait accompli sa tâche.' || E'\n' || '**STATISTIQUES DES OBJETS ANIMÉS**' || E'\n' || '**Taille : PV - CA - Attaque - For - Dex**'  || E'\n' || 'Très petite : 20 - 18 - +8 pour toucher, 1d4+4 dégâts - 4 - 18' || E'\n' || 'Petite : 25 - 16 - +6 pour toucher, 1d8+2 dégâts - 6 - 14' || E'\n' || 'Moyenne : 40 - 13 - +5 pour toucher, 2d6+1 dégâts - 10 - 12' || E'\n' || 'Grande : 50 - 10 - +5 pour toucher, 2d10+2 dégâts - 14 - 10' || E'\n' || 'Très grande : 80 - 10 - +8 pour toucher, 2d12+4 dégâts - 18 - 6',
    NULL
),
(
    'Apparence trompeuse',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Illusion'),
    '1 action',
    '9 mètres',
    'V, S',
    '8 heures',
    'Ce sort vous permet de modifier l''apparence d''autant de créatures que vous voulez, à condition qu''elles se trouvent à portée et dans votre champ de vision. Vous donnez à chacune d''entre elles une nouvelle apparence illusoire. Une cible non consentante peut faire un jet de sauvegarde de Charisme. Si elle le réussit, le sort ne l''affecte pas.' || E'\n' || 'Ce sort change l''apparence physique, mais aussi les habits, les armures, les armes et le reste de l''équipement. Vous pouvez faire croire que chaque créature affectée est plus petite ou plus grande de 30 centimètres maximum qu''en réalité, lui donner l''air grosse, maigre ou entre les deux. Vous ne pouvez pas changer le type de son corps, vous devez choisir une forme possédant la même conformation qu''elle au niveau des membres. En dehors de cela, les détails de l''illusion sont laissés à votre imagination. Le sort persiste pendant toute sa durée ou jusqu''à ce que vous utilisiez une action pour le révoquer.' || E'\n' || 'Les changements apportés par le sort ne résistent pas à un examen physique. Par exemple, si vous l''utilisez pour ajouter un chapeau à la tenue de la cible, les objets passent au travers et toute personne qui essaie de le toucher ne sentira que de l''air ou des cheveux et un crâne. Si vous utilisez le sort pour la faire paraître plus mince qu''en réalité, la main de quelqu''un qui tente de la toucher se heurtera à son corps alors que, visuellement, elle semble encore dans le vide.' || E'\n' || 'Une créature peut utiliser son action pour examiner une cible et faire un test d''lntelligence (Investigation) contre le DD du jet de sauvegarde du sort. Si elle réussit, elle comprend que la cible est déguisée.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/seeming-spell-bg3-wiki-guide-64px.png'
),
(
    'Cercle de téléportation',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 minute',
    '3 mètres',
    'V, M (des craies et des encres rares contenant des extraits de pierres précieuses pour une valeur de 50 po, que le sort consume)',
    '1 round',
    'Lorsque vous lancez ce sort, vous tracez un cercle de 3 mètres de diamètre au sol et y inscrivez des symboles qui relient l''endroit où vous vous trouvez actuellement à un cercle de téléportation permanent de votre choix dont vous connaissez la séquence de symboles et qui se trouve sur le même plan d''existence que vous. Un portail scintillant s''ouvre dans le cercle que vous avez tracé et reste ouvert jusqu''à la fin de votre prochain tour. Toute créature qui franchit ce portail apparaît instantanément dans un rayon de 1,50 mètre autour du cercle de destination ou dans l''espace inoccupé le plus proche si le reste est occupé.' || E'\n' || 'Nombre de temples majeurs, de guildes et d''autres lieux d''importance possèdent des cercles de téléportation permanents tracés quelque part dans leur enceinte. Chacun de ces cercles utilise une séquence de symboles uniques : une série de runes·magiques disposées selon un motif particulier. Lorsque vous apprenez à lancer ce sort, vous apprenez la séquence associée à deux destinations situées sur le plan matériel et déterminées par le MD. Vous pouvez apprendre d''autres séquences de symboles au cours de vos aventures. Pour en mémoriser une, vous devez l''étudier pendant 1 minute.' || E'\n' || 'Vous pouvez créer un cercle de téléportation permanent en lançant ce sort au même endroit tous les jours pendant un an. Vous n''avez pas besoin d''utiliser le cercle pour vous téléporter quand vous lancez ce sort pour cela.',
    NULL
),
(
    'Cône de froid',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    'personnelle (cône de 18 mètres)',
    'V, S, M (un petit cône de cristal ou de verre)',
    'instantanée',
    'Une bouffée d''air froid jaillit de vos mains. Toutes les créatures présentes dans un cône de 18 mètres doivent faire un jet de sauvegarde de Constitution. Celles qui le ratent subissent 8d8 dégâts de froid, les autres la moitié seulement.' || E'\n' || 'Une créature qui succombe suite à ce sort se transforme en statue de glacejusqu''à ce qu''elle fonde.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 6 ou plus, les dégâts augmentent de 1d8 par niveau au-delà du 5e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/coneofcold-spell-bg3-wiki-guide-64px.png'
),
(
    'Création',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Illusion'),
    '1 minute',
    '9 mètres',
    'V, S, M (un petit bout de matière de même type que l''objet que vous voulez créer)',
    'spéciale',
    'Vous tirez des bribes de matière ombreuse de l''Obscur pour créer à portée des objets inertes en matière végétale: du tissu, de la corde, du bois ou des objets similaires. Ce sort permet aussi de créer des objets minéraux comme de la pierre, du cristal ou du métal. L''objet créé ne doit pas être plus grand qu''un cube de 1,50 mètre d''arête et doit impérativement être d''une forme et d''un matériau que vous avez déjà vus.' || E'\n' || 'La durée du sort dépend du matériau choisi pour façonner l''objet. S''il est fait de plusieurs matières, c''est la durée la plus courte qui s''applique.' || E'\n' || '** Matériau - Durée **' || E'\n' || '* Matière végétale -> 1 jour' || E'\n' || '* Pierre ou cristal -> 12 heures' || E'\n' || '* Métaux précieux -> 1 heure' || E'\n' || '* Gemmes -> 10 minutes' || E'\n' || '* Adamantium ou mithral -> 1 minute' || E'\n' || 'Si vous utilisez les matériaux créés via ce sort comme composantes matérielles pour un autre sort, ce dernier échoue.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 6 ou plus, l''arête du cube augmente de 1,50 mètre par niveau au-delà du 5e.',
    NULL
),
(
    'Dominer un humanoïde',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '18 mètres',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Vous tentez d''envoûter un humanoïde situé à portée et dans votre champ de vision. Il doit réussir un jet de sauvegarde de Sagesse, sans quoi vous le charmez pendant toute la durée du sort. Il est avantagé lors du jet de sauvegarde si vous ou des créatures amicales envers vous êtes en train de le combattre.' || E'\n' || 'Tant que l''humanoïde est charmé, vous entretenez un lien télépathique avec lui qui persiste tant que vous vous trouvez sur le même plan d''existence. Vous pouvez utiliser ce lien télépathique pour donner des ordres à cette créature tant que vous êtes conscient (ce qui ne vous demande pas d''action). Elle fait de son mieux pour vous obéir. Vous pouvez lui donner un ordre simple et générique, comme « attaque cette créature », « cours jusque là-bas » ou « va chercher cet objet ». Si elle ne reçoit pas de nouvelles instructions de votre part une fois l''ordre exécuté, elle se contente de se défendre et de se préserver au mieux.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/dominateperson-spell-bg3-wiki-guide-64px.png'
),
(
    'Fléau d''insectes',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '90 mètres',
    'V, S, M (un peu de sucre en poudre, quelques graines de céréales et une tache de graisse)',
    'concentration, jusqu''à 10 minutes',
    'Un essaim de sauterelles grouillantes remplit une sphère de 6 mètres de rayon centrée sur un point de votre choix situé à portée. La sphère s''étend en contournant les angles et persiste pendant toute la durée du sort. La visibilité est réduite dans la zone affectée. L''intérieur de la sphère devient un terrain difficile.' || E'\n' || 'Quand la sphère d''insectes apparaît, chaque créature prise à l''intérieur doit faire un jet de sauvegarde de Constitution. Une créature subit 4d10 dégâts perforants si elle rate sonjet, la moitié seulement si elle le réussit. Une créature doit faire le même jet quand elle entre dans la sphère pour la première fois de son tour ou quand elle y termine son tour.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 6 ou plus, les dégâts augmentent de 1d1O par niveau au-delà du 5e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/insect_plague_spell_conjuration_school_baldursgate3_wiki_guide_64px.png'
),
(
    'Immobiliser un monstre',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '27 mètres',
    'V, S, M (un petit morceau de fer bien droit)',
    'concentration, jusqu''à 1 minute',
    'Choisissez une créature située à portée dans votre champ de vision. EUe doit réussir un jet de sauvegarde de Sagesse, sans quoi elle est paralysée pour toute la durée du sort. Ce sort est sans effet sur les morts-vivants. À la fin de chacun de ses tours, la cible a droit à un nouveau jet de sauvegarde de Sagesse. Si elle le réussit, le sort se termine.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 6 ou plus, vous pouvez viser une créature de plus par niveau au-delà du 5e_ Les créatures visées doivent se trouver à 9 mètres ou moins les unes des autres au moment où vous lancez le sort.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/holdmonster-spell-bg3-wiki-guide-64px.png'
),
(
    'Mur de pierre',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '36 mètres',
    'V, S, M (un petit bloc de granite)',
    'concentration, jusqu''à 10 minutes',
    'Vous créez un mur de pierre non magique qui se matérialise en un point de votre choix à portée. Il fait 15 centimètres d''épaisseur et se compose de dix panneaux de 3 mètres sur 3. Chaque panneau doit être contigu à un autre. Sinon, vous pouvez opter pour des panneaux de 3 mètres sur 6 de seulement 7,50 centimètres d''épaisseur.' || E'\n' || 'Si le mur passe par l''emplacement d''une créature lorsqu''il apparaît, il la repousse d''un côté ou de l''autre (à vous de choisir). Si une créature est placée de telle manière qu''elle devrait se retrouver entourée de toutes parts par le mur (ou par le mur et une autre surface solide), elle doit faire un jet de sauvegarde de Dextérité. Si elle le réussit, elle peut utiliser sa réaction pour se déplacer à sa vitesse au maximum afin de ne plus être encerclée par le mur.' || E'\n' || 'Le mur peut prendre la forme que vous désirez, mais il ne peut pas occuper le même emplacement qu''une créature ou un objet. Il n''est pas forcément vertical et n''a pas besoin de reposer sur des fondations solides. En revanche, il doit impérativement fusionner avec de la pierre existante lui servant de soutien solide. Vous pouvez donc utiliser ce sort pour jeter un pont au-dessus d''un fossé ou créer une rampe.' || E'\n' || 'Si vous créez une longueur de plus de 6 mètres, vous devez réduire de moitié la taille de chaque panneau pour créer des supports. Vous pouvez façonner la silhouette générale du mur pour le doter de créneaux, de remparts et autres.' || E'\n' || 'Le mur est un objet de pierre que l''on peut endommager et on peut donc y ouvrir des brèches. Chaque panneau a une CA de 15 et 30 points de vie par section de 2,5 centimètres d''épaisseur. Si un panneau tombe à O point de vie, il est détruit, ce qui peut entraîner l''effondrement des panneaux adjacents, au choix du MD.' || E'\n' || 'Si vous restez concentré sur le sort pendant toute sa durée, le mur devient une structure permanente et ne peut plus être dissipé, sinon il disparaît à la fin du sort.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/wallofstone-spell-bg3-wiki-guide-64px.png'
),
(
    'Nuage mortel',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '36 mètres',
    'V, S',
    'concentration, jusqu''à 10 minutes',
    'Vous créez une sphère de 6 mètres de rayon faite d''un brouillard vert jaunâtre empoisonné. Il est centré sur un point de votre choix situé à portée. Le brouillard s''étend en contournant les coins au besoin. Il persiste pendant toute la durée du sort ou jusqu''à ce qu''un vent fort le disperse et mette un terme au sort. La visibilité est lourdement obstruée dans sa zone d''effet.' || E'\n' || 'Quand une créature entre dans la zone du sort pour la première fois de son tour ou qu''elle y démarre son tour, elle doit faire un jet de sauvegarde de Constitution. Elle subit 5d8 dégâts de poison si elle rate son jet et seulement la moitié si elle le réussit. Le brouillard affecte même les créatures qui retiennent leur souffle ou qui n''ont pas besoin de respirer.' || E'\n' || 'Le brouillard s''éloigne de vous sur une distance de 3 mètres au début de chacun de vos tours, rampant à la surface du sol. Comme ses vapeurs sont plus lourdes que l''air, il s''enfonce dans les replis du terrain et s''infiltre même dans les ouvertures.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 6 ou plus, les dégâts augmentent de 1d8 par niveau au-delà du 5e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/cloudkill_spell_conjuration_school_baldursgate3_wiki_guide_64px.png'
),
(
    'Télékinésie',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    '18 mètres',
    'V, S',
    'concentration, jusqu''à 10 minutes',
    'Vous devenez capable de déplacer ou de manipuler des créatures ou des objets par la pensée. Lorsque vous lancez ce sort, puis en tant qu''action à chaque round pendant toute la durée du sort, vous pouvez exercer votre force de volonté sur une créature ou un objet situés à portée et dans votre champ de vision, ce qui provoque l''effet approprié indiqué plus bas. Vous pouvez affecter la même cible, round après round, ou en choisir une nouvelle quand vous le désirez. Si vous changez de cible, la précédente n''est plus affectée.' || E'\n' || '**Créatures**: Vous pouvez essayer de déplacer une créature de taille Très Grande ou inférieure. Faites un test de caractéristique avec votre caractéristique d''incantation, opposé au test de Force de la cible. Si vous l''emportez, vous déplacez la créature d''un maximum de 9 mètres dans la direction de votre choix, y compris en hauteur, mais pas hors de portée du sort. Jusqu''à la fin de votre prochain tour, la créature est entravée dans votre étreinte télékinétique. Une créature soulevée dans les airs reste suspendue dans le vide.' || E'\n' || 'Lors des rounds suivants, vous pouvez utiliser votre action pour maintenir votre prise télékinétique sur la cible en répétant les tests opposés.' || E'\n' || '**Objets**: Vous pouvez essayer de déplacer un objet pesant au maximum 500 kilos. Si cet objet n''est ni porté ni transporté, vous le déplacez automatiquement d''un maximum de 9 mètres dans la direction de votre choix, mais pas hors de portée du sort.' || E'\n' || 'Si l''objet est porté ou transporté par une créature, faites un test de caractéristique avec votre caractéristique d''incantation, opposé au test de Force de cette créature. Si vous l''emportez, vous éloignez l''objet de cette créature sur un maximum de 9 mètres dans la direction de votre choix, mais pas hors de portée du sort.' || E'\n' || 'Vous exercez un contrôle précis sur les objets pris dans votre étreinte télékinétique, vous pouvez donc manipuler un outil basique, ouvrir une porte ou un récipient, déposer un objet dans un récipient ou en retirer un, ou encore verser le contenu d''une fiole.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/telekinesis-spell-bg3-wiki-guide-64px.png'
);