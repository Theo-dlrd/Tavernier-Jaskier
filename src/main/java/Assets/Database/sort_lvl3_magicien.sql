INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Monture fantôme',
        3,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Illusion'),
        '1 action',
        '9 mètres',
        'V, S',
        '1 heure',
        'Une créature équine de taille Grande quasi réelle apparaît dans un emplacement au sol de votre choix situé à portée. À vous de décider de l''apparence de la créature, mais elle est systématiquement équipée d''une selle, d''un mors et d''un filet. Toutes les pièces d''équipement nées de ce sort disparaissent dans une volute de fumée si quelqu''un les emporte à plus de 3 mètres de la monture.' || E'\n' || 'Pendant toute la durée du sort, vous et une créature de votre choix pouvez chevaucher la monture. Cette dernière possède les mêmes statistiques qu''un cheval de selle, sauf qu''elle a une vitesse de 30 mètres et peut parcourir 15 kilomètres en une heure ou 20 kilomètres si elle galope. Quand le sort se termine, la monture s''estompe progressivement, ce qui laisse une minute au cavalier pour mettre pied à terre. Le sort se termine si vous utilisez une action pour le révoquer ou si la monture subit le moindre dégât.',
        NULL
    );