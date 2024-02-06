INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Aura de pureté',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'personnelle (9 m de rayon)',
    'V',
    'concentration, jusqu''à 10 minutes',
    'Une énergie purificatrice émane de vous et forme une aura dans un rayon de 9 mètres. Cette aura se déplace avec vous jusqu''à la fin du sort et reste centrée sur vous. Chaque créature non hostile qui se trouve dans l''aura (vous y compris) ne peut pas tomber malade, devient résistante aux dégâts de poison et est avantagée sur les jets de sauvegarde contre les effets générant les états suivants : assourdi, aveuglé, charmé, empoisonné, étourdi, paralysé, terrorisé.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/beacon_of_hope_spell_bg3_wiki_guide64px.png'
),
(
    'Aura de vie',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'personnelle (9 m de rayon)',
    'V',
    'concentration, jusqu''à 10 minutes',
    'Une énergie protectrice de vie émane de vous et forme une aura dans un rayon de 9 mètres. Cette aura se déplace avec vous jusqu''à la fin du sort et reste centrée sur vous. Chaque créature non hostile qui se trouve dans l''aura (vous y compris) devient résistante aux dégâts nécrotiques et il est impossible de réduire son maximum de points de vie. De plus,une créature vivante non hostile récupère 1 point de vie quand elle débute son tour au sein de l''aura alors qu''elle a O point de vie.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/wardenofvitality-spell-bg3-wiki-guide-150px.png'
),
(
    'Bannissement',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    '18 mètres',
    'V, S, M (un objet qui répugne à la cible)',
    'concentration, jusqu''à 1 minute',
    'Vous tentez d''envoyer une créature située dans votre champ de vision dans un autre plan d''existence. Elle doit réussir un jet de sauvegarde de Charisme ou se faire bannir.' || E'\n' || 'Si la cible est native du plan d''existence sur lequel vous vous trouvez, vous l''exilez dans un demi-plan inoffensif. Elle est neutralisée tant qu''elle se trouve là-bas et y reste jusqu''à la fin du sort. À ce moment, elle réapparaît à l''endroit qu''elle a quitté ou dans l''emplacement inoccupé le plus proche si son emplacement de départ est occupé.' || E'\n' || 'Si la cible est originaire d''un plan d''existence autre que celui sur lequel vous vous trouvez, une légère détonation accompagne son retour de force sur son plan d''origine. Si le sort se termine avant qu''une minute ne se soit écoulée, la cible réapparaît à l''endroit qu''elle a quitté ou dans l''emplacement inoccupé le plus proche si son emplacement de départ est occupé. Sinon, elle ne revient pas.' || E'\n' || '**À plus haut niveau**, Si vous lancez ce sort en utilisant un emplacement de niveau 5 ou plus, vous pouvez viser une créature de plus par niveau au-delà du 4e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/banishment-spell-bg3-wiki-guide-150px.png'
),
(
    'Frappe assommante',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action bonus',
    'personnelle',
    'V',
    'concentration, jusqu''à 1 minute',
    'Lors de la prochaine attaque armée qui vous permet de toucher une créature pendant la durée du sort, votre arme transperce le corps et l''esprit de la cible et lui inflige 4d6 dégâts psychiques supplémentaires. La cible doit faire un jet de sauvegarde de Sagesse. Si elle échoue, elle est désavantagée lors desjets d''attaque et de caractéristique et ne peut pas utiliser de réaction avant la fin de son prochain tour.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/spell_evocation_staggeringsmite_baldurs_gate_3_wiki_guide_65px.png'
),
(
    'Localiser une créature',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '1 action',
    'personnelle',
    'V, S, M (des poils de chien de chasse)',
    'concentration, jusqu''à 1 heure',
    'Décrivez ou nommez une créature qui vous est familière. Vous sentez dans quelle direction elle se trouve,à condition qu''elle soit dans un rayon de 300 mètres. Si elle se déplace, vous savez dans quelle direction.' || E'\n' || 'Le sort permet de localiser une créature spécifique de votre connaissance ou la créature la plus proche du même type (comme un humain ou une licorne), mais pour cela, vous devez avoir déjà vu une telle créature de près, c''est-à-dire vous être trouvé à 9 mètres d''elle ou moins au moins une fois dans votre vie. Si la créature que vous décrivez ou nommez se trouve actuellement sous une forme différente, sous l''effet d''un sort de métamorphose par exemple, ce sort est incapable de la localiser.' || E'\n' || 'Le sort ne parvient pas à localiser la créature si le chemin qui vous relie directement est coupé par une étendue d''eau courante d''au moins 3 mètres de large.',
    NULL
),
(
    'Protection contre la mort',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'contact',
    'V, S',
    '8 heures',
    'Vous touchez une créature et lui donnez une protection relative contre la mort.' || E'\n' || 'Quand elle devrait tomber à O point de vie pour la première fois suite à des dégâts, elle tombe à la place à 1 point de vie et le sort se termine.' || E'\n' || 'Si le sort est encore actif quand la cible est soumise à un effet qui devrait la tuer sur-le-champ sans lui infliger de dégâts, l''effet est annulé contre cette cible et le sort se termine.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/deathward-spell-bg3-wiki-guide-64px.png'
)ON CONFLICT(nom_sort) DO NOTHING;