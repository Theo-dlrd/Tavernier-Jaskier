INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description)
VALUES
(
    'Cercle de pouvoir',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'personnelle (9 mètres de rayon)',
    'V',
    'concentration, jusqu''à 10 minutes'
    'Une énergie divine émane de vous, qui déforme les énergies magiques pour les diffuser dans un rayon de 9 mètres autour de votre personne. La sphère est centrée sur vous et se déplace avec vousjusqu''à la fin du sort. Pendant toute la durée du sort, toutes les créatures amicales de la zone (vous y compris) ont l''avantage lors de leurs jets de sauvegarde contre les sorts et autres effets magiques. De plus, quand une créature affectée réussit son jet de sauvegarde contre un sort ou un effet magique qui inflige des dégâts réduits de moitié en cas de jet de sauvegarde réussi, elle ne subit absolument aucun dégât.'
),
(
    'Coercition mystique',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '18 mètres',
    'V',
    '30 jours',
    'Vous imposez une coercition magique sur une créature située à portée dans votre champ de vision, l''obligeant à vous accorder un service ou l''empêchant de commettre une action ou une suite d''actions, comme bon vous semble. Si la créature comprend votre langue, elle doit réussir un jet de sauvegarde de Sagesse, sans quoi vous la charmez pendant toute la durée du sort. Pendant toute cette période, elle subit 5d10 dégâts psychique chaque fois qu''elle agit de manière directement opposée à vos instructions, mais jamais plus d''une fois par jour. Si la créature ne vous comprend pas, ce sort n''a aucun effet sur elle.' || E'\n' || 'Vous pouvez donner n''importe quel ordre de votre choix, en dehors de ceux qui mènent directement à la mort. Le sort se termine si jamais vous donnez un ordre suicidaire. Vous pouvez mettre prématurément fin au sort en dépensant une action pour le dissiper. On peut aussi terminer le sort avec lever une malédiction, restauration supérieure ou souhait. **À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 7 ou 8, il dure 1 an. Avec un emplacement de sort de niveau 9, il persiste jusqu''à ce que quelqu''un le dissipe avec l''un des sorts mentionnés précédemment.'
),
(
    'Dissipation du mal et du bien',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'personnelle',
    'V, S, M (eau bénite ou poudre d''argent et de fer)',
    'concentration, jusqu''à 1 minute',
    'Une énergie scintillante vous entoure et vous protège contre les fées, les morts-vivants et les créatures originaires d''au-delà du plan matériel. Pendant toute la durée du sort, les célestes, les élémentaires, les fées, les fiélons et les morts-vivants sont désavantagés lors de leurs jets d''attaque contre vous.' || E'\n' || 'Vous pouvez terminer le sort plus tôt en utilisant l''une des fonctions spéciales suivantes.' || E'\n' || '**Annulation d''enchantement**: Vous utilisez votre action pour toucher une créature à votre portée qui se trouve charmée, terrorisée ou possédée par un céleste, un élémentaire, une fée, un fiélon ou un mort-vivant. Cette créature n''est alors plus charmée, terrorisée ou possédée par ces créatures.' || E'\n' || '**Renvoi**: Vous utilisez votre action pour faire une attaque de sort au corps à corps contre un céleste, un élémentaire, une fée, un fiélon ou un mort-vivant situé à une distance inférieure ou égale à votre allonge. Si vous touchez la créature, vous tentez de la renvoyer sur son plan natal. Elle doit réussir un jet de sauvegarde de Charisme ou retourner sur son plan natal (si elle ne s''y trouve pas déjà). Si un mort-vivant ne se trouve pas sur son plan natal, il est renvoyé dans l''Obscur tandis qu''une fée sera expulsée dans la Féerie sauvage.'
),
(
    'Frappe du bannissement',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action bonus',
    'personnelle',
    'V',
    'concentration, jusqu''à 1 minute',
    'La prochaine attaque armée qui vous permet de toucher une créature avant la fin de ce sort voit votre arme crépiter d''énergie et inflige 5d10 dégâts de force à votre cible. De plus, si cette attaque réduit la cible à 50 pv ou moins, elle la bannit. Si la cible est originaire d''un plan d''existence différent de celui sur lequel vous vous trouvez, elle disparaît, renvoyée dans son plan d''origine. Si elle est originaire du plan sur lequel vous vous trouvez, elle disparaît dans un demi-plan inoffensif. Elle est neutralisée tant qu''elle s''y trouve, c''est-à-dire jusqu''à la fin du sort. À ce moment, elle réapparaît à l''emplacement qu''elle a quitté ou dans l''emplacement le plus proche si le précédent est occupé.'
),
(
    'Relever les morts',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Nécromancie'),
    '1 heure',
    'contact',
    'V, S, M (un diamant d''une valeur minimale de 500 po, que le sort consume)',
    'instantanée',
    'Vous touchez une créature décédée et la ramenez à la vie, à condition que son trépas ne remonte pas à plus de 10 jours. Si l''âme de la créature est désireuse de rejoindre son corps et libre de le faire, le défunt revient à la vie avec 1 point de vie.' || E'\n' || 'Ce sort neutralise également les poisons et soigne les maladies non magiques qui affectaient la créature à sa mort. En revanche, il ne la débarrasse pas des maladies magiques, des malédictions et des effets similaires. Si on ne supprime pas ces effets sur le cadavre avant de lancer le sort, ils affectent de nouveau la créature ressuscitée. Ce sort est incapable de ramener un mort-vivant à la vie.' || E'\n' || 'Ce sort referme les plaies mortelles, mais ne restaure pas les parties manquantes du corps. Si la créature est privée d''un organe ou d''un morceau indispensable à sa survie, comme sa tête, le sort échoue automatiquement.' || E'\n' || 'Le retour d''entre les morts est une rude épreuve qui se traduit par un malus de -4 aux jets d''attaque et de sauvegarde ainsi qu''aux tests de caractéristique. Chaque fois que la cible termine un long repos, ce malus se réduit de 1 jusqu''à disparaître.'
),
(
    'Vague destructrice',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    'personnelle (9 mètres)',
    'V',
    'instantanée',
    'Vous frappez le sol et créez une onde d''énergie divine qui se répand alentour. Toutes les créatures de votre choix situées dans un rayon de 9 mètres autour de vous doivent faire un jet de sauvegarde de Constitution. Celles qui échouent subissent 5d6 dégâts de tonnerre et 5d6 dégâts radiants ou nécrotiques (à vous de choisir). De plus, elles sont projetées à terre. Celles qui réussissent subissent seulement la moitié des dégâts et ne tombent pas à terre.'
);