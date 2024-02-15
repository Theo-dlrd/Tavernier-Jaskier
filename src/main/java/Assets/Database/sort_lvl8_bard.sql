INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Esprit impénétrable',
    8,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
    '1 action',
    'contact',
    'V, S',
    '24 heures',
    'Vous touchez une créature consentante et, jusqu''à la fin du sort, vous l''immunisez contre les dégâts psychiques, les effets percevant les émotions ou révélant les pensées, les sorts de divination et l''état charmé. Ce sort déjoue même les souhaits et les sorts et effets de même puissance qui cherchent à affecter l''esprit de la cible ou à obtenir des informations sur elle.',
    NULL
),


