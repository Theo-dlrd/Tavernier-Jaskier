INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Cordon de flèches',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action',
        '1,5 mètres',
        'V, S, M (quatre flèches ou carreaux ou plus)',
        '8 heures',
        'Vous fichez quatre projectiles (flèches ou carreaux) non magiques en terre, à portée, et les imprégnez de magie afin de protéger une zone. Jusqu''à la fin du sort, dès qu''une créature autre que vous approche dans un rayon de 9 mètres autour des projectiles pour la première fois de son tour ou finit son tour à un tel endroit, une munition s''envole pour la frapper. La créature doit réussir un jet de sauvegarde de Dextérité, sans quoi elle subit 1d6 dégâts perforants. Le projectile est ensuite détruit. Le sort se termine s''il ne reste plus de projectiles.' || E'\n' || 'Au moment de l''incantation,vous pouvez désigner plusieurs créatures de votre choix que le sort ignorera.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 3 ou plus, vous pouvez enchanter deux projectiles de plus par niveau au-delà du 2e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/spell_conjuration_hailofthorns_baldurs_gate_3_wiki_guide_65px.png'
    );