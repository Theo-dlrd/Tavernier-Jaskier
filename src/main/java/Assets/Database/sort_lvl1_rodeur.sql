INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Alarme',
        1,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '1 minute',
        '9 mètres',
        'V, S, M (une minuscule clochette et un filament en argent)',
        '8 heures',
        'Vous installez une alarme pour vous avertir en cas d''intrusion. Choisissez une porte, une fenêtre ou une zone à portée qui ne fasse pas plus qu''un cube de 6 mètres d''arête. Tant que le sort fait effet, une alarme vous alerte dès qu''une créature de taille Très Petite ou supérieure touche la zone protégée ou y pénètre. Au moment où vous lancez le sort, vous pouvez désigner des créatures qui ne déclencheront pas l''alarme. Vous pouvez aussi choisir si l''alarme sera audible ou mentale.' || E'\n' || 'Une alarme mentale vous avertit d''un tintement dans votre tête tant que vous vous trouvez dans un rayon de 1,5 kilomètre autour de la zone protégée. Ce tintement suffit à vous réveiller si vous êtes endormi.' || E'\n' || 'Une alarme audible émet le même son qu''une cloche d''alerte pendant 10 secondes et retentit dans un rayon de 18 mètres.',
        NULL
    ),
    (
        'Grêle d''épines',
        1,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 action bonus',
        'personnelle',
        'V',
        'concentration, jusqu''à 1 minute',
        'La prochaine fois que vous touchez une créature avec une attaque armée à distance avant la fin du sort, ce dernier crée une pluie d''épines qui jaillit de votre arme ou de votre munition. En plus de l''effet normal de l''attaque, la cible et toutes les créatures situées dans un rayon de 1,50 mètre autour d''elle doivent faire un jet de sauvegarde de Dextérité. Une créature subit 1d10 dégâts perforants en cas d''échec, la moitié en cas de réussite.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts augmentent de 1d10 par emplacement de sort au-delà du 1er (pour un maximum de 6d10).',
        NULL
    );