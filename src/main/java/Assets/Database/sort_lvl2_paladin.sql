INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Aide',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    '9 mètres',
    'V, S, M (une minuscule bandelette de tissu blanc)',
    '8 heures',
    'Le sort renforce vos alliés qui deviennent plus robustes et plus résolus. Choisissez jusqu''à trois créatures à portée. Le maximum de points de vie et les points de vie actuels de chacune d''entre elles augmentent de 5 pendant toute la durée du sort.' || E'\n' || '**À plus haut niveau**, quand vous lancez ce sort en utilisant un emplacement de niveau 3 ou plus, les points de vie de chaque cible augmentent de 5 points supplémentaires pour chaque niveau au-delà du 2e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/aid_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Arme magique',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
    '1 action bonus',
    'contact',
    'V, S',
    'concentration, jusqu''à 1 heure',
    'Vous touchez une arme non magique.Jusqu''à la fin du sort, elle devient magique et bénéficie d''un bonus de +1 aux jets d''attaque et de dégâts.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 4 ou plus, le bonus passe à +2, et à +3 si vous utilisez un emplacement de niveau 6 ou plus.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/magic_weapon_spell_transmutation_bg3_wik_64px.png'
),
(
    'Frappe lumineuse',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Evocation'),
    '1 action bonus',
    'personnelle',
    'V',
    'concentration,jusqu''à 1 minute',
    'La prochaine attaque armée qui vous permet de toucher une créature avant la fin de ce sort voit votre arme briller d''une lumière astrale et inflige 2d6 dégâts radiants de plus à votre cible, qui devient visible si elle était invisible et émet une faible lumière dans un rayon de 1,50 mètrejusqu''à la fin du sort. Elle ne peut plus devenir invisible pendant toute cette durée.' || E'\n' || '**À plus haut niveau**, si vous lancez ce sort en utilisant un emplacement de niveau 3 ou plus, les dégâts supplémentaires augmentent de 1d6 par emplacement de sort au-delà du 2e.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/branding_smite_melee_spell_evocation_bg3_wiki_64px.png'
),
(
    'Localiser un objet',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Divination'),
    '1 action',
    'personnelle',
    'V, S, M (une branche fourchue)',
    'concentration,jusqu''à 10 minutes',
    'Décrivez ou nommez un objet qui vous est familier. Vous sentez dans quelle direction il se trouve, à condition qu''il soit dans un rayon de 300 mètres. S''il se déplace, vous savez dans quelle direction.' || E'\n' || 'Le sort permet de localiser un objet spécifique de votre connaissance à condition que vous l''ayez vu de près, c''est-à-dire vous être trouvé à 9 mètres ou moins au moins de lui une fois dans votre vie. Sinon, le sort peut localiser l''objet d''un type donné le plus proche, comme un type d''appareil, de bijou, de meuble, d''outil ou d''arme.' || E'\n' || 'Le sort ne parvient pas à localiser l''objet si une couche de plomb, aussi mince soit-elle, bloque une trajectoire directe entre vous et l''objet.',
    NULL
),
(
    'Protection contre le poison',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'contact',
    'V, S',
    '1 heure',
    'Vous touchez une créature. Si elle est empoisonnée, vous neutralisez ce poison. Si elle est victime de plusieurs poisons, vous en neutralisez un dont vous avez détecté la présence ou un au hasard.' || E'\n' || 'Pendant toute la durée du sort, la cible est avantagée lors des jets de sauvegarde contre le poison et se montre résistante aux dégâts de poison.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/protection_from_poison_spell_baldursgate3_wiki_guide_150px.png'
),
(
    'Restauration inférieure',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Abjuration'),
    '1 action',
    'contact',
    'V, S',
    'instantanée',
    'Vous touchez une créature et mettez fin à une maladie ou à un état qui l''affectait, cet état étant aveugle, sourd, paralysé ou empoisonné.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/lesser_restoration_spell_baldursgate3_wiki_guide_150px_2.png'
),
(
    'Trouver une monture',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
    '10 minutes',
    '9 mètres',
    'V, S',
    'instantanée',
    'Vous invoquez un esprit qui prend la forme d''une monture dotée d''une intelligence, d''une puissance et d''une loyauté hors du commun, et créez un lien durable avec lui. La monture apparaît dans un emplacement inoccupé à portée et prend l''apparence de votre choix : un cheval de guerre, un poney, un chameau, un élan, ou un mastiff. (Votre MD peut autoriser d''autres formes animales.) La monture possède les statistiques de la forme choisie, mais au lieu d''être de type normal, elle est céleste, féerique ou fiélone (à vous de choisir). De plus, si elle a d''ordinaire une Intelligence de 5 ou moins, cette caractéristique passe à 6 et elle comprend um langage de votre choix que vous maîtrisez.' || E'\n' || 'Vous pouvez chevaucher votre monture au combat ou en dehors des affrontements, et le lien instinctif que vous partagez avec elle vous permet de vous battre ensemble comme si vous étiez une seule et même entité. Tant que vous la chevauchez, les sorts qui vous visent exclusivement l''affectent aussi si vous le désirez.' || E'\n' || 'Quand la monture tombe à O point de vie, elle disparaît sans laisser de cadavre physique. Vous pouvez la renvoyer quand vous le désirez par une action qui la fait disparaître. Si vous lancez de nouveau ce sort, c''est la même monture qui apparaît, disposant à nouveau de tous ses points de vie.' || E'\n' || 'Vous pouvez communiquer par télépathie avec votre monture tant qu''elle se trouve dans un rayon de 1,5 kilomètre.' || E'\n' || 'Vous ne pouvez vous lier qu''à une seule monture issue de ce sort à la fois. Vous pouvez libérer la monture du lien quand vous le désirez, par une action qui la fait disparaître.',
    NULL
),
(
    'Zone de vérité',
    2,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
    '1 action',
    '18 mètres',
    'V, S',
    '10 minutes',
    'Vous créez une zone magique, capable de protéger contre la duplicité, sous forme d''une sphère de 4,50 mètres de rayon centrée sur un point de votre choix situé à portée. Jusqu''à la fin du sort, une créature qui pénètre dans la sphère pour la première fois de son tour ou y commence son tour doit réussir un jet de sauvegarde de Charisme. Si elle échoue, elle ne peut pas mentir délibérément tant qu''elle reste dans la zone du sort. Vous savez si chaque créature présente a réussi ou raté son jet de sauvegarde.' || E'\n' || 'Une créature affectée est consciente du sort qui la limite et peut donc soigneusement éviter de répondre aux questions qui susciteraient normalement un mensonge de sa part. Une telle créature peut rester évasive dans ses réponses, tant qu''elle reste dans les limites de la vérité.',
    NULL
);