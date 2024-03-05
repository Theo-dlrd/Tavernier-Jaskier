INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Lien télépathique de Rary',
        5,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Divination'),
        '1 action',
        '9 mètres',
        'V, S, M (bouts de coquille d''œuf issus de deux espèces de créatures différentes)',
        '1 heure',
        'Vous forgez un lien télépathique entre maximum huit créatures consentantes situées à portée. Elles sont alors psychiquement liées les unes aux autres pendant la durée du sort. Ce sort n''affecte pas les créatures dotées d''une Intelligence de 2 ou moins.' || E'\n' || 'Jusqu''à la fin du sort,les cibles peuvent communiquer entre elles par télépathie via le lien créé, qu''elles partagent un même langage ou non. Cette communication fonctionne quelle que soit la distance séparant les créatures, mais ne s''étend pas aux autres plans d''existence.',
        NULL
    ),
    (
        'Main de Bigby',
        5,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        '36 mètres',
        'V, S, M (une coquille d''œuf et un gant en peau de serpent)',
        'concentration, jusqu''à 1 minute',
        'Vous créez une main de force luisante et translucide, de taille Grande, dans un espace inoccupé situé à portée et dans votre champ de vision. La main existe pendant toute la durée du sort, se déplace sur votre ordre et imite les mouvements de votre propre main.' || E'\n' || 'La main est un objet doté d''une CA 20 et d''un nombre de points de vie égal à votre maximum de points de vie. Si elJe tombe à 0 point de vie, le sort se dissipe. La main possède une Force de 26 (+8) et une Dextérité de 10 (+0). Elle n''occupe pas la case où elle se trouve.' || E'\n' || 'Lorsque vous lancez le sort, puis via une action bonus lors de vos tours ultérieurs, vous pouvez déplacer la main sur une distance maximale de 18 mètres et lui faire appliquer l''un des effets suivants.' || E'\n' || '**Poing serré**: La main frappe une créature ou un objet situés dans un rayon de 1,50 mètre d''elle. Faites une attaque de sort de contact pour la main en utilisant vos propres statistiques. Si elle touche, la cible subit 4d8 dégâts de force.' || E'\n' || '**Main percutante**: La main tente de repousser une créature située dans un rayon de 1,50 mètre dans la direction de votre choix. Faites un test avec la Force de la main opposé au test de Force (Athlétisme) de la cible. Si cette dernière est de taille Moyenne ou inférieure, vous êtes avantagé lors du test. Si vous l''emportez,la main repousse la cible sur 1,50 mètre plus un nombre de mètres égal à une fois et demie votre modificateur de caractéristique d''incantation. La main se déplace avec la cible de manière à rester dans un rayon de 1,50 mètre autour d''elle.' || E'\n' || '**Main agrippeuse**: La main tente d''empoigner une créature de taille Très Grande ou inférieure qui se trouve dans un rayon de 1,50 mètre. Utilisez la valeur de Force de la main pour résoudre le test d''empoignade. Si la cible est de taille Moyenne ou inférieure, vous êtes avantagé lors du test. Tant que la main agrippe la cible, vous pouvez utiliser une action bonus pour que la main la broie. Dans ce cas, la cible subit un montant de dégâts contondants égal à 2d6 + votre modificateur de caractéristique d''incantation.' || E'\n' || '**Main interposée**: La main s''interpose entre vous et une créature de votre choix jusqu''à ce que vous lui donniez un autre ordre. Elle se déplace de manière à toujours rester entre vous et la cible désignée et vous offre un abri partiel contre elle. La cible ne peut pas franchir la zone occupée par la main si sa valeur de Force est inférieure ou égale à celle de la main. Si elle est supérieure, elle peut se déplacer dans votre direction en traversant la zone de la main, qui est considérée comme un terrain difficile pour la cible.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 6 ou plus, les dégâts de l''option poing serré augmentent de 2d8 et ceux de la main agrippeuse de 2d6 par niveau au-delà du 5e.',
        NULL
    ),
    (
        'Mur de force',
        5,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        '36 mètres',
        'V, S, M (une pincée de poudre de gemme translucide)',
        'concentration, jusqu''à 10 minutes',
        'Un mur de force invisible se matérialise soudain en un point de votre choix situé à portée. Il s''oriente comme bon vous semble, comme une barrière horizontale, verticale ou inclinée. Il peut flot ter librement ou reposer sur une surface solide. Vous pouvez lui donner une forme de dôme hémisphérique ou de sphère d''un rayon maximal de 3 mètres ou en fia re une surface plane composée de dix panneaux de 3 mètres sur 3. Chaque panneau doit être contigu à un autre. Quelle que soit sa forme, le mur fait 0,5 centimètre d''épaisseur et persiste pendant toute la durée du sort. Si le mur passe par l''emplacement d''une créature lorsqu''il apparaît, il la repousse d''un côté ou de l''autre (à vous de choisir).' || E'\n' || 'Aucun élément ne peut franchir physiquement le mur, qui est immunisé contre tous les dégâts et résiste à toute dissipation de la magie. En revanche, on peut le détruire instantanément avec une désintégration. Le mur s''étend également sur le plan éthéré, ce qui empêche de le franchir sous forme éthérée.',
        NULL
    ),
    (
        'Passe-muraille',
        5,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action',
        '9 mètres',
        'V, S, M (une pincée de graines de sésame)',
        '1 heure',
        'Un passage apparaît en un point de votre choix situé à portée et dans votre champ de vision sur une surface de bois, de plâtre ou de pierre (comme un mur, un sol ou un plafond). Il persiste pendant toute la durée du sort. À vous de décider des dimensions de l''ouverture qui peut faire, au maximum, 1,50 mètre de large pour 2,50 mètres de haut et 6 mètres de profondeur. L''apparition du passage ne crée aucune faiblesse dans la structure qui l''entoure.' || E'\n' || 'Quand l''ouverture disparaît, les créatures et les objets qui s''y trouvaient encore sont expulsés en toute sécurité dans l''emplacement inoccupé le plus proche de la surface sur laquelle vous avez lancé le sort.',
        NULL
    );