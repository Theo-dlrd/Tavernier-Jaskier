INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Druidisme',
        0,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
        '1 action',
        '9 mètres',
        'V, S',
        'instantanée',
        'Vous créez l''un des effets suivants à portée après quelques murmures adressés aux esprits de la nature.' || E'\n' || 'Vous créez un effet sensorielm inuscule et inoffensif qui annonce le temps qu''il fera là où vous vous trouvez pendant les 24 heures à venir. Cet effet peut prendre la forme d''un orbe doré si le temps va rester dégagé, d''un nuage s''il va pleuvoir, de flocons s''il va neiger, etc. L''effet persiste pendant 1 round.' || E'\n' || 'Vous faites instantanément éclore une fleur ou un bourgeon ou germer une graine.' || E'\n' || 'Vous créez un effet sensoriel instantané inoffensif, comme des feuilles qui tombent, un coup de vent, le bruit que ferait un petit animal ou une légère odeur de moufette. L''effet doit être contenu dans un cube d''au maximum 1,50 mètre d''arête.' || E'\n' || 'Vous allumez ou éteignez instantanément une chandelle, une torche ou un petit feu de camp.',
        NULL
    ),
    (
        'Fouet épineux',
        0,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
        '1 action',
        '9 mètres',
        'V, S, M (une tige de plante épineuse)',
        'instantanée',
        'Vous créez un long fouet semblable à une liane couverte d''épines. Sur votre ordre, il frappe une créature à portée. Faites une attaque de sort au corps à corps contre la cible. Si vous touchez, la créature subit 1d6 dégâts perforants et, si la créature est de taille Grande ou inférieure, vous l''attirez sur 3 mètres dans votre direction.' || E'\n' || 'Les dégâts du sort augmentent de 1d6 quand vous atteignez le niveau 5 (2d6), le niveau 11 (3d6) et le niveau 17 (4d6).',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/thorn_whip_spell_baldursgate3_wiki_guide_150px.png'
    ),
    (
        'Gourdin magique',
        0,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
        '1 action bonus',
        'contact',
        'V, S, M (du gui, une feuille de trèfle et un bâton ou un gourdin)',
        '1 minute',
        'La puissance du monde naturel imprègne le bois du bâton ou du gourdin que vous tenez. Pendant toute la durée du sort, vous pouvèz utiliser votre caractéristique d''incantation au lieu de votre Force pour effectuer les jets d''attaque et de dégâts au corps à corps avec cette arme. Le dé de dégâts de l''arme devient un d8. L''arme devient magique si elle ne l''était pas déjà. Le sort se termine si vous le lancez de nouveau ou si vous lâchez votre arme.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/shillelagh_spell_baldursgate3_wiki_guide_35px.png'
    ),
    (
        'Produire une flamme',
        0,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 action',
        'personnelle',
        'V, S',
        '10 minutes',
        'Une flamme vacillante apparaît dans votre main. Elle y reste pendant toute la durée du sort et ne vous blesse pas, pas plus qu''elle n''endommage votre équipement. La flamme émet une vive lumière dans un rayon de 3 mètres et une faible lumière dans un rayon de 3 mètres de plus. Le sort se termine si vous le révoquez par une action ou si vous le lancez de nouveau.' || E'\n' || 'Vous pouvez attaquer avec la flamme, mais cela met fin au sort. Pour cela, quand vous lancez le sort, ou par une action lors d''un tour ultérieur, vous lancez la flamme sur une créature située dans un rayon de 9 mètres. Faites une attaque de sort à distance. Si vous touchez, la cible subit 1d8 dégâts de feu. Les dégâts de ce sort augmentent de 1d8 quand vous atteignez le niveau 5 (2d8), le niveau 11 (3d8) et Je niveau 17 (4d8).',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/produce_flame_spell_baldursgate3_wiki_guide_150px.png'
    );