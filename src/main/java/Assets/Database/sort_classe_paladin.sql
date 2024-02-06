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
)ON CONFLICT(nom_sort) DO NOTHING;