INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Marche sur le vent',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
        '1 minute',
        '9 mètres',
        'V, S, M (du feu et de l''eau bénite)',
        '8 heures',
        'Vous et un maximum de dix créatures consentantes, situées à portée et dans votre champ de vision, prenez une forme gazeuse pendant toute la durée du sort et ressemblez à des volutes de nuages. Sous cette forme, une créature affectée a une vitesse de vol de 90 mètres et une résistance aux dégâts des armes non magiques. Elle est limitée dans ses actions : elle peut juste se précipiter ou reprendre sa forme normale. Il lui faut une minute pour reprendre sa forme normale et, pendant toute cette période, elle est neutralisée et incapable de bouger. Elle peut de nouveau se muer en nuage tant que le sort n''est pas terminé, cette nouvelle transformation lui demandant aussi une minute.' || E'\n' || 'Si une créature est sous forme de nuage et en plein vol quand le sort se termine, elle descend de 18 mètres par round pendant 1 minute, jusqu''à ce qu''elle atterrisse, en parfaite sécurité. Si elle n''arrive pas à atterrir avant la fin de cette minute, elle tombe sur la distance qui lui reste à parcourir.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/spell_transmutation_windwalk_baldurs_gate_3_wiki_guide_65px.png'
    ),
    (
        'Mur d''épines',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 action',
        '36 mètres',
        'V, S, M (une poignée d''épines)',
        'concentration,jusqu''à 10 minutes',
        'Vous créez un mur fait de buissons souples et robustes, enchevêtrés et hérissés d''épines acérées. Il apparaît à portée sur une surface solide et persiste pendant toute la durée du sort. Vous pouvez faire un mur de 18 mètres de long, 3 mètres de haut et 1,50 mètre d''épaisseur, ou le disposer en un cercle de 6 mètres de diamètre pour une hauteur maximum de 6 mètres et une épaisseur de 1,50 mètre. Le mur bloque le champ de vision.' || E'\n' || 'Quand le mur apparaît, chaque créature située dans sa zone doit faire un jet de sauvegarde de Dextérité. Celles qui échouent subissent 7d8 dégâts perforants, les autres la moitié seulement.' || E'\n' || 'Une créature peut traverser le mur, mais lentement et dans la douleur. Elle doit dépenser 1,20 mètre de déplacement pour avancer de 30 centimètres au sein du mur. De plus, quand elle entre dans le mur pour la première fois de son tour ou quand elle y termine son tour, elle doit faire un jet de sauvegarde de Dextérité. Elle subit 7d8 dégâts perforants si elle rate son jet, la moitié si elle le réussit.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 7 ou plus, les deux types de dégâts augmentent chacun de 1d8 par niveau au-delà du 6e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/spell_wallofthorns_baldurs_gate_3_wiki_guide_65px.png'
    ),
    (
        'Transport végétal',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 action',
        '3 mètres',
        'V, S',
        '1 round',
        'Ce sort crée un lien magique entre une plante inanimée de taille Grande ou supérieure située à portée et une autre plante, située à n''importe quelle distance mais sur le même plan d''existence. Vous devez impérativement avoir vu ou touché la plante de destination au moins une fois auparavant. Pendant toute la durée du sort, n''importe quelle créature peut entrer par la plante de départ et ressortir par celle d''arrivée en dépensant 1,50 mètre de déplacement.',
        NULL
    );
