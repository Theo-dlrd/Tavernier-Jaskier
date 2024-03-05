INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Flèche de foudre',
        3,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action bonus',
        'personnelle',
        'V, S',
        'concentration, jusqu''à 1 minute',
        'Lors de la prochaine attaque que vous effectuez avec une arme à distance pendant que ce sort est actif, la munition (ou l''arme s''il s''agit d''une arme de jet) se change en éclair. Faites un jet d''attaque ordinaire. Si vous touchez, la cible subit 4d8 dégâts de foudre au lieu des dégâts normaux, la moitié si vous la ratez.' || E'\n' || 'Que vous touchiez ou ratiez votre cible, toutes les créatures situées dans un rayon de 3 mètres autour d''elle doivent faire un jet de sauvegarde de Dextérité. Celles qui échouent subissent 2d8 dégâts de foudre, les autres la moitié seulement.' || E'\n' || 'La munition ou l''arme de jet reprend ensuite sa forme normale.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 4 ou plus, les dégâts dus à chacun des deux effets du sort augmentent de 1d8 par emplacement de sort au-delà du 3e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/lightningarrow-spell-bg3-wiki-guide-64px.png'
    ),
    (
        'Invoquer un tir de barrage',
        3,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 action',
        'personnelle (cône de 18 mètres)',
        'V, S, M (une munition ou une arme de jet)',
        'instantanée',
        'Vous lancez une arme de jet non magique ou un projectile non magique, afin de créer un cône d''armes identiques qui filent dans les airs avant de disparaître. Chaque créature située dans un cône de 18 mètres doit réussir un jet de sauvegarde de Dextérité. Celles qui échouent subissent 3d8 dégâts, les autres la moitié seulement. Le type de dégâts est identique à celui du projectile utilisé comme composante.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/conjurebarrage-spell-bg3-wiki-guide-64px.png'
    );
