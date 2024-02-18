INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Assistance',
        0,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Divination'),
        '1 action',
        'contact',
        'V, S',
        'concentration, jusqu''à 1 minute',
        'Vous touchez une créature consentante. Une fois avant la fin du sort,la cible peut lancer ld4 et ajouter le chiffre obtenu au test de caractéristique de son choix. Elle peut lancer le dé avant ou après le test. Le sort se termine alors.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/guidance_spell_baldursgate3_wiki_guide_150px_2.png'
    ),
    (
        'Epargner les mourants',
        0,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Nécromancie'),
        '1 action',
        'contact',
        'V, S',
        'instantanée',
        'Vous touchez une créature vivante à 0 point de vie, ce qui la stabilise. Ce sort n''a aucun effet sur les morts-vivants et les créatures artificielles.',
        NULL
    ),
    (
        'Flamme sacrée',
        0,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        '18 mètres',
        'V, S',
        'instantanée',
        'Un flamboiement digne d''une flamme s''abat sur une créature située à portée dans votre champ de vision. La cible doit réussir un jet de Dextérité ou subir 1d8 dégâts radiants. Même si elle se trouve derrière un abri, la cible n''est pas avantagée lors dujet de sauvegarde.' || E'\n' || 'Les dégâts du sort augmentent de 1d8 quand vous atteignez le niveau 5 (2d8), le niveau 11 (3d8) et le niveau 17 (4d8).',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/sacred_flame_spell_baldursgate3_wiki_guide_150px_2.png'
    ),
    (
        'Résistance',
        0,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '1 action',
        'contact',
        'V, S, M (une cape miniature)',
        'concentration, jusqu''à 1 minute',
        'Vous touchez une créature consentante. Une fois avant la fin du sort, elle peut lancer 1d4 et ajouter le nombre obtenu à un unique jet de sauvegarde de son choix. Elle peut lancer le dé avant ou après avoir fait son jet de sauvegarde. Le sort se termine alors.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/resistance_spell_baldursgate3_wiki_guide_150px_2.png'
    ),
    (
        'Thaumaturgie',
        0,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action',
        '9 mètres',
        'V',
        'jusqu''à 1 minute',
        'Vous créez une manifestation merveilleuse mineure ou un signe de puissance surnaturelle à portée, ce qui génère l''un des effets magiques suivants à portée.' || E'\n' || '* Votre voix retentit jusqu''à trois fois plus fort que la normale pendant 1 minute.' || E'\n' || '* Les flammes vacillent, se ravivent, se réduisent ou changent de couleur pendant une minute.' || E'\n' || '* Vous provoquez des secousses inoffensives qui agitent le sol pendant 1 minute.' || E'\n' || '* Vous émettez un son instantané qui émane d''un point de votre choix situé à portée, comme un roulement de tonnerre, le croassement d''un corbeau ou des murmures inquiétants.' || E'\n' || '* Vous provoquez la fermeture ou l''ouverture violente et immédiate d''une porte ou d''une fenêtre non verrouillée.' || E'\n' || '* Vous modifiez l''apparence de vos yeux pendant 1 minute.' || E'\n' || 'Si vous lancez ce sort à plusieurs reprises, vous ne pouvez avoir que trois effets d''une minute actifs à la fois. Vous pouvez révoquer un tel effet par une action.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/thaumaturgy_spell_baldursgate3_wiki_guide_150px_2.png'
    );