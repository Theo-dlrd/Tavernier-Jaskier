INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Envoûtement',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '18 mètres',
    'V, S',
    '1 minute',
    'Vous entonnez une suite de paroles envoûtantes qui obligent les créatures de votre choix qui vous entendent et sont situées à portée et dans votre champ de vision à faire un jet de sauvegarde de Sagesse. Une créature qui ne peut pas être charmée réussit automatiquement ce jet de sauvegarde. Si vous ou vos compagnons vous battez contre une de ces créatures, elle est avantagée lors du jet de sauvegarde. Si la créature rate son jet, elle est désavantagée lors des tests de Sagesse (Perception) destinés à percevoir une créature autre que vous jusqu''à ce que le sort se termine ou jusqu''à ce qu''elle ne puisse plus vous entendre. Le sort se termine si vous êtes neutralisé ou dans l''incapacité de parler.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/enthrall-spell-bg3-wiki-guide-64px.png'
),
(
    'Rayon affaiblissant',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Nécromancie'),
    '1 action',
    '18 mètres',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Un rayon noir fait d''énergie débilitante jaillit de votre doigt en direction d''une créature à portée. Faites une attaque de sort à distance contre la cible. Si vous la touchez, la créature inflige seulement la moitié des dégâts habituels lorsqu''elle attaque avec une arme basée sur la Force.' || E'\n' || 'La cible a droit à un jet de sauvegarde de Constitution contre le sort à la fin de chacun de ses tours. Le sort se termine si elle réussit.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/ray_of_enfeeblement_spell_baldursgate3_wiki_guide_150px_2.png'
);