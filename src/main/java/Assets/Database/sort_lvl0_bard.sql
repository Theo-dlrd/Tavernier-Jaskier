INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Moquerie cruelle',
    0,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '18 mètres',
    'V',
    'instantanée',
    'Vous lancez une bordée d''insultes empreintes d''un subtil enchantement à une créature située à portée dans votre champ de vision. Si elle vous entend (elle n''a pas besoin de vous comprendre), elle doit réussir un jet de sauvegarde de Sagesse, sans quoi elle subit 1d4 dégâts psychiques et se trouve désavantagée sur le prochainjet d''attaque qu''elle effectue avant la fin de son prochain tour.' || E'\n' || 'Les dégâts du sort augmentent de 1d4 quand vous atteignez le niveau 5 (2d4), le niveau 11 (3d4) et le niveau 17 (4d4).',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/viciousmockery_spell_bg3_wiki_guide_150px.png'
);