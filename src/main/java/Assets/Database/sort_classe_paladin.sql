INSERT INTO sort(nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Sens divin',
    -1,
    NULL,
    '1 action',
    'personnelle',
    'V',
    '1 round',
    'Vous ressentez le mal comme une odeur nauséabonde, tandis que le bien résonne comme une musique céleste à vos oreilles. Vous pouvez utiliser une action pour mettre vos sens en éveil afin de détecter de telles forces. Jusqu''à la fin de votre prochain tour, vous savez où se trouve tout céleste, fiélon ou mort-vivant qui se trouve dans un rayon de 18 mètres autour de vous et n''est pas caché derrière un abri total. Vous connaissez le type (céleste, fiélon ou mort-vivant) de chaque être dont vous ressentez la présence, mais vous ignorez son identité (le comte Strahd von Zarovich, vampire de son état, par exemple). Dans le même rayon, vous détectez aussi la présence de tout lieu ou objet qui a été consacré ou profané, comme par exemple avec un sort comme sanctification.' || E'\n' || 'Vous pouvez utiliser cette aptitude un nombre de fois égal à 1 + votre modificateur de Charisme. Quand vous terminez un long repos, vous récupérez toutes les utilisations dépensées.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/divine_sense_action_paladin_bg3_wiki_150px.png'
),
(
    'Imposition des mains',
    -1,
    NULL,
    '1 action',
    'contact',
    'V, M (Pouvoir de guerison)',
    'instantanée',
    'Votre contact béni peut guérir les blessures. Vous avez un réservoir de pouvoir de guérison qui se remplit quand vous terminez un long repos. Grâce à lui, vous pouvez redonner un nombre de points de vie égal à 5 fois votre niveau de paladin. Vous pouvez utiliser une action pour toucher une créature et puiser dans votre réserve afin de guérir cette créature en lui rendant un certain nombre de points de vie, qui ne peut pas dépasser le maximum de points restant dans votre réserve.' || E'\n' || 'Vous pouvez aussi puiser 5 points de vie dans cette réserve de guérison pour soigner la victime d''une maladie ou d''un poison. Vous pouvez guérir plusieurs maladies ou neutraliser plusieurs poisons grâce à une seule imposition des mains, tant que vous payez séparément le prix de chaque acte de soin.' || E'\n' || 'Cette aptitude n''a aucun effet sur les morts-vivants ou les créatures artificielles.',
    'https://bg3.wiki/w/images/thumb/c/c1/Lay_on_Hands_Cure.webp/380px-Lay_on_Hands_Cure.webp.png'
),
(
    'Châtiment divin',
    -1,
    NULL,
    '1 action',
    'contact',
    'V',
    'instantanée',
    'À partir d''un niveau 2, quand vous frappez une créature avec une arme de corps à corps, vous pouvez utiliser un emplacement de sort pour infliger des dégâts radiants à cette créature en plus des dégâts normaux de l''arme. Vous infligez 2d8 dégâts supplémentaires si vous utilisez un emplacement de sort de niveau 1, auquel vous ajoutez 1d8 par niveau de sorts supplémentaire jusqu''à un maximum de 5d8. Les dégâts subis sont augmentés d''1d8 supplémentaire si la cible est un mort-vivant ou un fiélon.' || E'\n' || 'À partir du niveau 6, quand vous ou une créature amicale qui se trouve dans un rayon de 3 mètres doit faire un jet de sauvegarde, cette créature gagne un bonus à son jet de sauvegarde égal à votre modificateur de Charisme (avec un bonus minimum de +1). Vous devez être conscient pour que ce bonus soit pris en compte.' || E'\n' || 'Au niveau 18, le rayon de cette aura atteint 9 mètres.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/divine_smite_action_paladin_bg3_wiki_150px.png'
),
(
    'Aura de protection',
    -1,
    NULL,
    'passif',
    NULL,
    NULL,
    NULL,
    'À partir du niveau 6, quand vous ou une créature amicale qui se trouve dans un rayon de 3 mètres doit faire un jet de sauvegarde, cette créature gagne un bonus à son jet de sauvegarde égal à votre modificateur de Charisme (avec un bonus minimum de +1). Vous devez être conscient pour que ce bonus soit pris en compte.' || E'\n' || 'Au niveau 18, le rayon de cette aura atteint 9 mètres.',
    'https://bg3.wiki/w/images/thumb/0/0e/Aura_of_Protection.webp/380px-Aura_of_Protection.webp.png'
),
(
    'Aura de courage',
    -1,
    NULL,
    'passif',
    NULL,
    NULL,
    NULL,
    'À partir du niveau 10, vous, ainsi que toute créature amicale qui se trouve à 3 mètres de vous, ne pouvez être terrorisé tant que vous êtes conscient.' || E'\n' || 'Au niveau 18, le rayon de cette aura atteint 9 mètres.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/aura-of-courage-features-character-information-baldurs-gate-3-wiki-guide.png'
),
(
    'Contact purifiant',
    -1,
    NULL,
    '1 action',
    'contact',
    'V',
    'instantanée',
    'À partir du niveau 14, vous pouvez utiliser votre action pour mettre fin à un sort qui vous affecte ou qui affecte une créature consentante que vous touchez.' || E'\n' || 'Vous pouvez utiliser cette aptitude un nombre de fois égal à votre modificateur de Charisme (avec un minimum d''une fois). Vous récupérez les utilisations dépensées dès que vous terminez un long repos.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/holy_rebuke_action_paladin_bg3_wiki_150px.png'
);


