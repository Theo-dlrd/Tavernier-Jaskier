INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Insecte géant',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
        '1 action',
        '9 mètres',
        'V, S',
        'concentration, jusqu''à 10 minutes',
        'Vous transformez un maximum de dix mille-pattes, trois araignées, cinq guêpes ou un scorpion situés à portée, en version géante de leur forme naturelle pendant toute la durée du sort. Un mille-patte devient donc un mille-patte géant, une araignée une araignée géante, une guêpe une guêpe géante et un scorpion un scorpion géant.' || E'\n' || 'Chaque créature obéit à vos ordres verbaux et, lors d''un combat, agit à chaque round à votre tour. C''est le MD qui dispose des statistiques de ces créatures et gère leurs actions et leurs déplacements.' || E'\n' || 'Une créature reste sous sa forme géante pendant toute la durée du sort,jusqu''à ce qu''elle tombe à O point de vie ou jusqu''à ce que vous utilisiez une action pour révoquer l''effet du sort sur elle.' || E'\n' || 'Le MD peut vous autoriser à choisir une cible différente. Par exemple, si vous transformez une abeille, sa version géante peut disposer des mêmes statistiques qu''une guêpe géante.',
        NULL
    ),
    (
        'Invoquer des élémentaires mineurs',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 minute',
        '27 mètres',
        'V, S',
        'concentration, jusqu''à 1 heure',
        'Vous invoquez des élémentaires qui apparaissent dans des cases inoccupées situées à portée et dans votre champ de vision. Choisissez l''une des options suivantes pour déterminer quelles créatures apparaissent.' || E'\n' || '* Un élémentaire d''une dangerosité de 2 ou moins.' || E'\n' || '* Deux élémentaires d''une dangerosité de 1 ou moins.' || E'\n' || '* Quatre élémentaires d''une dangerosité de 1/2 ou moins.' || E'\n' || '* Huit élémentaires d''une dangerosité de 1/4 ou moins.' || E'\n' || 'Un élémentaire ainsi invoqué disparaît dès qu''il tombe à 0 point de vie ou quand le sort se termine.' || E'\n' || 'Les créatures invoquées se montrent amicales envers vous et vos compagnons. Lancez l''initiative pour les créatures invoquées en tant que groupe qui dispose de ses propres tours de jeu. Les élémentaires obéissent aux ordres verbaux que vous leur donnez (sans que cela vous demande d''utiliser une action). En l''absence d''ordre, ils se défendent contre les créatures hostiles, mais n''entreprennent pas d''autre action.' || E'\n' || 'C''est le MD qui dispose des statistiques des créatures.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant certains emplacements de niveau supérieur, vous choisissez l''une des options d''invocation décrites précédemment et faites apparaître plus de créatures : deux fois plus pour un emplacement de niveau 6 et trois fois plus pour un emplacement de niveau 8.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/conjureminorelementals-spell-bg3-wiki-guide-64px.png'
    ),
    (
        'Invoquer des êtres des bois',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 action',
        '18 mètres',
        'V, S, M (une baie de houx par créature invoquée)',
        'concentration, jusqu''à 1 heure',
        'Vous invoquez des créatures féeriques qui apparaissent dans des cases inoccupées situées à portée et dans votre champ de vision. Choisissez l''une des options suivantes pour déterminer quelles créatures apparaissent.' || E'\n' || '* Une créature féerique d''une dangerosité de 2 ou moins.' || E'\n' || '* Deux créatures féeriques d''une dangerosité de 1 ou moins.' || E'\n' || 'Quatre créatures féeriques d''une dangerosité de 1/2 ou moins.' || E'\n' || '* Huit créatures féeriques d''une dangerosité de 1/4 ou moins.' || E'\n' || 'Une créature invoquée disparaît dès qu''elle tombe à 0 point de vie ou quand le sort se termine.' || E'\n' || 'Les créatures invoquées se montrent amicales envers vous et vos compagnons. Lancez l''initiative pour les créatures invoquées en tant que groupe qui dispose de ses propres tours de jeu. Les créatures féeriques obéissent aux ordres verbaux que vous leur donnez (sans que cela vous demande d''utiliser une action). En l''absence d''ordre, elles se défendent contre les créatures hostiles, mais n''entreprennent pas d''autre action.' || E'\n' || 'C''est le MD qui dispose des statistiques des créatures.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant certains emplacements de niveau supérieur, vous choisissez l''une des options d''invocation décrites précédemment et faites apparaître plus de créatures : deux fois plus pour un emplacement de niveau 6, et trois fois plus pour un emplacement de niveau 8.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/conjurewoodlandbeings-spell-bg3-wiki-guide-64px.png'
    ),
    (
        'Liane agrippeuse',
        4,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 action bonus',
        '9 mètres',
        'V, S',
        'concentration, jusqu''à 1 minute',
        'Vous invoquez une liane qui sort de terre dans un emplacement inoccupé de votre choix situé à portée dans votre champ de vision. Lorsque vous lancez ce sort, vous pouvez indiquer à la liane de s''enrouler autour d''une créature située dans un rayon de 9 mètres autour d''elle et dans votre champ de vision. La créature doit réussir un jet de sauvegarde de Dextérité, sans quoi elle est traînée sur 6 mètres en direction du pied de la liane.' || E'\n' || 'Tant que la durée du sort ne s''est pas écoulée, vous pouvez ordonner à la liane de continuer de s''en prendre à la même créature ou de changer de cible, et cela par une action bonus à chacun de vos tours.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/conjuration_graspingvine-spell-bg3-wiki-guide-150px.png'
    );
