INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Invoquer un élémentaire',
        5,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 minute',
        '27 mètres',
        'V, S, M (encens à brûler pour l''air, argile molle pour la terre, soufre et phosphore pour le feu, ou sable et eau pour l''eau)',
        'concentration, jusqu''à 1 heure',
        'Vous invoquez un serviteur élémentaire. Choisissez une zone d''air, de terre, de feu ou d''eau occupant un cube de 3 mètres d''arête situé à portée. Un élémentaire doté d''un indice de dangerosité de 5 ou moins et adapté à la zone que vous avez choisie apparaît dans un espace inoccupé situé dans un rayon de 3 mètres autour d''elle. Par exemple, un élémentaire du feu jaillit d''un brasier tandis qu''un élémentaire de la terre sort du sol. L''élémentaire disparaît dès qu''il tombe à 0 point de vie ou quand le sort se termine.' || E'\n' || 'L''élémentaire se montre amical envers vous et vos compagnons. Lancez l''initiative pour lui, sachant qu''il dispose de ses propres tours de jeu. Il obéit aux ordres verbaux que vous lui donnez (sans que cela vous demande d''utiliser une action). En l''absence d''ordre, il se défend contre les créatures hostiles, mais n''entreprend pas d''autre action.' || E'\n' || 'Si votre concentration se brise, l''élémentaire ne disparaît pas, mais il échappe à votre contrôle et devient hostile envers vous et vos compagnons. Il peut aller jusqu''à vous attaquer. Vous ne pouvez pas renvoyer un élémentaire qui est hors de contrôle, il disparaît simplement 1 heure après que vous l''avez invoqué.' || E'\n' || 'C''est le MD qui dispose des statistiques de l''élémentaire.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 6 ou plus, l''indice de dangerosité de l''élémentaire augmente de 1 par niveau au-delà du 5e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/conjureelemental-spell-bg3-wiki-guide-150px.png'
    ),
    (
        'Réincarnation',
        5,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
        '1 heure',
        'contact',
        'V, S, M (huiles et onguents rares d''une valeur minimale de 1 000 po, que le sort consume)',
        'instantanée',
        'Vous touchez un humanoïde mort ou un morceau du cadavre d''une telle créature. Si la créature est morte depuis 10 jours au maximum, le sort lui fabrique un nouveau corps adulte et y appelle son âme. Le sort échoue si l''âme n''est pas libre de gagner ce corps ou si elle ne le désire pas.' || E'\n' || 'La magie façonne un nouveau corps pour accueillir l''âme, ce qui risque de modifier la race de la créature. Le MD lance 1d100 et consulte la table suivante pour déterminer quel sera le corps de la créature ramenée à la vie ou il en choisit un.' || E'\n' || '**d100 -> Race**' || E'\n' || '01-04 -> Sangdragon' || E'\n' || '05-13 -> Nain des collines' || E'\n' || '14-21 -> Nain des montagnes' || E'\n' || '22-25 -> Elfe noir' || E'\n' || '26-34 -> Haut elfe' || E'\n' || '35-42 -> Elfe sylvestre' || E'\n' || '43-46 -> Gnome des forêts' || E'\n' || '47-52 -> Gnome des roches' || E'\n' || '53-56 -> Demi-elfe' || E'\n' || '57-60 -> Demi-orc' || E'\n' || '61-68 -> Halfelin pied-léger' || E'\n' || '69-76 -> Halfelin robuste' || E'\n' || '77-96 -> Humain' || E'\n' || '97-100 -> Tieffelin' || E'\n' || 'La créature réincarnée se souvient de son ancienne vie et de ses expériences passées. Elle garde les capacités dont elle disposait sous sa forme originelle, mais échange sa race précédente contre la nouvelle et modifie ses traits raciaux en fonction.',
        NULL
    ),
    (
        'Coquille antivie',
        5,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
        '1 action',
        'personnelle (3 mètres de rayon)',
        'V, S',
        'concentration, jusqu''à 1 heure',
        'Une barrière scintillante se déploie depuis votre personne jusqu''à englober une zone d''un rayon de 3 mètres. Elle se déplace avec vous, reste centrée sur vous et repousse les créatures autres que les morts-vivants et les créatures artificielles. Cette barrière persiste pendant toute la durée du sort.' || E'\n' || 'La barrière empêche les créatures affectées de la franchir ou de passer un membre au travers. Une créature affectée peut lancer des sorts ou porter des attaques à distance ou via une arme à allonge, tout cela franchissant la barrière.' || E'\n' || 'Si vous vous déplacez de telle manière qu''une créature affectée est contrainte de traverser la barrière, le sort se termine.',
        NULL
    );
