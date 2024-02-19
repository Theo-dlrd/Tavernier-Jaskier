INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Invoquer un céleste',
        7,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 minute',
        '27 mètres',
        'V, S',
        'concentration, jusqu''à 1 heure',
        'Vous invoquez un céleste doté d''un indice de dangerosité de 4 ou moins. Il apparaît dans une case inoccupée située à portée dans votre champ de vision. Le céleste disparaît dès qu''il tombe à O point de vie ou quand le sort se termine.' || E'\n' || 'Le céleste se montre amical envers vous et vos compagnons. Lancez l''initiative pour lui, sachant qu''il dispose de ses propres tours de jeu. Il obéit aux ordres verbaux que vous lui donnez (sans que cela vous demande d''utiliser une action), tant qu''ils ne vont pas à l''encontre de son alignement. En l''absence d''ordre, il se défend contre les créatures hostiles, mais n''entreprend pas d''autre action.' || E'\n' || 'C''est le MD qui dispose des statistiques du céleste.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 9 ou plus, vous invoquez un céleste doté d''un indice de dangerosité de 5 ou moins.',
        NULL
    ),
    (
        'Parole divine',
        7,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action bonus',
        '9 mètres',
        'V',
        'instantanée',
        'Vous prononcez une parole divine, emplie de la puissance qui a façonné le monde à l''aube de la création. Choisissez autant de créatures que vous le souhaitez parmi celles que vous voyez, dans la portée du sort. Chaque créature qui vous entend doit réussir un jet de sauvegarde de Charisme ou subir un effet selon la valeur actuelle de ses points de vie.' || E'\n' || '* 50 pv ou moins : assourdie pendant 1 minute' || E'\n' || '* 40 pv ou moins : assourdie et aveuglée pendant 10 minutes' || E'\n' || '* 30 pv ou moins : aveuglée, assourdie et étourdie pendant 1 heure' || E'\n' || '* 20 pv ou moins : tuée sur le coup' || E'\n' || 'Indépendamment de ses points de vie actuels, un céleste, un élémentaire, une fée ou un fiélon qui échoue son jet est retourné à son plan d''origine (s''il n''y est pas déjà) et il ne peut revenir sur votre plan pendant 24 heures, peu importe le moyen, à l''exception du sort _souhait_.',
        NULL
    );