/*
 (
    'Sanctuaire',
    -1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action bonus',
    '9 mètres',
    'V, S, M (un petit miroir en argent)',
    '1 minute',
    'Vous protégez une créature à portée contre les attaques. Jusqu''à la fin du sort, toute créature qui vise la cible avec une attaque ou un sort néfaste doit d''abord faire un jet de sauvegarde. Si elle le rate, elle doit choisir une nouvelle cible, sans quoi l''attaque ou le sort est perdu. Ce sort ne protège pas la cible contre les effets de zone, comme l''explosion d''une boule de feu. Ce sort se termine si la créature protégée attaque ou lance un sort affectant une créature ennemie.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/sanctuary_spell_abjuration_bg3_wiki_150px.png'
),
 (
    'Lueur d''espoir',
    -1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    '9 mètres',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Ce sort offre espoir et robustesse. Choisissez autant de créatures consentantes à portée que vous le désirez. Pendant toute la durée du sort, elles sont avantagées lors des jets de sauvegarde de Sagesse et des jets de sauvegarde contre la mort. De plus, elles récupèrent Je maximum de points de vie possible dès qu''elles reçoivent des soins.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/beacon_of_hope_spell_bg3_wiki_guide150px.png'
),
(
    'Gardien de la foi',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    '9 mètres',
    'V',
    '8 heures',
    'Un gardien spectral de taille Grande apparaît et flotte dans un emplacement inoccupé de votre choix situé à portée dans votre champ de vision. Il occupe alors cet emplacement mais sa silhouette reste indistincte, à l''exception de son épée luisante et de son bouclier frappé du symbole de votre divinité.' || E'\n' || 'Toute créature hostile envers vous qui entre dans un emplacement situé dans un rayon de 3 mètres autour du gardien pour la première fois de son tour doit réussir un jet de sauvegarde de Dextérité. Si elle échoue, elle subit 20 dégâts radiants, la moitié seulement si elle réussit. Le gardien disparaît dès qu''il a infligé un total de 60 dégâts.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/guardianoffaith-spell-bg3-wiki-guide-64px.png'
),
(
    'Liberté de mouvement',
    4,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'contact',
    'V, S, M (un lien de cuir enroulé autour d''un bras ou d''un appendice similaire)',
    '1 heure',
    'Vous touchez une créature consentante. Pendant toute la durée du sort, ses déplacements ne sont pas affectés par les terrains difficiles, tandis que les sorts et autres effets magiques ne peuvent ni la paralyser, ni l''entraver, ni réduire sa vitesse.' || E'\n' || 'La cible peut également dépenser 1,50 mètre de déplacement pour échapper automatiquement à des liens non magiques, comme des menottes ou la prise d''une créature qui l''empoigne. Enfin, sous l''eau, elle ne subit pas de malus aux déplacements ni aux attaques.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/freedomofmovement-spell-bg3-wiki-guide-64px.png'
),
(
    'Colonne de flamme',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '18 mètres',
    'V, S, M (une pincée de soufre)',
    'instantanée',
    'Une colonne verticale de feu divin rugissant surgit des cieux et s''abat à l''endroit de votre choix. Toute créature située dans un cylindre de 3 mètres de rayon et 12 mètres de haut centré sur le point à portée de votre choix doit faire un jet de sauvegarde de Dextérité. Celles qui échouent subissent 4d6 dégâts de feu et 4d6 dégâts radiants, les autres la moitié seulement.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 6 ou plus, les dégâts de feu ou les dégâts radiants (à vous de choisir) augmentent de 1d6 par niveau au-delà du 5e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/flame-strike-spells-bg3-wiki-guide-min.png'
),
(
    'Communion',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '1 action',
    'personnelle',
    'V, S, M (de l''encens et une fiole d''eau bénite ou maudite)',
    '1 minute',
    'Vous entrez en contact avec votre divinité ou l''un de ses représentants et lui posez jusqu''à trois questions auxquelles on peut répondre par oui ou par non. Vous devez les poser avant la fin du sort et vous recevez une réponse correcte à chacune d''entre elles.' || E'\n' || 'Les êtres divins ne sont pas forcément omniscients, il se peut donc que vous obteniez « obscur » comme réponse, si votre question porte sur des informations sortant du champ des connaissances de votre divinité. Si une réponse d''un seul mot risque de se révéler trompeuse ou contraire aux intérêts de la divinité, le MD peut lui substituer une courte phrase.' || E'\n' || 'Si vous lancez ce sort à deux reprises ou plus avant un long repos, il y a 25% de chances (cumulables) que chaque incantation en sus de la première ne reçoive pas de réponse. Le MD effectue cejet en secret.',
    NULL
),
(
    'Communication avec les animaux',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '1 action',
    'personnelle',
    'V, S',
    '10 minutes',
    'Vous devenez capable de comprendre les bêtes et de communiquer verbalement avec elles pendant toute la durée du sort. Les connaissances et le degré de conscience de nombreuses bêtes sont limités par leur intelligence réduite, mais elles peuvent au moins vous renseigner sur les environs et les monstres avoisinants, ainsi que sur ce qu''elles perçoivent aujourd''hui ou ont perçu la veille. Si le MD accepte, vous pouvez convaincre une bête de vous accorder une petite faveur.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/speak_with_animals_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Frappe piégeuse',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action bonus',
    'personnelle',
    'V',
    'concentration, jusqu''à 1 minute',
    'La prochaine attaque armée, faite avant la fin de ce sort, qui vous permet de toucher une créature fait jaillir une masse grouillante de lianes épineuses au point d''impact. La cible doit réussir un jet de sauvegarde de Force, sans quoi elle est entravée jusqu''à la fin du sort. Une créature de taille Grande ou supérieure est avantagée sur cejet de sauvegarde. Si la cible réussit sonjet de sauvegarde, les lianes se flétrissent.' || E'\n' || 'Tant que la cible est entravée par le sort, elle subit 1d6 dégâts perforants au début de chacun de ses tours. Une créature entravée par les lianes peut utiliser son action pour faire un jet de sauvegarde de Force contre le DD du jet de sauvegarde de votre sort. Une créature suffisamment proche de la cible pour la toucher peut aussi effectuer ce jet. Si le jet est réussi, la cible est libérée.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, les dégâts augmentent de 1d6 par emplacement de sort au-delà du 1er.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/ensnaring_strike_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Pas brumeux',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action bonus',
    'personnelle',
    'V',
    'instantanée',
    'Vous êtes brièvement entouré d''une brume argentée et vous vous téléportez sur un maximum de 9 mètres jusqu''à un emplacement inoccupé situé dans votre champ de vision.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/misty_step_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Rayon de lune',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action',
    '36 mètres',
    'V, S, M (quelques graines de ménisperme, peu importe l''espèce, et un éclat de feldspath opalescent)',
    'concentration, jusqu''à 1 minute',
    'Un pâle rayon de lune brille dans un cylindre de 1,50 mètre de rayon pour 12 mètres de haut centré sur un point à portée. Une faible lumière emplit le cylindre jusqu''à la fin du sort.' || E'\n' || 'Quand une créature entre dans la zone du sort pour la première fois de son tour ou qu''elle y commence son tour, elle est enveloppée de flammes fantomatiques qui provoquent de violentes douleurs, et doit faire un jet de sauvegarde de Constitution. Si elle échoue, elle subit 2d10 dégâts radiants, la moitié seulement si elle réussit.' || E'\n' || 'Les métamorphes sont désavantagés lors de ce jet. Si l''un d''eux le rate, il reprend aussitôt son apparence originelle et ne peut plus changer de forme tant qu''il n''a pas quitté la zone de lumière du sort.' || E'\n' || 'Une fois que vous avez lancé ce sort, à chacun de vos tours, vous pouvez utiliser une action pour déplacer le rayon de lumière de 18 mètres au maximum dans la direction de votre choix.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 3 ou plus, les dégâts augmentent de 1d1O par niveau au-delà du 2e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/moonbeam_spell_baldursgate3_wiki_guide_150px.png'
),
(
    'Croissance végétale',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action ou 8 heures',
    '45 mètres',
    'V, S',
    'instantanée',
    'Ce sort décuple la vitalité des plantes d''une zone donnée. Le sort a deux modes d''utilisation, l''un apportant des avantages immédiats, l''autre sur le long terme.' || E'\n' || 'Si vous lancez ce sort en une action, choisissez un point à portée. Toutes les plantes ordinaires situées dans un rayon de 30 mètres autour de ce point deviennent particulièrement touffues et la végétation s''épaissit. Une créature qui se déplace dans cette zone doit dépenser 1,20 mètre de déplacement pour parcourir 30 centimètres.' || E'\n' || 'Vous pouvez exclure une ou plusieurs portions, de n''importe quelle taille, de la zone affectée par le sort.' || E'\n' || 'Si vous lancez le sort sur une période de huit heures, vous enrichissez la terre. Toute la végétation dans un rayon de 800 mètres autour d''un point de votre choix situé à portée devient luxuriante pendant un an. Elle donne deux fois plus de nourriture que la normale lors de la récolte.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/planth_grow_spells_bg3_wiki_guide64px.png'
),
(
    'Communion avec la nature',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '1 minute',
    'personnelle',
    'V, S',
    'instantanée',
    'Pendant un court instant, vous ne faites plus qu''un avec la nature et obtenez des informations sur le territoire environnant. En extérieur, ce sort vous transmet des informations sur le terrain qui vous entoure dans un rayon de 4,5 kilomètres. Dans une grotte ou un autre environnement naturel souterrain, le rayon d''action est de 90 mètres. Ce sort ne fonctionne pas là où les constructions ont remplacé la nature, comme en ville ou dans un donjon.' || E'\n' || 'Vous obtenez instantanément des informations sur un maximum de trois éléments de votre choix portant sur l''un des sujets suivants dans votre zone.' || E'\n' || '* Le terrain et les étendues d''eau.' || E'\n' || '* Les plantes, les minéraux, les animaux et les peuples majoritaires.' || E'\n' || '* Les célestes, les fées, les fiélons, les élémentaires ou les morts-vivants dotés d''une certaine puissance.' || E'\n' || '* L''influence émanant des autres plans d''existence.' || E'\n' || 'Les constructions.' || E'\n' || 'Par exemple, vous pouvez apprendre où se trouve un puissant mort-vivant résidant dans la zone, où sont situés les points d''eau potable majeurs et où se trouvent les villages les plus proches.',
    NULL
),
(
    'Passage par les arbres',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '1 action',
    'personnelle',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Vous êtes soudain capable d''entrer dans un arbre et de passer de son sein à celui d''un autre arbre de la même espèce situé dans un rayon de 150 mètres. Ces deux arbres doivent être vivants et au moins de la même taille que vous. Vous devez dépenser 1,50 mètre de déplacement pour entrer dans un arbre. Vous apprenez alors instantanément où se trouvent tous les autres arbres de la même espèce dans un rayon de 150 mètres et vous pouvez gagner l''un d''eux ou ressortir par l''arbre dans lequel vous êtes entré, ce mouvement faisant partie de votre déplacement de 1,50 mètre. Vous apparaissez à l''endroit de votre choix dans un rayon de 1,50 mètre autour de ''arbre dans lequel vous êtes arrivé en dépensant de nouveau 1,50 mètre de déplacement. S''il ne vous reste pas de distance de déplacement à dépenser, vous apparaissez dans un rayon de 1,50 mètre autour de l''arbre par lequel vous êtes entré.' || E'\n' || 'Vous pouvez utiliser cette capacité de transport une fois par round pendant toute la durée du sort. Vous devez terminer chaque tour en dehors d''un arbre.',
    NULL
),
(
    'Fléau',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '9 mètres',
    'V, S, M (une goutte de sang)',
    'concentration, jusqu''à 1 minute',
    'Trois créatures de votre choix au maximum, toutés situées à portée et dans votre champ de vision, sont contraintes de faire unjet de sauvegarde de Charisme. Dès qu''une cible qui a raté ce jet effectue un jet d''attaque ou de sauvegarde alors que le sort n''est pas terminé, elle doit lancer 1d4 et soustraire le nombre obtenu de sonjet d''attaque ou de sauvegarde.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 2 ou plus, vous pouvez viser une créature de plus par niveau au-delà du 1er.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/necromancy-blight-spell-bg3-wiki-guide-64px.png'
),
(
    'Marque du chasseur',
    1,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '1 action bonus',
    '27 mètres',
    'V',
    'concentration, jusqu''à 1 heure',
    'Vous choisissez une créature située à portée dans votre champ de vision et lui apposez une marque mystique la désignant comme votre proie. Jusqu''à la fin du sort, vous lui infligez 1d6 dégâts supplémentaires chaque fois que vous la touchez avec une attaque armée et vous êtes avantàgé sur les éventuels tests de Sagesse (Perception) ou Sagesse (Survie) que vous faites pour la retrouver. Si la cible tombe à 0 point de vie avant que ce sort n''arrive à expiration, vous pouvez utiliser une action bonus lors d''un tour ultérieur pour marquer une nouvelle créature.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 3 ou 4, vous pouvez vous concentrer sur le sort pendant 8 heures. Si vous utilisez un emplacement de niveau 5 ou plus, vous pouvez maintenir votre concentration sur le sort jusqu''à 24 heures.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/hunter''s_mark_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Scrutation',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '10 minutes',
    'personnelle',
    'V, S, M (un focaliseur d''une valeur minimale de 1 000 po comme une boule de cristal, un miroir en argent ou un bénitier rempli d''eau bénite)',
    'concentration, jusqu''à 10 minutes',
    'Vous voyez et entendez une créature donnée de votre choix, à condition qu''elle se trouve sur le même plan d''existence que vous. La cible doit faire un jet de sauvegarde de Sagesse, modifié par le degré de connaissance que vous avez d''elle et le type de lien physique que vous avez établi avec elle. Si la cible sait que vous lancez ce sort, elle peut rater volontairement son jet de sauvegarde si elle veut que vous l''observiez.' || E'\n' || '** Connaissance / Modificateur du jet de sauvegarde **' || E'\n' || 'Deuxième main (vous avez entendu parler de la cible) / +5' || E'\n' || 'Première main (vous avez rencontré la cible) / +0' || E'\n' || 'Familière (vous connaissez bien la cible) / -5' || E'\n' || '** Lien / Modificateur du jet de sauvegarde **' || E'\n' || 'Représentation ou portrait / -2' || E'\n' || 'Possession ou habit / -4' || E'\n' || 'Partie du corps, cheveux, ongles, etc. / -10' || E'\n' || 'Si la cible réussit son jet de sauvegarde, elle n''est pas affectée et vous ne pouvez plus utiliser ce sort sur elle pendant 24 heures.' || E'\n' || 'Si elle rate son jet, le sort crée un organe sensoriel invisible dans un rayon de 3 mètres autour d''elle. Vous voyez et entendez à travers cet organe comme si vous vous trouviez à sa place. L''organe sensoriel se déplace avec la cible et reste dans un rayon de 3 mètres autour d''elle pendant toute la durée du sort. Une créature capable de voir les objets invisibles perçoit l''organe sensoriel comme un orbe lumineux de la taille de votre poing.' || E'\n' || 'Au lieu de prendre une créature pour cible, vous pouvez choisir un lieu que vous avez déjà vu. L''organe sensoriel apparaît alors à cet endroit et n''en bouge pas.',
    NULL
);
 */