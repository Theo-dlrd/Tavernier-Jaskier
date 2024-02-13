INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Terrain hallucinatoire',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Illusion'),
    '10 minutes',
    '90 mètres',
    'V, S, M (une pierre,une brindille et un bout de plante verte)',
    '24 heures',
    'Vous maquillez le terrain naturel dans un cube de 45 mètres d''arête situé à portée et lui attribuez l''apparence, les bruits et les odeurs d''un autre type de terrain naturel. Ainsi, vous pouvez faire passer un champ ou une route pour un marais, une colline, une crevasse ou un autre terrain difficile voire impossible à traverser. Vous pouvez aussi déguiser une mare en prairie,un précipice en pente douce ou un goulet semé de rocaille en route large et aplanie. Les structures manufacturées, l''équipement et les créatures de la zone ne changent pas d''apparence.' || E'\n' || 'Les caractéristiques tactiles de la zone ne changent pas, les créatures qui y pénètrent risquent donc fort de percer l''illusion à jour. Si la différence entre le terrain réel et l''illusion n''est pas évidente au toucher, une créature qui examine soigneusement la zone a droit à un test d''Intelligence (Investigation) opposé au DD du jet de sauvegarde de votre sort pour percer l''illusion à jour. Une fois qu''une créature a compris l''illusion, elle la voit comme une image floue superposée au terrain réel.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/evardsblacktentacles-spell-bg3-wiki-guide-64px.png'
);