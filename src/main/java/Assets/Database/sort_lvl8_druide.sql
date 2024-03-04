INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Formes animales',
        8,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Transmutation'),
        '1 action',
        '9 mètres',
        'V, S',
        'concentration, jusqu''à 24 heures',
        'Votre magie change autrui en animal. Choisissez autant de créatures consentantes, à portée et dans votre champ de vision que vous désirez. Vous transformez chacune d''entre elles en bête de taille Grande ou inférieure dotée d''un indice de dangerosité de 4 ou moins. Lors de vos tours suivants, vous pouvez dépenser votre action pour transformer les créatures affectées en d''autres animaux.' || E'\n' || 'La transformation persiste pour chaque cible pendant toute la durée du sort ou jusqu''à ce que la cible tombe à 0 point de vie ou meure. Vous pouvez attribuer une forme différente à chaque cible. Les statistiques de jeu de la cible sont remplacées par celles de l''animal choisi, bien qu''elle conserve son alignement, son Intelligence, sa Sagesse et son Charisme. La cible adopte les points de vie de sa nouvelle forme et, quand elle reprend son apparence normale, elle se retrouve avec le même nombre de points de vie que celui qu''elle avait avant sa transformation. Si elle recouvre sa forme normale suite à un passage à 0 point de vie, les dégâts en excès sont reportés sur les points de vie de sa forme normale. Tant que ces dégâts en excès ne réduisent pas les points de vie de la forme normale de la cible à 0, elle ne tombe pas inconsciente. Les actions de la créature transformée sont limitées par la nature de sa nouvelle apparence et elle ne peut ni parler ni lancer de sorts.' || E'\n' || 'L''équipement de la cible fusionne avec sa nouvelle forme, mais elle ne peut pas activer ni manier la moindre pièce d''équipement et ne bénéficie pas des avantages qui en découlent habituellement.',
        NULL
    ),
    (
        'Répulsion/attirance',
        8,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Enchantement'),
        '1 heure',
        '18 mètres',
        'V, S, M (un cristal d''alun trempé dans le vinaigre pour répulsion ou une goutte de miel pour attirance)',
        '10 jours',
        'Ce sort attire ou repousse les créatures de votre choix. Vous choisissez un objet ou une créature de taille Très Grande ou inférieure situés à portée ou une zone pas plus grande qu''un cube de 60 mètres de côté. Ensuite, vous décrivez une catégorie de créatures intelligentes, comme les dragons rouges, les gobelins ou les vampires. La cible est alors baignée d''une aura qui attire ou repousse ces créatures pendant toute la durée du sort. Vous devez choisir la répulsion ou l''attirance comme effet de l''aura.' || E'\n' || '**Répulsion**: L''enchantement génère chez les créatures de la catégorie choisie un intense besoin de quitter les lieux et d''éviter la cible. Quand une telle créature voit la cible ou se trouve dans un rayon de 18 mètres autour d''elle, elle doit réussir un jet de sauvegarde de Sagesse ou se retrouver terrorisée. Elle reste dans cet état tant qu''elle voit la cible ou se trouve à 18 mètres ou moins d''elle. Tant que la cible l''effraie, la créature doit impérativement utiliser son déplacement pour gagner l''endroit sûr le plus proche, c''est-à-dire un endroit d''où elle ne verra plus la cible. Si la créature s''éloigne à plus de 18 mètres de la cible et ne la voit plus, elle n''est plus terrorisée, mais elle le redevient si la cible apparaît de nouveau en vue ou si elle s''approche à 18 mètres ou moins d''elle.' || E'\n' || '**Attirance**: L''enchantement génère chez la créature une envie irrépressible de s''approcher de la cible dès qu''elle se trouve à 18 mètres ou moins d''elle ou dès qu''elle la voit. Quand la créature voit la cible ou se trouve dans un rayon de 18 mètres autour d''elle, elle doit réussir un jet de sauvegarde de Sagesse, sans quoi, à chacun de ses tours, elle se déplace de manière à entrer dans la zone désirée ou à arriver à portée de la cible. Une fois là, la créature ne peut plus s''éloigner de sa propre initiative.' || E'\n' || 'Si la cible blesse ou fait du mal à la créature affectée, cette dernière a droit à un nouveau jet de sauvegarde de Sagesse pour mettre un terme à l''effet, comme décrit plus bas.' || E'\n' || '**Mettre un terme à l''effet**: Si une créature affectée termine son tour alors qu''elle ne se trouve pas à 18 mètres ou moins de la cible ou qu''elle ne peut pas la voir, elle a droit à unjet de sauvegarde de Sagesse. Si elle le réussit, la cible n''exerce plus d''effet sur elle et elle comprend que le sentiment d''attirance ou de répulsion qu''elle ressentait était d''origine magique. De plus, une créature affectée par le sort a droit à un jet de sauvegarde de Sagesse toutes les 24 heures tant que le sort persiste. Une créature qui réussit son jet de sauvegarde contre l''effet est immunisée contre lui pendant 1 minute, après quoi, il peut de nouveau l''affecter.',
        NULL
    ),
    (
        'Tsunami',
        8,
        (SELECT id_ecole FROM ecole WHERE nom_ecole='Invocation'),
        '1 minute',
        'champ de vision',
        'V, S',
        'concentration, jusqu''à 6 rounds',
        'Un mur d''eau apparaît soudain en un point de votre choix situé à portée. Il peut faire jusqu''à 90 mètres de long, autant de haut et 15 mètres d''épaisseur. Il persiste pendant toute la durée du sort.' || E'\n' || 'Quand le mur apparaît, toutes les créatures situées dans la zone qu''il occupe doivent faire un jet de sauvegarde de Force. Celles qui échouent reçoivent 6d10 dégâts contondants, les autres la moitié seulement.' || E'\n' || 'Une fois le mur apparu, il s''éloigne de vous sur une distance de 15 mètres (emportant toutes les créatures qui se trouvent en son sein) au début de chacun de vos tours. Chaque créature de taille Grande ou inférieure qui se trouve dans le mur ou dans un espace où le mur pénètre lors de son déplacement doit réussir un jet de sauvegarde de Force ou subir 5d10 dégâts contondants. Une créature subit ces dégâts une fois seulement par round. À la fin du tour, la hauteur du mur se réduit de 15 mètres et les dégâts qu''il inflige aux tours suivants se réduisent de 1d10. Le sort se termine quand le mur ne fait plus que 0 mètre de haut.' || E'\n' || 'Une créature prisonnière du mur peut se déplacer en nageant, mais la vague est si puissante qu''elle doit pour cela réussir un test de Force (Athlétisme) contre le DD de votre sort. Si elle rate ce test, elle est incapable de se déplacer. Une créature qui se déplace hors du mur tombe à terre.',
        NULL
    );