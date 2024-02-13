INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Création de mort-vivant',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Nécromancie'),
    '1 minute',
    '3 mètres',
    'V, S, M (un pot d''argile rempli de poussière tombale, un pot d''argile rempli d''eau saumâtre et un onyx noir d''une valeur de 150 po par cadavre)',
    'instantanée',
    'Ce sort se lance uniquement de nuit. Choisissez jusqu''à trois cadavres de créatures humanoïdes de taille Moyenne ou Petite situés à portée. Chacun se change en goule placée sous votre contrôle. (Le MD dispose des statistiques de ces créatures).' || E'\n' || 'À chacun de vos tours, vous pouvez utiliser une action bonus pour contrôler mentalement les créatures que vous avez animées avec ce sort si elles se trouvent dans un rayon de 36 mètres (si vous en contrôlez plusieurs, vous pouvez en commander une ou plusieurs à la fois, à condition de donner le même ordre à toutes). Vous pouvez décider de l''action que la créature va entreprendre et de l''endroit où elle va se rendre lors de son prochain tour, ou donner des consignes plus génériques, comme de garder une salle ou un couloir. En l''absence d''ordre de votre part, la créature se contente de se défendre contre les créatures hostiles. Dès qu''une créature a reçu un ordre, elle s''y conforme jusqu''à avoir accompli sa tâche.' || E'\n' || 'La créature reste sous votre contrôle pendant 24 heures, après quoi elle cesse d''obéir aux ordres que vous lui avez donnés. Pour la maintenir sous votre contrôle pendant 24 heures de plus, vous devez lui relancer ce sort avant que les 24 heures de contrôle en cours ne se soient écoulées. Cette nouvelle utilisation du sort vous permet de réaffirmer votre contrôle sur un maximum de trois créatures que vous avez déjà animées via ce sort au lieu d''en animer de nouvelles.' || E'\n' || 'Àplushautniveau. Si vous lancez ce sort en utilisant un emplacement de niveau 7 ou plus, vous pouvez animer ou maintenir votre contrôle sur quatre goules. Quand vous le lancez à partir d''un emplacement de niveau 8, vous pouvez animer ou maintenir votre contrôle sur cinq goules ou deux blêmes ou deux nécrophages. Quand vous le lancez à partir d''un emplacement de niveau 9, vous pouvez animer ou maintenir votre contrôle sur six goules ou trois blêmes ou trois nécrophages ou deux momies.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/create_undead_spell_necromancy_school_baldursgate3_wiki_guide_64px.png'
),
(
    'Invoquer une fée',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 minute',
    '27 mètres',
    'V, S',
    'concentration, jusqu''à 1 heure',
    'Vous invoquez une créature féerique dotée d''un indice de dangerosité de 6 ou moins, ou un esprit féerique qui revêt l''apparence d''une bête dotée d''un indice de dangerosité de 6 ou moins. La créature apparaît dans une case inoccupée située à portée dans votre champ de vision. Elle disparaît dès qu''elle tombe à O point de vie ou quand le sort se termine.' || E'\n' || 'La créature féerique se montre amicale envers vous et vos compagnons. Lancez l''initiative pour elle, sachant qu''elle dispose de ses propres tours de jeu. Elle obéit aux ordres verbaux que vous lui donnez (sans que cela vous demande d''utiliser une action), tant qu''ils ne vont pas à l''encontre de son alignement. En l''absence d''ordre, elle se défend contre les créatures hostiles, mais n''entreprend pas d''autre action.' || E'\n' || 'C''est le MD qui dispose des statistiques de la créature féerique.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 7 ou plus, l''indice de dangerosité de l''élémentaire augmente de 1 par niveau au-delà du 6e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/faerie_fire_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Pétrification',
    6,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action',
    '18 mètres',
    'V, S, M (une pincée de chaux, de l''eau et de la terre)',
    'concentration, jusqu''à 1 minute',
    'Vous tentez de changer en pierre une créature située à portée dans votre champ de vision. Si le corps de la cible est fait de chair, elle doit faire un jet de sauvegarde de Constitution. Si elle échoue, elle se retrouve entravée, car sa chair se met à durcir. Si elle réussit, elle n''est pas affectée.' || E'\n' || 'Une créature entravée par ce sort doit faire un nouveau jet de sauvegarde de Constitution à la fin de chacun de ses tours. Si elle en réussit trois, le sort se termine. Si elle en rate trois, elle se change en pierre et se retrouve pétrifiée pendant toute la durée du sort. Inutile que les succès et les échecs soient consécutifs, notez juste leur nombre jusqu''à ce que la cible arrive à en accumuler trois d''une sorte ou de l''autre.' || E'\n' || 'Si quelqu''un brise le corps physique de la cible alors qu''elle est pétrifiée, les difformités subies sont conservées par sa forme originelle quand elle la reprend.' || E'\n' || 'Si vous maintenez votre concentration sur ce sort jusqu''à la fin de la durée maximale, la cible est définitivement changée en pierre jusqu''à ce que quelqu''un dissipe l''effet.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/fleshtostone_spells_transmutation_school_baldursgate3_wiki_guide_64px.png'
);