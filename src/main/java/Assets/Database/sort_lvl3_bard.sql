INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Communication avec les morts',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Nécromancie'),
    '1 action',
    '3 mètres',
    'V, S, M (encens incandescent)',
    '10 minutes',
    'Vous donnez un semblant de vie et d''intelligence à un cadavre de votre choix situé à portée. Il est alors en mesure de répondre à vos questions. Le cadavre doit encore disposer d''une bouche et ne doit pas être devenu mort-vivant. Le sort échoue si le cadavre choisi a déjà été la cible de ce sort au cours des dix jours précédents.' || E'\n' || 'Vous pouvez poser jusqu''à cinq questions avant la fin de la durée du sort. Les connaissances du cadavre se limitent à ce qu''il savait de son vivant, y compris au niveau des langues qu''il parle. Les réponses sont souvent brèves, cryptiques ou répétitives et le cadavre n''est absolument pas obligé de vous donner une réponse sincère si vous lui êtes hostile ou s''il vous reconnaît comme étant un ennemi. Ce sort ne ramène pas l''âme de la cible dans son corps,juste l''esprit qui l''animait; le cadavre ne peut donc pas apprendre de nouvelles informations, ne comprend rien de ce qui s''est passé après sa mort et est incapable de faire des spéculations sur l''avenir.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/speakwithdead-spell-bg3-wiki-guide-64px.png'
 ),
