INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Explosion occulte',
    0,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '36 mètres',
    'V, S',
    'instantanée',
    'Un éclair d''énergie crépitante file vers une créature à portée. Faites un jet d''attaque de sort à distance contre la cible. Si vous réussissez, elle subit 1d10 dégâts de force.' || E'\n' || 'Le sort crée des rayons supplémentaires quand vous atteignez certains niveaux : il lance deux rayons au niveau 5, trois au niveau 11 et quatre au niveau 17. Vous pouvez diriger tous les rayons sur une même cible ou les répartir entre plusieurs. Faites un jet d''attaque distinct pour chaque rayon.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/eldritch_blast_spell_baldursgate3_wiki_guide_150px_2.png'
);