INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Mot de pouvoir guérisseur',
    9,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
    '1 action',
    'contact',
    'V, S',
    'instantanée',
    'Une vague d''énergie curative parcourt la créature que vous touchez et lui rend tous ses points de vie. Si elle est charmée, terrorisée, paralysée ou étourdie, cet état se dissipe. Si la créature est à terre, elle peut utiliser sa réaction pour se relever. Ce sort n''a aucun effet sur les morts-vivants et les créatures artificielles.',
    NULL
);