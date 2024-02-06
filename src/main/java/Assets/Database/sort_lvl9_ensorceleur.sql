INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Arrêt du temps',
    9,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    'personnelle',
    'V',
    'instantanée',
    'Vous arrêtez brièvement le cours du temps pour tout le monde sauf vous. Le temps ne s''écoule plus pour les autres créatures tandis que vous disposez de 1d4+1 tours d''affilée, pendant lesquels vous pouvez faire des actions et vous déplacer normalement.' || E'\n' || 'Ce sort se termine si l''une des actions que vous effectuez lors de ce laps de temps ou l''un des effets que vous créez lors de ce laps de temps affecte une créature autre que vous ou un objet porté ou transporté par une créature autre que vous. Le sort se termine également si vous vous éloignez à plus de 300 mètres de l''endroit où vous l''avez lancé.',
    NULL
),
(
    'Mot de pouvoir mortel',
    9,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '18 mètres',
    'V',
    'instantanée',
    'Vous prononcez un mot de pouvoir capable d''obliger une créature située à portée dans votre champ de vision à mourir instantanément. Si la créature choisie a 100 points de vie ou moins, elle meurt, sinon le sort n''a aucun effet.',
    NULL
),
(
    'Nuée de météores',
    9,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '1,5 kilimètre',
    'V, S',
    'instantanée',
    'Des orbes de feu flamboyants s''abattent au sol en quatre points de votre choix situés à portée et dans votre champ de vision. Chaque créature située dans la sphère de 12 mètres de rayon centrée sur chacun de ces points doit faire un jet de sauvegarde de Dextérité. Les sphères s''étendent en contournant les angles. Une créature qui rate son jet de sauvegarde subit 20d6 dégâts de feu et 20d6 dégâts contondants, les autres la moitié seulement. Une créature qui se trouve prise dans deux sphères à la fois ne subit qu''une seule fois les dégâts des météores.' || E'\n' || 'Le sort abîme et embrase les objets inflammables de la zone s''ils ne sont pas portés ou transportés.',
    NULL
),
(
    'Portail',
    9,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '18 mètres',
    'V, S, M (un diamant d''une valeur minimale de 5 000 po)',
    'concentration, jusqu''à 1 minute',
    'Vous invoquez un portail reliant un espace inoccupé, situé à portée et dans votre champ de vision, à un autre plan d''existence. Ce portail se présente sous la forme d''une ouverture circulaire de 1,50 à 6 mètres de diamètre, à votre guise. Vous pouvez orienter le portail dans la direction de votre choix et il persiste pendant toute la durée du sort.' || E'\n' || 'Le portail a une face avant et une face arrière sur chaque plan où il apparaît. Pour voyager grâce au portail, il faut impérativement le franchir en passant par l''avant. Tout ce qui le traverse ainsi apparaît instantanément sur l''autre plan, dans l''espace inoccupé le plus proche du portail.' || E'\n' || 'Les divinités et autres dirigeants planaires peuvent empêcher un portail né de ce sort de s''ouvrir en leur présence ou en n''importe quel point de leur domaine.' || E'\n' || 'Quand vous lancez ce sort, vous pouvez prononcer le nom d''une créature spécifique (sachant que les pseudonymes, les titres et les surnoms ne fonctionnent pas). Si cette créature se trouve sur un autre plan que celui sur lequel vous vous trouvez, le portail s''ouvre dans ses environs immédiats et attire la créature en son sein. Elle réapparaît de votre côté du portail, dans J''espace inoccupé le plus proche. Cela ne vous donne aucun contrôle sur la créature qui agit librement,comme le MD le désire. Elle peut s''en aller, vous attaquer ou vous aider.',
    NULL
),
(
    'Souhait',
    9,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    'personnelle',
    'V',
    'instantanée',
    'Le souhait est le plus puissant des sorts qu''une créature mortelle puisse lancer. Vous pouvez modifier les fondements de la réalité selon vos désirs, simplement en prononçant quelques mots.' || E'\n' || 'L''utilisation basique de ce sort consiste à dupliquer les effets de n''importe quel sort de niveau 8 ou moins. Vous n''avez alors pas besoin de remplir les conditions requises, pas même de fournir les composantes matérielles onéreuses, le sort fait tout simplement effet.' || E'\n' || 'Sinon, vous pouvez créer l''un des effets suivants, au choix.' || E'\n' || '* Vous créez un objet d''une valeur maximale de 25 000 po qui n''a rien de magique. Il doit mesurer au maximum 90 mètres dans chaque dimension et apparaît en un emplacement inoccupé situé au sol et dans votre champ de vision.' || E'\n' || '* Vous permettez à un maximum de vingt créatures situées dans votre champ de vision de récupérer la totalité de leurs points de vie et vous mettez fin à tous les effets les affectant décrits dans le sort de _restauration supérieure_.' || E'\n' || 'Vous donnez à un maximum de dix créatures situées dans votre champ de vision une résistance à un type de dégâts de votre choix.' || E'\n' || 'Vous donnez à un maximum de dix créatures situées dans votre champ de vision l''immunité contre un unique sort ou un autre effet magique pendant 8 heures. Par exemple, vous pouvez vous immuniser, ainsi que tous vos compagnons, contre l''attaque absorption de vie des liches.' || E'\n' || '* Vous défaites un unique événement récent en faisant relancer un jet de dé effectué au cours du round précédent (y compris lors de votre dernier tour). La réalité se modifie pour s''adapter au nouveau résultat. Par exemple, un souhait peut obliger un adversaire à relancer un jet de sauvegarde réussi, un ennemi à refaire son jet de critique ou un ami à rejouer un jet de sauvegarde raté. Vous pouvez avantager ou désavantager la créature qui relance le dé et vous êtes libre d''appliquer le résultat du premier jet ou de la relance.' || E'\n' || 'Ce sort peut également vous permettre d''accomplir des exploits dépassant le cadre des exemples précédents. Formulez votre souhait à votre MD de la manière la plus précise possible. Le MD dispose d''une grande liberté pour gérer ce genre de cas. Plus le souhait est important, plus il y a de chances que quelque chose tourne mal. Le sort peut tout simplement échouer, avoir des effets partiels seulement ou s''accompagner de conséquences inattendues en raison de la manière dont vous l''avez formulé. Par exemple, si vous souhaitez qu''un adversaire soit mort, vous pouvez très bien être projeté en avant dans le temps, à une période où il est décédé, ce qui, en pratique, vous élimine de la partie en cours de jeu. Et si vous souhaitez obtenir un objet magique légendaire ou un artefact mythique... vous pourriez très bien être instantanément transporté en sa présence... et en celle de son propriétaire actuel.' || E'\n' || 'Le stress lié à l''incantation d''un _souhait_ pour faire autre chose que répliquer un autre sort vous affaiblit grandement. À tel point que vous subissez 1d1O dégâts nécrotiques par niveau de sorts chaque fois que vous lancez un autre sort par la suite, et ce jusqu''à ce que vous ayez terminé un long repos. Il est absolument impossible de réduire ces dégâts ou de les empêcher, de quelque manière que ce soit. De plus, votre Force tombe à 3 (si elle n''est pas déjà de 3 ou moins) pendant 2d4 jours. Chaque fois que vous passez une de ces journées à vous reposer et ne rien faire de plus que des activités légères, le temps de récupération qui vous reste diminue de 2 jours. Enfin, suite à ce stress, il y a 33% de chances que vous ne puissiez plus jamais lancer _souhait_.',
    NULL
)ON CONFLICT(nom_sort) DO NOTHING;