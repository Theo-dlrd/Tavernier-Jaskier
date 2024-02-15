INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Epée de Mordenkainen',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
    '1 action',
    '18 mètres',
    'V, S, M (une épée en platine miniature avec le pommeau et la poignée en cuivre et zinc, d''une valeur de 250 po)',
    'concentration, jusqu''à 1 minute',
    'Vous créez un plan de force en forme d''épée qui plane à portée et persiste pendant toute la durée du sort.' || E'\n' || 'Dès que l''épée apparaît, vous faites une attaque de sort au corps à corps contre une cible de votre choix située dans un rayon de 1,50 mètre autour de l''épée. Si l''épée touche, la cible subit 3d10 dégâts de force. Tant que le sort n''est pas terminé, vous pouvez dépenser une action bonus à chacun de vos tours pour déplacer l''épée d''un maximum de 6 mètres afin de la conduire à un endroit situé dans votre champ de vision, puis répéter l''attaque contre la même cible ou une autre.',
    NULL
),
(
    'Image projetée',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Illusion'),
    '1 action',
    '750 kilomètres',
    'V, S, M (une petite réplique de votre personne construite avec des matériaux valant au moins 5 po)',
    'concentration, jusqu''à 1 jour',
    'Vous créez un double illusoire de votre personne qui persiste pendant toute la durée du sort. Ce double peut apparaître à n''importe quel endroit à portée, peu importent les obstacles interposés, à condition que vous l''ayez déjà vu auparavant. D''un point de vue visuel et auditif, l''illusion vous est tout à fait semblable; en revanche, elle est intangible. Si elle subit le moindre dégât, elle disparaît et le sort se termine.' || E'\n' || 'Vous pouvez utiliser votre action pour déplacer votre illusion jusqu''au double de votre vitesse, lui faire exécuter des gestes, la faire parler et se comporter comme bon vous semble. Elle imite vos manières à la perfection.' || E'\n' || 'Vous pouvez entendre et voir par l''intermédiaire des oreilles et des yeux de votre double, comme si vous occupiez son emplacement. À votre tour, vous pouvez dépenser une action bonus pour passer de l''utilisation de ses sens à celle des vôtres et inversement. Tant que vous utilisez ses sens, vous êtes aveugle et sourd à votre propre environnement.' || E'\n' || 'Les interactions physiques révèlent que l''image n''est qu''une illusion, car les objets la traversent. Si une créature utilise son action pour examiner l''image, elle comprend que c''est une illusion, à condition de réussir un test d''lntelligence (Investigation) contre le DD du jet de sauvegarde de votre sort. Si une créature perce l''illusion à jour, elle voit à travers l''image et les sons produits par l''illusion sonnent creux à ses oreilles.',
    NULL
),
(
    'Manoir somptueux de Mordenkainen',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
    '1 minute',
    '90 mètres',
    'V, S, M (un portrait miniature gravé dans de l''ivoire,un bout de marbre poli et une minuscule cuillère en argent,chaque objet devant valoir au minimum 5 po)',
    '24 heures',
    'Vous invoquez une demeure extraplanaire à portée qui persiste pendant toute la durée du sort. À vous de choisir où se situe sa seule entrée. Cette dernière scintille légèrement et mesure 1,50 mètre de large pour 3 mètres de haut. Vous et toutes les créatures que vous désignez lors de l''incantation êtes libres d''entrer et de sortir de cette demeure extraplanaire, tant que son portail reste ouvert. Vous pouvez l''ouvrir ou le fermer si vous vous tenez à 9 mètres ou moins de lui. Quand le portail est fermé, il est invisible.' || E'\n' || 'Un splendide vestibule s''ouvre derrière le portail et dessert de nombreuses pièces. Les lieux sont propres et l''atmosphère tiède et agréable.' || E'\n' || 'Vous pouvez disposer le plan des lieux comme bon vous semble, mais la surface totale ne peut pas excéder 50 cubes, chaque cube mesurant 3 mètres d''arête. L''endroit est meublé et décoré selon vos souhaits et contient assez de nourriture pour un banquet de neuf plats destiné à une centaine de convives au maximum. Une équipe de cent serviteurs presque translucides s''occupent de tous ceux qui pénètrent dans la demeure. À vous de décider de l''apparence visuelle de ces domestiques et de leur tenue. Ils obéissent aveuglément à tous vos ordres. Chacun est en mesure d''accomplir n''importe quelle tâche à la portée d''un serviteur humain ordinaire,mais les domestiques ne peuvent ni attaquer ni effectuer une action visant à nuire directement à une autre créature. Ils peuvent donc aller chercher des affaires, faire le ménage, raccommoder et plier les habits, allumer la cheminée, servir les plats et la boisson, etc. Ils peuvent se rendre partout dans la demeure, mais sont incapables de la quitter. Les meubles et autres objets créés à l''aide de ce sort se dissipent en volutes de fumée si quelqu''un les sort de la demeure. Quand le sort se termine, toutes les créatures qui se trouvent dans l''espace extradimensionnel sont expulsées dans les emplacements libres les plus proches de l''entrée.',
    NULL
),
(
    'Mirage',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Illusion'),
    '10 minutes',
    'vision',
    'V, S',
    '10 jours',
    'Vous donnez à un terrain d''au maximum 2,5 kilomètres carrés la même apparence visuelle, sonore, olfactive et générale qu''un autre type de terrain. En revanche, sa forme globale ne change pas. Vous pouvez maquiller un champ ou une route pour lui donner l''air d''un marais, d''une colline,d''une crevasse ou d''un autre terrain difficile ou impraticable. Vous pouvez faire passer une mare pour une prairie herbeuse, un précipice pour une pente douce ou un goulet rocailleux pour une route aussi large que lisse.' || E'\n' || 'Vous pouvez aussi modifier l''apparence des structures ou en ajouter là où n''y en a pas. En revanche, le sort est incapable de déguiser, dissimuler ou ajouter des créatures.' || E'\n' || 'L''illusion comprend des composantes auditives, visuelles, tactiles et olfactives, elle peut donc changer un sol dégagé en terrain difficile (ou inversement) ou gêner les déplacements dans la zone. Tout élément de terrain illusoire (comme une pierre ou une brindille) disparaît dès qu''il quitte la zone d''effet du sort.' || E'\n' || 'Les créatures dotées de vision parfaite distinguent le véritable terrain derrière l''illusion, mais les autres composantes restent en place; elles savent donc qu''elles ont affaire à une illusion, mais peuvent toujours interagir physiquement avec celle-ci.',
    NULL
),
(
    'Régénération',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
    '1 minute',
    'contact',
    'V, S, M (un moulin à prières et de l''eau bénite)',
    '1 heure',
    'Vous touchez une créature et stimulez ses capacités de guérison naturelle. La cible récupère 4d8+15 points de vie. Pendant toute la durée du sort, elle récupère aussi 1 point de vie au début de chacun de ses tours (10 points de vie par minute).' || E'\n' || 'Si la cible a des membres sectionnés (des doigts, des jambes, une queue, etc.), ils repoussent au bout de 2 minutes. Si vous disposez de la partie amputée et la maintenez contre le moignon, le sort ressoude instantanément le membre au moignon.',
    NULL
),
(
    'Résurrection',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Nécromancie'),
    '1 heure',
    'contact',
    'V, S, M (un diamant d''une valeur minimale de 1 000 po, que le sort consume)',
    'instantanée',
    'Vous touchez le cadavre d''une créature décédée depuis un siècle au maximum, qui n''est pas morte de vieillesse et qui n''est pas un mort-vivant. Si son âme est libre et consentante, la cible ressuscite avec tous ses points de vie.' || E'\n' || 'Ce sort neutralise les poisons et maladies ordinaires qui affectaient éventuellement la cible à sa mort, mais il ne guérit pas les maladies magiques, les malédictions et autres effets de même type. Il faut en débarrasser la cible avant de la ressusciter, sans quoi ils l''affligent de nouveau dès qu''elle revient à la vie.' || E'\n' || 'Ce sort referme les blessures mortelles et restaure les parties de corps éventuellement manquantes.' || E'\n' || 'Le retour d''entre les morts est une rude épreuve qui se traduit par un malus de -4 auxjets d''attaque et de sauvegarde ainsi qu''aux tests de caractéristique. Chaque fois que la cible termine un long repos, ce malus se réduit de 1 jusqu''à disparaître.' || E'\n' || 'Si ce sort est destiné à une créature décédée depuis un an ou plus, son incantation est extrêmement éprouvante. Après cela, vous ne pouvez plus lancer de sort et vous êtes désavantagé lors des jets d''attaque et de sauvegarde et des tests de caractéristique jusqu''à ce que vous ayez terminé un long repos.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/revivify_necromancy_spell_bg3_wiki_64px.png'
),
(
    'Symbole',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
    '1 minute',
    'contact',
    'V,S,M (mercure,phosphore et poudre de diamant et d''opale d''une valeur totale d''au moins 1 000 po, que le sort consume)',
    'jusqu''à dissipation ou déclenchement',
    'Quand vous lancez ce sort, vous inscrivez un glyphe néfaste sur une surface (comme une partie du sol, un pan de mur ou une table) ou dans un objet que l''on peut refermer pour le dissimuler, comme un livre, un parchemin ou un coffre au trésor. Si vous optez pour une surface, le glyphe peut couvrir une zone de 3 mètres de diamètre au maximum. Si vous choisissez un objet, il ne faut plus le déplacer par la suite: si quelqu''un le déplace à plus de 3 mètres de l''endroit où vous avez jeté ce sort, Je glyphe se brise et le sort se termine sans avoir été déclenché.' || E'\n' || 'Le glyphe est presque invisible. Pour le discerner, il faut réussir un test d''Intelligence (Investigation) contre le DD du jet de sauvegarde de votre sort.' || E'\n' || 'C''est lors de l''incantation que vous décidez de ce qui déclenchera le sort. Pour les glyphes tracés sur une surface quelconque, les déclencheurs les plus courants consistent à toucher le glyphe ou à se tenir dessus, à déplacer un objet recouvrant le glyphe, à s''approcher à une certaine distance du glyphe ou encore à manipuler l''objet sur lequel le glyphe est tracé. Pour les glyphes inscrits dans un objet, on trouve parmi les déclencheurs les plus répandus le fait d''ouvrir l''objet, de s''en approcher à une certaine distance, ou de voir ou de lire le glyphe.' || E'\n' || 'Vous pouvez affiner le déclencheur,de façon à ce que le sort s''active sous certaines conditions ou en fonction de certaines caractéristiques physiques (comme le poids ou la taille), ou selon un type de créature (pour un glyphe destiné aux guenaudes ou aux métamorphes par exemple). Vous pouvez aussi définir des conditions pour que certaines créatures ne déclenchent pas le glyphe, en prononçant un mot de passe, par exemple.' || E'\n' || 'Lorsque vous dessinez le glyphe, vous devez choisir l''une des options suivantes. Une fois le glyphe déclenché, il se met à luire et emplit une sphère de 18 mètres de rayon avec une faible lumière pendant 10 minutes, après quoi, le sort se termine. Chaque créature présente dans la sphère quand le glyphe s''active est visée par ses effets,tout comme une créature qui entre dans la sphère pour la première fois de son tour ou qui y termine son tour.' || E'\n' || '**Démence**: Chaque cible doit faire un jet de sauvegarde d''Intelligence. Celles qui échouent deviennent folles pendant 1 minute. Une créature démente ne peut pas entreprendre la moindre action,ne comprend pas ce que disent les autres créatures, ne peut pas lire et ne parle que dans un charabia incompréhensible. C''est le MD qui contrôle ses déplacements qui deviennent complètement erratiques.' || E'\n' || '**Désespoir**: Chaque cible doit faire un jet de sauvegarde de Charisme. Celles qui échouent sont submergées par le désespoir pendant 1 minute. Pendant tout ce temps, elles ne peuvent pas attaquer ni viser une créature avec une capacité, un sort ou un autre effet magique hostiles.' || E'\n' || '**Discorde**: Chaque cible doit faire unjet de sauvegarde de Constitution. Celles qui le ratent se mettent à se quereller avec les autres créatures pendant 1 minute. Pendant tout ce temps, elles sont incapables de tenir une conversation sensée et sont désavantagées lors des jets d''attaque et des tests de caractéristique.' || E'\n' || '**Douleur**: Chaque cible doit faire un jet de sauvegarde de Constitution. Celles qui échouent sont neutralisées par une douleur insoutenable pendant 1 minute.' || E'\n' || '**Étourdissement**: Chaque cible doit faire un jet de sauvegarde de Sagesse. Celles qui échouent sont étourdies pendant 1 minute.' || E'\n' || '**Frayeur**: Chaque cible doit faire un jet de sauvegarde de Sagesse. Celles qui échouent sont terrorisées pendant 1 minute. Une cible terrorisée lâche tout ce qu''elle tient et doit s''éloigner du glyphe de 9 mètres au minimum à chacun de ses tours, dans la mesure du possible.' || E'\n' || '**Mort**: Chaque cible doit faire un jet de sauvegarde de Constitution. Celles qui échouent subissent lOdlO dégâts nécrotiques, les autres la moitié seulement.' || E'\n' || '**Sommeil**: Chaque cible doit faire un jet de sauvegarde de Sagesse. Celles qui échouent tombent inconscientes pendant 10 minutes. Une telle créature se réveille si elle subit des dégâts ou si quelqu''un utilise son action pour la réveiller en la secouant ou la giflant.',
    NULL
);