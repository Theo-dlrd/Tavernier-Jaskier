INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Entrave planaire',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
    '1 heure',
    '18 mètres',
    'V, S, M (un bijou d''une valeur minimale de 1 000 po, que le sort consume)',
    '24 heures',
    'Grâce à ce sort, vous vous attachez de force les services d''un céleste, d''un élémentaire, d''une fée ou d''un fiélon. La créature doit se trouver à portée pendant toute la durée du sort. (En général, elle est d''abord invoquée au centre d''un cercle magique inversé où elle reste piégée le temps de l''incantation.) La cible doit faire un jet de sauvegarde de Charisme à la fin de l''incantation. Si elle échoue, elle est contrainte de vous servir pendant toute la durée du sort. Si elle a été invoquée ou créée via un autre sort, la durée de ce dernier se prolongejusqu''à égaler celle de l''entrave planaire.' || E'\n' || 'La créature liée doit suivre vos instructions au mieux de ses capacités. Vous pouvez lui demander de vous accompagner lors d''une aventure, de protéger un lieu ou de transmettre un message. La créature obéit à vos instructions à la lettre, mais si elle est hostile envers vous, elle peut tout à fait interpréter vos paroles de manière à satisfaire ses propres objectifs. Si la créature a exécuté vos instructions avant la fin du sort, elle revient vers vous pour vous en informer si elle se trouve sur le même plan d''existence que vous. Si vous êtes sur un autre plan, elle se rend là où vous l''avez liée et y reste jusqu''à la fin du sort.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau supérieur, la durée augmente: 10 jours au niveau 6, 30 au niveau 7, 180 au niveau 8 et un an et un jour au niveau 9.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/planarbinding-spell-bg3-wiki-guide-64px.png'
),
(
    'Eveil',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
    '8 heures',
    'contact',
    'V, S, M (une agate d''une valeur minimale de 1 000 po, que le sort consomme)',
    'instantanée',
    'Une fois que vous avez passé la durée de l''incantation à tracer des sentiers magiques dans une pierre précieuse, vous touchez un animal ou une plante de taille Très Grande ou inférieure qui doivent être dépourvus de toute valeur d''intelligence ou posséder une Intelligence de 3 ou moins. La cible reçoit alors une Intelligence de 10 et la possibilité de parler un langage de votre connaissance. Si la cible est une plante, elle peut se déplacer à l''aide de ses branches, de ses racines, de ses lianes, de ses vrilles ou autre et gagne des sens similaires à ceux d''un humain. C''est au MD de choisir les statistiques appropriées à la plante éveillée, en lui appliquant par exemple le profil d''un buisson ou d''un arbre éveillé.' || E'\n' || 'La bête ou la plante éveillée est sous votre charme pendant 30 jours ou jusqu''à ce que vous ou l''un de vos compagnons la blessiez. Une fois que l''effet de charme se termine, la créature éveillée décide seule si elle reste amicale envers vous, selon la façon dont vous l''avez traitée lorsqu''elle était charmée.',
    NULL
),
(
    'Légende',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Divination'),
    '10 minutes',
    'personnelle',
    'V, S, M (de l''encens d''une valeur minimale de 250 po que le sort consume et quatre bandelettes d''ivoire valant au moins 50 po chaque)',
    'instantanée',
    'Nommez ou décrivez une personne, un lieu ou un objet. Le sort porte à votre connaissance un bref résumé des connaissances essentielles se rapportant à la chose nommée. Ces connaissances peuvent se présenter sous la forme d''histoires actuelles, de contes oubliés ou même d''un savoir secret qui n''a jamais été révélé au grand public. Si la chose que vous nommez n''est pas digne de figurer dans une légende, vous n''obtenez aucune information. Plus vous possédez d''informations sur cette chose, plus celles que vous recevez via le sort sont précises et détaillées.' || E'\n' || 'Les informations obtenues sont exactes, mais susceptibles de se présenter dans un langage figuré. Par exemple, si vous avez une mystérieuse hache en main, le sort peut vous donner les renseignements suivants : « Malheur au malfaisant qui pose la main sur cette hache, car même son manche peut entailler la main des mécréants. Seul un véritable enfant de la pierre, un être qui aime Moradin et en est aimé en retour, pourra éveiller la véritable puissance de cette hache à condition de prononcer le mot sacré _Rudnogg_. »',
    NULL
),
(
    'Modification de mémoire',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
    '1 action',
    '9 mètres',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Vous tentez de remodeler les souvenirs d''autrui. Une créature située dans votre champ de vision doit faire un jet de sauvegarde de Sagesse. Si vous combattez cette créature, elle a l''avantage lors du jet. Si elle échoue, vous la charmez pendant toute la durée du sort. Elle est alors neutralisée et n''a plus conscience de ce qui l''entoure, mais elle vous entend toujours. Le sort se termine si elle subit le moindre dégât ou si elle est la cible d''un autre sort, auquel cas ses souvenirs restent tous intacts.' || E'\n' || 'Tant que le sort persiste, vous pouvez influer sur les souvenirs de la cible liés à un événement qui s''est déroulé dans les 24 heures précédentes et qui n''a pas duré plus de 10 minutes. Vous pouvez éliminer définitivement tout souvenir de cet événement, permettre à la cible de s''en souvenir parfaitement dans les moindres détails, modifier les détails dont elle se souvient ou créer un souvenir décrivant un tout autre événement.' || E'\n' || 'Vous devez parler à votre cible pour décrire comment ses souvenirs sont affectés et, pour que les nouveaux souvenirs s''implantent dans sa mémoire, elle doit être à même de comprendre votre langue. Son esprit se charge de combler les manques dans votre description. Si le sort se termine avant que vous ayez fini de décrire les souvenirs modifiés, la mémoire de la cible ne subit aucune modification. Sinon, elle tient compte des modifications qui lui ont été apportées dès que le sort se termine.' || E'\n' || 'Les souvenirs modifiés ne changent pas forcément l''attitude de la créature, surtout s''ils entrent en contradiction avec ses penchants naturels, son alignement ou ses croyances. Un souvenir modifié illogique sera ignoré: par exemple, si la cible se souvient combien elle a aimé se baigner dans de l''acide, elle prendra cela pour un mauvais rêve. Le MD peut estimer qu''un souvenir est modifié de manière tellement insensée qu''il n''affecte pas la cible de manière significative.' || E'\n' || 'Si la cible bénéficie de _Lever une malédiction_ ou de _Restauration supérieure_, elle retrouve ses véritables souvenirs.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 6 ou plus, vous pouvez modifier les souvenirs d''un événement remontant à 7 jours (niveau 6), 30 jours (niveau 7), 1 an (niveau 8) ou issus de n''importe quelle période du passé de la cible (niveau 9).',
    NULL
),
(
    'Restauration supérieure',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
    '1 action',
    'contact',
    'V, S, M ( poussière de diamant d''une valeur minimale de 100 po, que le sort consume)',
    'instantanée',
    'Vous imprégnez la créature que vous touchez d''énergie positive, afin de la débarrasser d''un effet débilitant. Vous pouvez ainsi réduire le niveau d''épuisement de la cible d''un cran ou mettre un terme à l''un des effets suivants l''affectant.' || E'\n' || '* Un effet qui charme ou pétrifie la cible.' || E'\n' || '* Une malédiction, y compris l''harmonisation entre la cible et un objet magique maudit.' || E'\n' || '* Une réduction sur l''une des valeurs de caractéristique de la cible.' || E'\n' || '* Un effet réduisant le maximum de points de vie de la cible.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/greaterrestoration-spell-bg3-wiki-guide-64px.png'
),
(
    'Soin des blessures de groupe',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
    '1 action',
    '18 mètres',
    'V, S',
    'instantanée',
    'Une vague d''énergie curative s''étend depuis un point de votre choix situé à portée. Choisissez un maximum de six créatures présentes dans une sphère de 9 mètres de rayon centrée sur ce point. Chacune d''entre elles récupère un montant de points de vie égal à 3d8 + votre modificateur de caractéristique d''incantation. Ce sort n''a aucun effet sur les morts-vivants ni sur les créatures artificielles.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 6 ou plus, les soins augmentent de 1d8 par niveau au-delà du 5e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/masscurewounds-spell-bg3-wiki-guide-64px.png'
),
(
    'Tromperie',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Illusion'),
    '1 action',
    'personnelle',
    'S',
    'concentration, jusqu''à 1 heure',
    'Vous devenez invisible à l''instant même où un double illusoire de votre personne apparaît là où vous vous trouvez. Ce double persiste pendant toute la durée du sort, mais votre invisibilité se termine dès que vous lancez un sort ou attaquez.' || E'\n' || 'Vous pouvez utiliser votre action pour déplacer votre double d''un maximum de deux fois votre vitesse et le faire bouger, parler et se comporter comme bon vous semble.' || E'\n' || 'Vous pouvez voir par les yeux et entendre par les oreilles de votre double comme si vous vous trouviez à son emplacement. À chacun de vos tours, vous pouvez utiliser une action bonus pour passer d''une perception via ses sens à une perception via les vôtres ou inversement. Tant que vous utilisez les sens de votre double, vous êtes sourd et aveugle à ce qui se passe directement autour de vous.',
    NULL
);