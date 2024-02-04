INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description)
VALUES
(
    'Armure du mage',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'contact',
    'V, S, M (un bout de cuir tanné)',
    '8 heures',
    'Vous touchez une créature consentante qui ne porte pas d''armure et l''enveloppez d''une force magique protectrice jusqu''à la fin du sort. La CA de base de la cible passe à 13 + son modificateur de Dextérité. Le sort se termine si la cible revêt une armure ou si vous révoquez le sort par une action.'
),
(
    'Bouclier',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 réaction à effectuer lorsque vous êtes touché par une attaque ou un sort deprojectile magique',
    'personnelle',
    'V, S',
    '1 round',
    'Une barrière invisible faite de force magique apparaît autour de vous et vous protège. Jusqu''au début de votre prochain tour, vous avez un bonus de +5 à la CA, y compris contre l''attaque qui a déclenché l''incantation du sort, et vous ne subissez aucun dégât de la part de projectile magique.'
),
(
    'Carreau ensorcelé',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '9 mètres',
    'V, S, M (une brindille issue d''un arbre frappé par la foudre)',
    'concentration, jusqu''à 1 minute',
    'Un éclair d''énergie bleutée frappe une cible à portée et forme un arc électrique persistant entre elle et vous. Faites une attaque de sort à distance contre cette créature. Si vous touchez, elle subit 1d12 dégâts de foudre et, à chacun de vos tours pendant toute la durée du sort, vous pouvez utiliser votre action pour lui infliger automatiquement 1d12 dégâts de foudre. Le sort se termine si vous utilisez votre action pour faire autre chose. Il se termine également si la cible passe hors de portée du sort ou bénéficie d''un abri total contre vous.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts initiaux augmentent de 1d12 par emplacement de sort au-delà du 1er.'
),
(
    'Charme-personne',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '9 mètres',
    'V, S',
    '1 heure',
    'Vous tentez de charmer un humanoïde se trouvant à portée et dans votre champ de vision. Il doit faire un jet de sauvegarde de Sagesse, pour lequel il est avantagé si vous ou vos compagnons êtes actuellement en train de le combattre. S''il rate son test, vous le charmez jusqu''à la fin du sort ou jusqu''à ce que vous ou vos compagnons lui fassiez du mal. La créature charmée vous considère comme un ami. Quand le sort se termine, elle sait que vous l''avez charmée.' || E'\n' || '**À plus haut niveau**, Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, vous pouvez charmer une créature de plus par niveau au-delà du 1er. Toutes les cibles doivent se trouver à 9 mètres ou moins les unes des autres lorsque vous lancez le sort.'
),
(
    'Compréhension des langues',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '1 action',
    'personnelle',
    'V, S, M (une pincée de suie et de sel)',
    '1 heure',
    'Pendant toute la durée du sort, vous comprenez le sens littéral de tout langage parlé que vous entendez. Vous comprenez aussi les langues écrites que vous voyez, à condition de toucher la surface sur laquelle on a tracé les mots. Il vous faut 1 minute pour lire une page de texte.' || E'\n' || 'Ce sort ne décode pas les messages secrets compris dans un texte ni les glyphes qui n''appartiennent pas à un langage écrit, comme un symbole magique.'
),
(
    'Couleurs dansantes',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Illusion'),
    '1 action',
    'personnelle (cône de 4,50 mètres)',
    'V, S, M (une poignée de poudre ou de sable, colorée en rouge, jaune et bleu)',
    '1 round',
    'Un éventail de lumières colorées éblouissantes jaillit de votre main. Lancez 6d10. Le total représente le nombre de points de vie de créatures que le sort affecte. Les créatures situées dans un cône de 4,50 mètres, prenant votre personne comme point d''origine, sont affectées dans l''ordre croissant de leurs points de vie actuels (en ignorant les créatures inconscientes et les créatures aveugles).' || E'\n' || 'Chaque créature affectée, en commençant par celle qui possède actuellement le moins de points de vie, est aveuglée jusqu''à la fin du sort. Soustrayez du total obtenu le nombre de points de vie actuel de chaque créature affectée avant de passer à la suivante, en choisissant chaque fois celle qui possède le moins de points de vie. Pour qu''une créature soit affectée, elle doit posséder un nombre de points de vie actuel inférieur ou égal au total restant.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, lancez 2d10 supplémentaires par niveau au-delà du 1er.'
),
(
    'Déguisement',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Illusion'),
    '1 action',
    'personnelle',
    'V, S',
    '1 heure',
    'Vous faites en sorte que votre personne (y compris vos vêtements, votre armure, vos armes et les autres objets en votre possession) prenne une apparence différente jusqu''à la fin du sort ou jusqu''à ce que vous utilisiez une action pour y mettre un terme. Vous pouvez passer pour une personne de trente centimètres de plus ou de moins, sembler gros, maigre ou entre les deux. Vous ne pouvez pas changer le type de votre corps, vous devez choisir une forme possédant la même conformation que vous au niveau des membres. En dehors de cela, les détails de l''illusion sont laissés à votre imagination.' || E'\n' || 'Les changements qu''apporte le sort ne résistent pas à un examen physique. Par exemple, si vous l''utilisez pour ajouter un chapeau à votre tenue, les objets passent au travers et toute personne qui essaie de le toucher ne sentira que de l''air, ou des cheveux et un crâne. Si vous utilisez le sort pour paraître plus mince qu''en réalité, la main de quelqu''un qui tente de vous toucher se heurtera à vous alors que, visuellement, elle semble encore dans le vide.' || E'\n' || 'Pour percer votre déguisement à jour, une créature peut dépenser une action pour vous examiner. Elle doit alors réussir un test d''Intelligence (Investigation) contre le DD du jet de sauvegarde du sort.'
),
(
    'Image silencieuse',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Illusion'),
    '1 action',
    '18 mètres',
    'V, S, M (un morceau de toison)',
    'concentration, jusqu''à 10 minutes',
    'Vous créez l''image d''un objet, d''une créature ou d''un phénomène visible tenant dans un cube de 4,50 mètres de côté. L''image apparaît en un point situé à portée et persiste pendant toute la durée du sort. L''image comporte seulement des composantes visuelles, elle ne s''accompagne pas d''odeurs, de sons, ni d''autres effets sensoriels.' || E'\n' || 'Vous pouvez utiliser votre action pour déplacer l''image vers un autre point à portée. Pendant qu''elle se déplace, vous pouvez modifier son apparence pour donner l''impression d''un mouvement naturel. Par exemple, si vous créez l''image d''une créature et que vous la déplacez, vous pouvez modifier l''image pour donner l''impression que la créature est en train de marcher.' || E'\n' || 'Les interactions physiques révèlent que l''image n''est qu''une illusion, car les objets la traversent. Si une créature utilise son action pour examiner l''image, elle comprend que c''est une illusion à condition de réussir un test d''Intelligence (Investigation) contre le DD du jet de sauvegarde de votre sort. Si une créature perce l''illusion à jour, elle voit à travers l''image.'
),
(
    'Léger comme une plume',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 réaction, que vous effectuez quand vous-même ou une créature située dans un rayon de 18 mètres tombe soudain',
    '18 mètres',
    'V, M (une petite plume ou un peu de duvet)',
    '1 minute',
    'Choisissez jusqu''à cinq créatures en train de tomber à portée. La vitesse de chute de chacune passe à 18 mètres par round jusqu''à la fin du sort. Si une créature atterrit avant la fin du sort, elle ne subit pas de dégâts de chute et se reçoit sur ses pieds, le sort se terminant alors pour elle.'
),
(
    'Mains brulantes',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    'contact (cône de 4,50 mètres)',
    'V, S',
    'instantanée',
    'Alors que vous vous tenez les doigts écartés en éventail et les pouces l''un contre l''autre, une mince nappe de feu s''étend depuis vos mains tendues. Chaque créature située dans un cône de 4,50 mètres doit faire un jet de sauvegarde de Dextérité. Celles qui échouent reçoivent 3d6 dégâts de feu, les autres la moitié seulement.' || E'\n' || 'Le feu embrase tous les objets inflammables de la zone, à moins que quelqu''un ne les porte ou ne les transporte.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts augmentent de 1d6 par niveau au-delà du 1er.'
),
(
    'Nappe de brouillard',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '36 mètres',
    'V, S',
    'concentration, jusqu''à 1 heure',
    'Vous créez une sphère de brouillard de 6 mètres de rayon centrée sur un point à portée. La sphère s''étend en contournant les angles et, dans la zone qu''elle occupe, la visibilité est fortement obstruée. Le brouillard persiste pendant toute la durée du sort ou jusqu''à ce qu''un vent modéré ou plus violent (soufflant au moins à 15 kilomètres/heure) le disperse.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, le rayon de la sphère augmente de 6 mètres par niveau au-delà du 1er.'
),
(
    'Orbe chromatique',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '27 mètres',
    'V, S, M (un diamant d''une valeur minimale de 50 po)',
    'instantanée',
    'Vous lancez une sphère d''énergie de 10 centimètres de diamètre sur une créature située à portée dans votre champ de vision. Cet orbe est fait d''acide, de feu, de froid, de foudre, de poison ou de tonnerre (à vous de choisir). Vous effectuez ensuite un jet d''attaque à distance contre votre cible. Si vous la touchez, elle subit 3d8 dégâts du type de l''orbe.' || E'\n' || '**À plus haut niveau**, Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts augmentent de 1d8 par emplacement de sort au-delà du 1er.'
),
(
    'Projectile magique',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '36 mètres',
    'V, S',
    'instantanée',
    'Vous créez trois fléchettes faites d''énergie magique luisante. Chacune touche une créature de votre choix, située à portée dans votre champ de vision. Une fléchette inflige 1d4+1 dégâts de force à la cible. Toutes les fléchettes frappent leur cible en même temps, sachant que vous pouvez toutes les diriger contre une seule et même créature ou les répartir entre plusieurs.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, le sort crée une fléchette de plus par niveau au-delà du 1er·'
),
(
    'Rayon empoisonné',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Nécromancie'),
    '1 action',
    '18 mètres',
    'V, S',
    'instantanée',
    'Un rayon d''énergie d''un vert maladif frappe une créature à portée. Faites un jet d''attaque de sort à distance contre elle. Si vous la touchez, elle subit 2d8 dégâts de poison et doit faire un jet de sauvegarde de Constitution. Si elle échoue, elle est empoisonnée jusqu''à la fin de votre prochain tour.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts augmentent de 1d8 par emplacement de sort au-delà du 1er.'
),
(
    'Repli expéditif',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action bonus',
    'personnelle',
    'V, S',
    'concentration, jusqu''à 10 minutes',
    'Ce sort vous permet de vous déplacer à une vitesse incroyable. Vous pouvez utiliser l''action "se précipiter"  (+9 mètres) quand vous le lancez, puis par une action bonus à chacun de vos tours jusqu''à ce qu''il se termine.'
),
(
    'Saut',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    'contact',
    'V, S, M (une patte arrière de sauterelle)',
    '1 minute',
    'Vous touchez une créature et triplez sa distance de saut jusqu''à ce que Je sort se termine.'
),
(
    'Simulacre de vie',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Nécromancie'),
    '1 action',
    'personnelle',
    'V, S, M (une petite quantité d''alcool ou de spiritueux)',
    '1 heure',
    'Vous renforcez votre corps avec un ersatz de vie et gagnez 1d4+4 points de vie temporaires pendant la durée du sort.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, vous gagnez 5 points de vie temporaires de plus par niveau au-delà du 1er.'
),
(
    'Sommeil',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '27 mètres',
    'V, S, M (une pincée de sable fin, des pétales de rose ou un criquet)',
    '1 minute',
    'Ce sort plonge quelques créatures dans un sommeil magique. Lancez 5d8. Le total indique le nombre de points de vie de créatures que le sort affecte. Les créatures se trouvant dans un rayon de 6 mètres autour d''un point de votre choix situé à portée sont affectées dans l''ordre croissant de leur montant de points de vie actuel (en ignorant les créatures inconscientes).' || E'\n' || 'Chaque créature affectée par le sort tombe inconsciente, en commençant par celle qui possède actuellement le moins de vie. Elle reste ainsi jusqu''à la fin de la durée du sort, jusqu''à ce qu''elle subisse des dégâts ou jusqu''à ce que quelqu''un utilise son action pour la réveiller en la secouant ou en la giflant.' || E'\n' || 'Soustrayez le nombre de points de vie de la créature endormie du total auquel vous avez droit avant de passer à la suivante, c''est-à-dire celle qui a le moins de points de vie après elle. Le nombre de points de vie de la créature doit être égal ou inférieur au total vous restant, sinon le sort n''affecte pas la créature.' || E'\n' || 'Ce sort reste sans effet sur les morts-vivants et les créatures insensibles aux effets de charme.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, lancez 2d8 de plus par niveau au-delà du 1er.'
),
(
    'Vague tonnante',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    'personnelle (cube de 4,50 mètres)',
    'V, S',
    'instantanée',
    'Une vague de force tonnante émane de vous. Chaque créature située dans un cube de 4,50 mètres d''arête partant de vous doit faire un jet de sauvegarde de Constitution. Les créatures qui échouent subissent 2d8 dégâts de tonnerre et sont repoussées de 3 mètres en face de vous. Les autres subissent seulement la moitié des dégâts et ne sont pas repoussées.' || E'\n' || 'De plus, les objets qui ne sont pas arrimés et se trouvent entièrement englobés dans la zone affectée sont automatiquement repoussés de 3 mètres à l''opposé de vous. Le sort émet un grondement de tonnerre qui s''entend dans un rayon de 90 mètres.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts augmentent de 1d8 par niveau au-delà du 1er.'
);