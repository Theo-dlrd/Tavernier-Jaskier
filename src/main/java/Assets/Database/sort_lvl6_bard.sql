INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Danse irrésistible d''Otto',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Enchantement'),
    '1 action',
    '9 mètres',
    'V',
    'concentration, jusqu''à 1 minute',
    'Choisissez une créature située à portée dans votre champ de vision. La cible entame une danse comique, se mettant à taper du pied et à caracoler sur place.' || E'\n' || 'Les créatures insensibles au charme sont immunisées contre ce sort.' || E'\n' || 'Une fois que la créature s''est mise à danser, elle doit dépenser la totalité de son déplacement pour danser sans quitter son espace. De plus, elle est désavantagée lors des jets de sauvegarde de Dextérité et des jets d''attaque. Tant que la cible est affectée par ce sort, les autres créatures sont avantagées par rapport à elle lors des jets d''attaque. Une créature en train de danser peut utiliser son action pour faire un jet de sauvegarde de Sagesse et reprendre le contrôle de son corps. Si elle réussit, le sort se termine.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/ottosirresistibledance_spell_enchantment_school_baldursgate3_wiki_guide_64px.png'
),
(
    'Illusion programmée',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Illusion'),
    '1 action',
    '36 mètres',
    'V, S,M (un morceau de toison et de la poussière de jade d''une valeur de 25 po)',
    'jusqu''à dissipation',
    'Vous créez une illusion représentant un objet, une créature ou un autre phénomène visible à portée. Elle s''active une fois les conditions spécifiques remplies; en attendant, elle est imperceptible. L''illusion doit tenir dans un cube de 9 mètres d''arête. Vous décidez de son comportement et des sons qu''elle émet au moment où vous lancez le sort. Ce comportement programmé peut durer un maximum de 5 minutes.' || E'\n' || 'Quand les conditions spécifiées se présentent, l''illusion apparaît et se comporte comme vous l''avez décidé. Sa représentation finie, elle disparaît et reste en hibernation pendant 10 minutes. Ensuite, elle peut se réactiver de nouveau.' || E'\n' || 'Les conditions de déclenchement peuvent être aussi génériques ou détaillées que vous le souhaitez, mais elles doivent toujours se baser sur des éléments visuels ou audibles se produisant dans un rayon de 9 mètres autour de la zone du sort. Par exemple, vous pouvez créer une illusion de vous-même qui apparaît pour avertir d''autres gens quand ils tentent d''ouvrir une porte piégée, ou vous pouvez programmer votre illusion pour qu''elle se déclenche seulement quand une créature prononce le mot de passe correct.' || E'\n' || 'Les interactions physiques révèlent que l''image n''est qu''une illusion, car les objets la traversent. Si une créature utilise son action pour examiner l''image, elle comprend que c''est une illusion, à condition de réussir un test d''Intelligence (Investigation) contre le DD du jet de sauvegarde de votre sort. Si une créature perce l''illusion à jour, elle voit à travers l''image et les sons produits par l''illusion sonnent creux à ses oreilles.',
    NULL
),
(
    'Protections et sceaux',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
    '10 minutes',
    'contact',
    'V,S, M (encens incandescent, petite dose de soufre et d'' huile, cordelette avec des nœuds, petite dose de sang de mastodonte des ombres et petit sceptre en argent d''une valeur minimale de 10 po)',
    '24 heures',
    'Vous créez un sceau protégeant une zone au sol de 225 m2 (soit une zone de 15 mètres de côté, soit une centaine de zones de 1,50 mètre de côté, soit vingt-zones de 3 mètres de côté). La zone protégée fait au maximum 6 mètres de haut et prend la forme de votre choix. Vous pouvez protéger ainsi plusieurs étages d''une place forte en répartissant la zone affectée entre eux tant que vous pouvez relier toutes les zones contiguës en marchant lorsque vous lancez le sort.' || E'\n' || 'Lors de l''incantation, vous pouvez définir quels individus ne seront pas affectés par un ou tous les effets du sort. Vous pouvez aussi choisir un mot de passe qui immunise celui qui le prononce à haute voix contre ces effets.' || E'\n' || '_Protections et sceaux_ produit les effets suivants dans la zone protégée.' || E'\n' || '**Couloirs**: Le brouillard envahit tous les couloirs où la visibilité est alors fortement obstruée. De plus, à chaque intersection ou embranchement laissant un choix de direction, il y a 50% de chances que les créatures autres que vous soient persuadées d''aller dans la direction opposée à celle qu''elles ont choisie.' || E'\n' || '**Portes**: Toutes les portes de la zone protégée sont fermées par magie, comme scellées avec un verrou magique. De plus, vous pouvez recouvrir jusqu''à dix portes d''une illusion (comme la fonction d''objet illusoire du sort _illusion mineure_), afin de les faire passer pour une section de mur ordinaire.' || E'\n' || '**Escaliers**: Des toiles d''araignées, comme le sort du même nom, emplissent tous les escaliers de la zone protégée,du sol au plafond. Tant que _protections et sceaux_ persiste, ces fils repoussent en 10 minutes si quelqu''un les brûle ou les arrache.' || E'\n' || '**Autres effets de sort** Vous pouvez placer l''un des effets suivants, au choix, dans la zone protégée par le sort.' || E'\n' || '* Placer _lumières dansantes_ dans quatre couloirs. Vous pouvez choisir un programme très simple que les lumières suivront pendant toute la durée de _protections et sceaux_.' || E'\n' || '* Placer une _bouche magique_ en deux endroits.' || E'\n' || '* Placer un _nuage puant_ en deux endroits. Les vapeurs apparaissent à l''endroit de votre choix. Tant que _protections et sceaux_ persiste, elles réapparaissent au bout de 10 minutes si le vent les disperse.' || E'\n' || '* Placer une _bourrasque_ constante dans un couloir ou une pièce.' || E'\n' || '* Placer une _suggestion_ en un endroit. Choisissez une zone d''au maximum 1,50 mètre de côté : toute créature qui y pénètre ou la traverse reçoit une suggestion mentale.' || E'\n' || 'Toute la zone protégée émet une aura magique. Si quelqu''un lance avec succès une _dissipation de la magie_ sur un effet spécifique, il élimine seulement cet effet.' || E'\n' || 'Vous pouvez protéger une structure en permanence si vous lancez ce sort tous les jours pendant un an.',
    NULL
),
(
    'Trouver un chemin',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Divination'),
    '1 minute',
    'personnelle',
    'V, S, M (un ensemble d''instruments de divination [comme des os, des bâtonnets en ivoire, des cartes, des dents ou des runes gravées] d''une valeur de 100 po et un objet venant de l''endroit que vous cherchez)',
    'concentration, jusqu''à 1 jour',
    'Ce sort vous permet de trouver le chemin physique le plus direct et le plus court vers un endroit fixe spécifique avec lequel vous êtes familier et qui se trouve sur le même plan d''existence que vous. Le sort échoue si vous choisissez une destination située sur un autre plan d''existence, une destination mouvante (comme une forteresse mobile) ou une destination n''ayant rien de spécifique (comme l''antre d''un dragon vert).' || E'\n' || 'Tant que le sort persiste et que vous êtes sur le même plan d''existence que votre destination, vous savez dans quelle direction et à quelle distance elle se trouve. Tant que vous faites route vers votre destination, chaque fois que vous avez le choix entre plusieurs itinéraires, vous déterminez automatiquement celui qui sera le plus court et le plus direct (mais pas forcément le plus sûr).',
    NULL
);