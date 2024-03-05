INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Carquois magique',
        5,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action bonus',
        'contact',
        'V, S, M (un carquois contenant au moins une munition)',
        'concentration, jusqu''à 1 minute',
        'Vous transmutez votre carquois de manière à ce qu''il produise une réserve infinie de munitions non magiques qui semblent bondir dans votre main dès que vous la tendez pour les saisir.' || E'\n' || 'Pendant toute la durée du sort, à chacun de vos tours, vous pouvez utiliser une action bonus pour effectuer deux attaques avec une arme utilisant les munitions venant du carquois. Chaque fois que vous portez une telle attaque à distance, le carquois remplace magiquement la munition dépensée par une autre, identique, non magique. Les munitions que produit le carquois se désintègrent quand le sort se termine. Si le carquois ne se trouve plus en votre possession, le sort se termine.',
        NULL
    ),
    (
        'Invoquer une volée de projectiles',
        5,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 action',
        '15 mètres',
        'V, S, M (une munition ou une arme de jet)',
        'instantanée',
        'Vous lancez une arme de jet non magique ou un projectile non magique, et choisissez un point à portée. Des centaines de copies du projectile s''abattent sur la zone avant de disparaître. Chaque créature située dans un cylindre de 12 mètres de rayon, 6 mètres de hauteur et centré sur le point choisi doit réussir un jet de sauvegarde de Dextérité. Celles qui échouent subissent 8d8 dégâts, les autres la moitié seulement. Le type de dégâts est identique à celui du projectile utilisé comme composante.',
        NULL
    );
