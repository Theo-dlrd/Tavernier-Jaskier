INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Guérison de groupe',
        9,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        '18 mètres',
        'V, S',
        'instantanée',
        'Un flot d''énergie curative émane de vous et enveloppe les créatures blessées qui vous entourent. Vous rendez jusqu''à 700 points de vie, divisés comme bon vous semble entre autant de créatures situées à portée et dans votre champ de vision que vous le voulez. Le sort débarrasse aussi les créatures qu''il guérit de leurs maladies et des effets qui les rendent sourdes ou aveugles. Ce sort n''a aucun effet sur les morts-vivants ni sur les créatures artificielles.',
        NULL
    ),
    (
        'Résurrection suprême',
        9,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 heure',
        'contact',
        'V, S, M (un peu d''eau bénite à asperger et des diamants d''une valeur totale minimale de 25 000 po, que le sort consume)',
        'instantanée',
        'Vous touchez une créature décédée depuis deux cents ans au maximum, de n''importe quelle cause sauf de vieillesse. Si son âme est libre et consentante, elle revient à la vie avec tous ses points de vie.' || E'\n' || 'Le sort referme toutes les plaies, neutralise tous les poisons, guérit toutes les maladies et lève toutes les malédictions qui affectaient éventuellement la cible à sa mort. Il remplace les organes et les membres abîmés ou manquants. Il peut même fournir un nouveau corps à la cible si l''original n''existe plus, mais dans ce cas, vous devez prononcer le nom de la créature à ressusciter. Elle apparaît alors dans un emplacement inoccupé de votre choix dans un rayon de 3 mètres autour de vous.',
        NULL
    );