(
    'Communication avec les plantes',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
    '1 action',
    'personnelle (9 mètres de rayon)',
    'V, S',
    '10 minutes',
    'Vous imprégnez la végétation située dans un rayon de 9 mètres autour de vous d''une conscience et d''une mobilité limitées, ce qui permet aux plantes de communiquer avec vous et de suivre des ordres simples. Vous pouvez interroger les végétaux sur les événements qui se sont déroulés la veille dans la zone du sort et ainsi obtenir des informations sur les créatures qui sont passées, sur les conditions météorologiques et autres.' || E'\n' || 'Vous pouvez également transformer un terrain rendu difficile à cause de la végétation (comme des buissons ou d''épais taillis) en terrain ordinaire pendant toute la durée du sort. Ou vous pouvez transformer un terrain ordinaire où poussent des plantes en terrain difficile pendant toute la durée du sort, par exemple de manière à ce que des plantes grimpantes et des branches gênent vos poursuivants.' || E'\n' || 'Les plantes peuvent exécuter d''autres tâches pour vous, si le MD donne son accord. Le sort ne leur permet pas de se déraciner et de se déplacer, mais elles peuvent agiter leurs branches, leurs vrilles et leurs tiges.' || E'\n' || 'Si une créature végétale se trouve dans la zone, vous pouvez communiquer avec elle comme si vous partagiez un même langage, mais vous ne gagnez pas de capacité magique permettant de l''influencer.' || E'\n' || 'Ce sort permet de libérer une créature entravée par les plantes nées d''un sort d''_enchevêtrement_.',
    NULL
),
(
    'Envoi de message',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
    '1 action',
    'illimité',
    'V, S, M (un petit bout de fil de cuivre)',
    '1 round',
    'Vous envoyez un court message d''au maximum 25 mots à une créature qui vous est familière. Elle entend le message dans son esprit, sait que c''est vous qui le lui avez envoyé si elle vous connaît, et peut vous répondre immédiatement de la même manière. Le sort permet aux créatures dotées d''une Intelligence minimale de 1 de comprendre le sens de votre message.' || E'\n' || 'Vous pouvez envoyer votre message à n''importe quelle distance et même sur un autre plan d''existence, mais si la cible est sur un autre plan, il y a 5% de chances que le message n''arrive pas à destination.',
    NULL
),
(
    'Feindre la mort',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Nécromancie'),
    '1 action',
    'contact',
    'V, S, M (une pincée de poussière tombale)',
    '1 heure',
    'Vous touchez une créature consentante et la plongez dans un état cataleptique si profond qu''elle semble morte.' || E'\n' || 'Pendant toute la durée du sort ou jusqu''à ce que vous utilisiez une action pour toucher la cible et révoquer le sort, la cible paraît morte, même suite à un examen externe ou après utilisation d''un sort visant à déterminer son statut. Elle est aveuglée et neutralisée et sa vitesse passe à O. Elle est résistante à tous les types de dégâts hormis les dégâts psychiques. Si elle est empoisonnée ou malade au moment où vous lancez le sort ou si elle le devient pendant la durée du sort, la maladie ou le poison n''a aucun effet tant que ce sort n''est pas terminé.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/feign_death_spells_bg3_wiki_guide64px.png'
),
(
    'Glyphe de protection',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
    '1 action',
    'contact',
    'V, S, M (encens et poudre de diamant d''une valeur minimale de 200 po, que le sort consume)',
    'jusqu''à dissipation ou déclenchement',
    'Lorsque vous lancez ce sort, vous inscrivez un glyphe capable de blesser autrui, soit sur une surface quelconque, comme une table, le sol ou un mur, soit dans un objet que l''on peut refermer pour dissimuler l''inscription, comme un livre, un parchemin ou un coffre au trésor. Si vous optez pour une surface, le glyphe peut couvrir une zone de 3 mètres de diamètre au maximum. Si vous choisissez un objet, il ne faut plus le déplacer par la suite: si quelqu''un le déplace à plus de 3 mètres de l''endroit où vous avez jeté ce sort, le glyphe se brise et le sort se termine sans avoir été déclenché.' || E'\n' || 'Le glyphe est presque invisible. Pour le discerner, il faut réussir un test d''Intelligence (Investigation) contre le DD du jet de sauvegarde de votre sort.' || E'\n' || 'Lors de l''incantation, c''est à vous de décider de ce qui déclenchera le sort. Pour les glyphes tracés sur une surface quelconque, les déclencheurs les plus courants consistent à toucher le glyphe ou se tenir dessus, à déplacer un objet recouvrant le glyphe, à s''approcher à une certaine distance du glyphe ou encore à manipuler l''objet sur lequel le glyphe est tracé. Pour les glyphes inscrits dans un objet, on trouve parmi les déclencheurs les plus répandus le fait d''ouvrir l''objet, de s''en approcher à une certaine distance ou de voir ou de lire le glyphe. Le sort se termine dès que le glyphe se déclenche.' || E'\n' || 'Vous pouvez affiner le déclencheur, de façon à ce que le sort s''active sous certaines conditions ou en fonction de certaines caractéristiques physiques (comme le poids ou la taille), selon un type de créature (pour un glyphe destiné aux aberrations ou aux drows par exemple) ou selon l''alignement. Vous pouvez aussi définir des conditions pour que certaines créatures ne déclenchent pas le glyphe, en prononçant un mot de passe par exemple.' || E'\n' || 'Lorsque vous dessinez le glyphe, vous devez choisir entre des _runes explosives_ ou un _glyphe à sort_.' || E'\n' || '**Runes explosives**: Quand le glyphe se déclenche, il explose dans une sphère de 6 mètres de rayon centrée sur lui. La sphère s''étend en contournant les angles si besoin. Chaque créature de la zone doit faire un jet de sauvegarde de Dextérité. Une créature reçoit 5d8 points de dégâts d''acide, de froid, de feu, de foudre ou de tonnerre si elle rate sonjet (à vous de choisir le type de dégâts lors de l''incantation), la moitié seulement si elle le réussit.' || E'\n' || '**Glyphe à sort**: Vous pouvez stocker un sort de niveau 3 ou inférieur dans le glyphe en le lançant lors de l''incantation du glyphe. Ce sort doit viser une créature unique ou une zone. Le sort stocké n''a aucun effet immédiat quand il est lancé ainsi. Il se lance quand quelqu''un déclenche le glyphe. Si le sort affecte une cible, il vise celle qui a déclenché le glyphe. S''il affecte une zone, cette dernière est centrée sur la créature qui a déclenché le glyphe. Si le sort invoque des créatures hostiles ou crée des objets néfastes ou des pièges, ils apparaissent aussi près de l''intrus que possible et s''en prennent à lui. Si le sort nécessite de la concentration, il persiste jusqu''à la fin de sa durée maximale.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort enutilisant un emplacement de niveau 4 ou plus, les dégâts des runes explosives augmentent de 1d8 par niveau au-delà du 3e. Si vous créez un glyphe à sort, vous pouvez stocker un sort d''un niveau égal ou inférieur à celui employé pour lancer le glyphe.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/glyph_of_warding_spells_bg3_wiki_guide64px.png'
),
(
    'Jeter une malédiction',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Nécromancie'),
    '1 action',
    'contact',
    'V, S',
    'concentration, jusqu''à 1 minute',
    'Vous touchez une créature qui doit réussir un jet de sauvegarde de Sagesse, sans quoi elle est maudite pour toute la durée du sort. À vous de choisir la nature de cette malédiction parmi les options suivantes au moment de l''incantation.' || E'\n' || '* Choisissez une caractéristique. Tant que la cible est maudite, elle est désavantagée lors des tests de caractéristique et des jets de sauvegarde basés sur cette caractéristique.' || E'\n' || '* Tant que la cible est maudite, elle est désavantagée lors de ses jets d''attaque contre vous.' || E'\n' || '* Tant que la cible est maudite, elle doit faire un jet de sauvegarde de Sagesse au début de chacun de ses tours. Si elle le rate, elle gaspille son action du tour et ne fait rien.' || E'\n' || '* Tant que la cible est maudite, les sorts et les attaques émanant de vous lui infligent 1d8 dégâts nécrotiques supplémentaires.' || E'\n' || 'Le sort _Lever une malédiction_ met un terme à cet effet. Si le MD est d''accord, vous pouvez choisir un autre effet de malédiction, mais il ne doit pas être plus puissant que ceux proposés ici. C''est au MD de décider s''il accepte ou non le nouvel effet de malédiction.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 4 ou plus, le sort fait effet tant que vous vous concentrez, sans dépasser un maximum de 10 minutes. Si vous utilisez un emplacement de niveau 5 ou plus, la durée est de 8 heures, tandis qu''elle passe à 24 heures si vous utilisez un emplacement de sort de niveau 7 ou plus. Si vous utilisez un emplacement de niveau 9 , le sort persiste jusqu''à ce qu''il soit dissipé. L''utilisation d''un emplacement de niveau 5 ou plus vous dispense de vous concentrer.',
    'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/bestow_curse_spells_bg3_wiki_guide64px.png'
),
(
    'Non-détection',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Abjuration'),
    '1 action',
    'contact',
    'V, S, M (une pincée de poussière de diamant d''une valeur de 25 po, que le sort consume une fois saupoudrée sur la cible)',
    '8 heures',
    'Pendant toute la durée du sort, vous dissimulez la cible que vous touchez aux yeux de la magie de divination. Vous pouvez prendre pour cible une créature consentante, un endroit ou un objet ne mesurant pas plus de 3 mètres dans chaque dimension. La magie de divination ne peut plus viser votre cible et les organes de scrutation magiques ne la perçoivent plus.',
    NULL
),
(
    'Petite hutte de Léomund',
    3,
    (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
    '1 minute',
    'personnelle (hémisphère de 3 mètres de rayon)',
    'V, S, M (une petite perle de cristal)',
    '8 heures',
    'Un dôme de force immobile, de 3 mètres de rayon, apparaît soudain autour et au-dessus de vous. Il reste stationnaire pendant toute la durée du sort. Ce dernier se termine si vous quittez sa zone.' || E'\n' || 'Le dôme peut abriter un maximum de neuf créatures de taille Moyenne ou inférieure, en plus de vous. Le sort échoue si la zone comprend une créature de taille supérieure ou plus de neuf créatures. Les créatures et les objets qui se trouvent à l''intérieur du dôme lors de l''incantation peuvent en sortir et y entrer librement; en revanche, les autres créatures sont incapables de franchir ses limites. Les sorts et autres effets magiques ne peuvent pas s''étendre au-delà de la limite du dôme ni se lancer à travers. L''atmosphère au sein du dôme est agréable et sèche, quelles que soient les conditions météorologiques à l''extérieur.' || E'\n' || 'Tant que le sort n''est pas terminé, vous pouvez faire en sorte que l''intérieur du dôme soit faiblement éclairé ou plongé dans le noir. Vu de l''extérieur, le dôme est opaque, de la couleur que vous désirez, mais vu de l''intérieur, il est transparent.',
    NULL
);