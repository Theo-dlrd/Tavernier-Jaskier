INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Aura magique de Nystul',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Illusion'),
        '1 action',
        'contact',
        'V, S, M (un petit carré de soie)',
        '24 heures',
        'Vous enveloppez la créature ou l''objet touché d''une illusion, afin que les sorts de divination révèlent des informations erronées à son propos. La cible du sort doit être une créature consentante ou un objet qui n''est ni porté ni transporté par une autre créature.' || E'\n' || 'Lorsque vous lancez le sort, vous choisissez l''un des effets suivants, ou les deux, qui persistent pendant toute la durée du sort. Si vous lancez ce sort sur la même créature ou le même objet chaque jour pendant 30 jours,en lui attribuant le même effet à chaque fois, l''illusion persiste jusqu''à ce que quelqu''un la dissipe.' || E'\n' || '**Aura factice**: Vous modifiez la manière dont la cible apparaît vis-à-vis des sorts et effets magiques détectant les auras magiques, comme détection de la magie. Vous pouvez ainsi faire en sorte qu''un objet magique paraisse dépourvu de magie ou qu''un objet ordinaire semble magique, ou vous pouvez modifier l''aura magique de la cible de manière à ce qu''elle paraisse appartenir à l''école de magie de votre choix. Quand vous apposez cet effet sur un objet, vous pouvez faire en sorte que la magie factice se montre à toute personne qui manipule l''objet.' || E'\n' || '**Masque**: Vous modifiez la manière dont la cible apparaît aux sorts et effets magiques qui détectent les types de créatures, comme le sens divin d''un paladin ou le déclencheur d''un sort de symbole. Vous choisissez un type de créature : les autres sorts et effets magiques traitent la cible comme si elle appartenait au type ou à l''alignement choisi.',
        NULL
    ),
    (
        'Corde enchantée',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action',
        'contact',
        'V, S, M (extrait de maïs en poudre et boucle de parchemin torsadé)',
        '1 heure',
        'Vous touchez une longueur de corde d''au maximum 18 mètres. L''une de ses extrémités s''élève alors dans les airs, jusqu''à ce que toute la corde se dresse perpendiculairement au sol. Une entrée invisible s''ouvre à l''extrémité supérieure de la corde et débouche sur un espace extradimensionnel qui persiste jusqu''à la fin du sort.' || E'\n' || 'On peut atteindre cet espace extradimensionnel en grimpant jusqu''au sommet de la corde. Il peut accueillir un maximum de huit créatures de taille Moyenne ou inférieure. On peut ensuite tirer la corde dans l''espace extradimensionnel, afin que personne ne la voie en dehors de l''abri.' || E'\n' || 'Les attaques et les sorts ne peuvent pas traverser l''entrée de l''espace extradimensionnel, ni depuis l''intérieur ni depuis l''extérieur. En revanche, les créatures qui se trouvent à l''intérieur peuvent regarder dehors grâce à une fenêtre de 90 centimètres sur 1,50 mètre centrée sur la corde.' || E'\n' || 'Tout ce qui se trouve dans l''espace extradimensionnel tombe à l''extérieur quand Je sort se termine.',
        NULL
    ),
    (
        'Flèche acide de Melf',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        '27 mètres',
        'V, S, M ( poudre de feuille de rhubarbe et estomac de vipère)',
        'instantanée',
        'Une flèche d''un vert chatoyant file vers une cible située à portée et explose en une gerbe d''acide. Faites une attaque de sort à distance contre la cible. Si vous touchez, la cible reçoit 4d4 dégâts d''acide immédiatement et 2d4 dégâts d''acide à la fin de son prochain tour. Si vous ne touchez pas, l''acide éclabousse la cible et lui inflige la moitié des dégâts initiaux, mais aucun à la fin de son prochain tour.' || E'\n' || '**À plus haut niveau**: Quand vous utilisez ce sort via un emplacement de niveau 3 ou plus, les dégâts initiaux et secondaires augmentent de 1d4 par niveau au-delà du 2e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/melft''s_acid_arrow_spell_baldursgate3_wiki_guide_150px_2.png'
    ),
    (
        'Verrou magique',
        2,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
        '1 action',
        'contact',
        'V, S, M (poussière d''or d''une valeur minimum de 25 po, que le sort consume)',
        'jusqu''à dissipation',
        'Vous touchez une ouverture fermée, comme une porte, une fenêtre, un portail, un coffre ou autre. Elle se verrouille alors pour toute la durée du sort. Vous et toutes les créatures désignées lors de l''incantation du sort pouvez ouvrir l''ouverture normalement. Vous pouvez aussi définir un mot de passe qui, une fois prononcé dans un rayon de 1,50 mètre autour de l''objet fermé, dissipe le sort pendant 1 minute. Sinon, impossible d''ouvrir l''objet à moins de le briser ou de dissiper ou supprimer le sort. Un sort de _déblocage_ supprime le _verrou magique_ pendant 10 minutes.' || E'\n' || 'Tant que l''objet est affecté par ce sort, il est bien plus difficile à briser ou à ouvrir de force: le DD pour le briser ou crocheter ses éventuelles serrures augmente de 10.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/arcanelock-spell-bg3-wiki-guide-64px.png'
    );
