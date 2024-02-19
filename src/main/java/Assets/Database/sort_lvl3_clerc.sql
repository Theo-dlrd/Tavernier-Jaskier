INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Animation des morts',
        3,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Nécromancie'),
        '1 minute',
        '3 mètres',
        'V, S, M (une goutte de sang, un lambeau de chair et une pincée de poudre d''os)',
        'instantanée',
        'Ce sort crée un serviteur mort-vivant. Choisissez un tas d''os ou le cadavre d''un humanoïde de taille Moyenne ou Petite situé à portée. Votre sort imprègne la cible d''un ignoble simulacre de vie, la relevant sous forme de mort-vivant. Elle devient un squelette si vous avez lancé le sort sur un tas d''os, et un zombi si vous avez opté pour un cadavre (le MD dispose des statistiques de jeu de la créature).' || E'\n' || 'À chacun de vos tours, vous pouvez dépenser une action bonus pour donner un ordre mental à la créature générée via ce sort si elle se trouve dans un rayon de 18 mètres (si vous contrôlez plusieurs créatures, vous pouvez donner un ordre à l''une d''elles, certaines d''entre elles ou à toutes à la fois, à condition de transmettre le même ordre à chacune). À vous de décider quelles actions la créature va entreprendre et à quel endroit elle se déplacera au cours du tour suivant, mais vous pouvez aussi lui donner un ordre plus générique, comme de garder une salle ou un couloir. En l''absence d''ordre, la créature se contente de se défendre contre les créatures hostiles. Une fois qu''elle a reçu un ordre, elle continue à le suivre jusqu''à ce qu''elle ait accompli sa tâche.' || E'\n' || 'La créature est placée sous votre contrôle pendant 24 heures, après quoi elle cesse d''obéir aux ordres que vous lui avez donnés. Pour la contrôler pendant 24 heures de plus, il vous faut lui relancer ce sort avant la fin de la période de 24 heures pendant laquelle il fait effet. Si vous utilisez ce sort ainsi, il vous permet de réaffirmer votre contrôle sur un maximum de quatre créatures animées grâce à lui plutôt que d''en animer une nouvelle.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 4 ou plus, vous animez ou réaffirmez votre contrôle sur deux créatures de plus par niveau au-delà du 3e. Chaque créature doit venir d''un tas d''os ou d''un cadavre différent.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/animate_dead_spells_bg3_wiki_guide64px.png'
    ),
    (
        'Esprits gardiens',
        3,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 action',
        'personnelle (4,50 mètres de rayon)',
        'V, S, M (un symbole sacré)',
        'concentration, jusqu''à 10 minutes',
        'Vous appelez des esprits qui vous protègent. Ils volètent autour de vous dans un rayon de 4,50 mètres pendant toute la durée du sort. Si vous êtes Bon ou Neutre, ils ont une apparence angélique ou féerique (à vous de choisir). Si vous êtes Mauvais, ils ont une apparence fiélone.' || E'\n' || 'Quand vous lancez le sort, vous pouvez désigner autant de créatures que vous le voulez afin qu''il ne les affecte pas. Une créature affectée voit sa vitesse réduite de moitié dans la zone et, quand elle y entre pour la première fois de son tour ou quand elle y commence son tour, elle doit faire unjet de sauvegarde de Sagesse. Si elle échoue, elle subit 3d8 dégâts radiants (si vous êtes Bon ou Neutre) ou 3d8 dégâts nécrotiques (si vous êtes Mauvais). Si elle réussit son jet de sauvegarde, elle subit seulement la moitié de ces dégâts.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 4 ou plus, les dégâts augmentent de 1d8 par niveau au-delà du 3e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/spiritguardians_conjuration_spell_bg3_wiki_64px.png'
    ),
    (
        'Fusion dans la pierre',
        3,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action',
        'contact',
        'V, S',
        '8 heures',
        'Vous entrez dans un objet ou une surface de pierre assez grande pour contenir entièrement votre corps, votre personne et votre équipement fusionnant avec la pierre pendant toute la durée du sort. Vous utilisez votre déplacement pour entrer dans la pierre en un point que vous êtes en mesure de toucher. Il ne reste alors rien de visible ni de détectable indiquant votre présence pour des sens non magiques.' || E'\n' || 'Tant que vous êtes fusionné avec la pierre, vous ne voyez pas ce qui se passe à l''extérieur et vous êtes désavantagé lors des tests de Sagesse (Perception) destinés à entendre les sons qui retentissent à l''extérieur de la pierre. Vous restez conscient du temps qui passe et vous pouvez lancer des sorts sur votre propre personne. Vous pouvez utiliser votre déplacement pour quitter la pierre par l''endroit par où vous y êtes entré, ce qui met fin au sort. En dehors de cela, vous êtes dans l''incapacité de vous déplacer.' || E'\n' || 'Vous n''êtes pas blessé si la pierre subit des dégâts mineurs, mais si elle est partiellement détruite ou change de forme (au point que vous ne tenez plus entièrement à l''intérieur), elle vous expulse et vous subissez 6d6 dégâts contondants. Si la pierre est complètement détruite (ou transmutée en une substance différente), elle vous expulse et vous subissez 50 dégâts contondants. Si vous vous faites expulser de la pierre, vous vous retrouvez à terre dans l''emplacement inoccupé le plus proche de celui par lequel vous êtes entré dans la roche.',
        NULL
    ),
    (
        'Lueur d''espoir',
        3,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '1 action',
        '9 mètres',
        'V, S',
        'concentration, jusqu''à 1 minute',
        'Ce sort offre espoir et robustesse. Choisissez autant de créatures consentantes à portée que vous le désirez. Pendant toute la durée du sort, elles sont avantagées lors des jets de sauvegarde de Sagesse et des jets de sauvegarde contre la mort. De plus, elles récupèrent le maximum de points de vie possible dès qu''elles reçoivent des soins.',
        NULL
    ),
    (
        'Mot de guérison de groupe',
        3,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '1 action bonus',
        '18 mètres',
        'V',
        'instantanée',
        'Vous prononcez des paroles curatives qui rendent un montant de points de vie égal à 1d4 + votre modificateur de caractéristique d''incantation à un maximum de six créatures de votre choix situées à portée et dans votre champ de vision. Ce sort reste sans effet sur les morts-vivants et les créatures artificielles.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 4 ou plus, les soins augmentent de 1d4 par niveau au-delà du 3e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/mass_healing_word_icon_baldurs_gate_3_wiki_guide_64px.png'
    );