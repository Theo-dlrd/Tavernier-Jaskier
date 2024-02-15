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
    'Vous donnez à un terrain d''au maximum 2,5 kilomètres carrés la même apparence visuelle,sonore,olfactive et générale
qu''un autre type de terrain. En revanche, sa forme globale ne change pas. Vous pouvez maquiller un champ ou une route pour lui donner l''air d''un marais, d''une colline,d''une crevasse ou d''un autre terrain difficile ou impraticable. Vous pouvez faire passer une mare pour une prairie herbeuse,un précipice pour une pente douce ou un goulet rocailleux pour une route aussi large que lisse.' || E'\n' || 'Vous pouvez aussi modifier l''apparence des structures ou en ajouter là où n''y en a pas. En revanche, le sort est incapable de déguiser, dissimuler ou ajouter des créatures.' || E'\n' || 'L''illusion comprend des composantes auditives, visuelles, tactiles et olfactives, elle peut donc changer un sol dégagé en terrain difficile (ou inversement) ou gêner les déplacements dans la zone. Tout élément de terrain illusoire (comme une pierre ou une brindille) disparaît dès qu''il quitte la zone d''effet du sort.' || E'\n' || 'Les créatures dotées de vision parfaite distinguent le véritable terrain derrière l''illusion,mais les autres composantes restent en place ; elles savent donc qu''elles ont affaire à
une illusion,mais peuvent toujours interagir physiquement avec celle-ci.',
    NULL
)


    régénération
    résurrection
    symbole