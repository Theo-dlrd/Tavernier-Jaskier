INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Cage de force',
    7,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '30 mètres',
    'V, S, M (poussière de rubis d''une valeur de 1 500 po)',
    '1 heure',
    'Une prison immobile et invisible, en forme de cube et faite de force magique, se forme soudain autour d''une zone de votre choix située à portée. Ce peut être une cage ou une boîte hermétique, à votre guise.' || E'\n' || 'Une prison en forme de cage peut faire un maximum de 6 mètres d''arête et dispose de barreaux d''un centimètre d''épaisseur placés à un centimètre d''intervalle.' || E'\n' || 'Une prison en forme de boîte peut faire un maximum de 3 mètres d''arête et forme une barrière pleine qui empêche la matière de passer. Elle bloque aussi le passage des sorts lancés vers l''intérieur ou l''extérieur.' || E'\n' || 'Quand vous lancez ce sort, chaque créature qui se trouve entièrement au sein de la zone affectée se retrouve prise au piège. Une créature qui s''y trouve seulement en partie ou qui s''avère trop grande pour y tenir est repoussée vers l''extérieur de la zone jusqu''à ce qu''elle la quitte complètement.' || E'\n' || 'Une créature enfermée dans la cage ne peut pas la quitter par des moyens non magiques. Si elle tente d''utiliser la téléportation ou les déplacements interplanaires pour s''échapper, elle doit d''abord faire un jet de sauvegarde de Charisme. Si elle le réussit, elle peut utiliser cette magie pour fuir, sinon elle ne parvient pas à quitter la cage et l''utilisation du sort ou de l''effet est gaspillée. La cage s''étend aussi sur le plan éthéré, ce qui bloque les déplacements éthérés.' || E'\n' || 'La _dissipation de la magie_ est sans effet sur ce sort.',
    NULL
);