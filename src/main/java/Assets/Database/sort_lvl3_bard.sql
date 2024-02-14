INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Apaisement des émotions',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Enchantement'),
)