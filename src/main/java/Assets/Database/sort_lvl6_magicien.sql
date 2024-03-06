INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Contingence',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '10 minutes',
        'personnelle',
        'V, S, M (une statuette de vous taillée dans l''ivoire et ornée de gemmes d''une valeur minimum de 1 500 po)',
        '10 jours',
        'Choisissez un sort de niveau 5 ou moins que vous êtes en mesure de lancer, qui possède une durée d''incantation d''une action, et qui peut vous prendre pour cible. Vous lancez ce sort (que l''on appelle le sort contingent) lors de l''incantation de la contingence. Vous dépensez donc les emplacements des deux sorts, mais le contingent ne fait pas effet immédiatement. Il s''activera lorsque certaines conditions seront remplies. Vous devez décrire ces dernières au moment où vous lancez les deux sorts. Par exemple, lors d''une contingence associée à une respiration aquatique, vous pouvez stipuler que la _respiration aquatique_ doit se déclencher quand vous vous trouvez immergé dans l''eau ou dans un liquide similaire.' || E'\n' || 'Le sort contingent prend effet dès que les circonstances sont remplies pour la première fois, que vous le vouliez ou non, ce qui met un terme à la _contingence_.' || E'\n' || 'Le sort contingent affecte uniquement votre personne, même s''il peut normalement affecter d''autres créatures. Vous ne pouvez utiliser qu''un seul sort de _contingence_ à la fois, si vous en lancez un second, les effets du précédent se dissipent. De plus, la _contingence_ prend fin si sa composante matérielle n''est plus sur votre personne.',
        NULL
    ),
    (
        'Convocations instantanées de Drawmij',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 minute',
        'contact',
        'V, S, M (un saphir d''une valeur de 1 000 po)',
        'jusqu''à dissipation',
        'Vous touchez un objet pesant 5 kilos ou moins et dont la dimension la plus longue est de 1,80 mètre ou moins. Le sort laisse une marque invisible sur la surface de l''objet et inscrit le nom de l''objet sur le saphir que vous utilisez comme composante matérielle. Chaque fois que vous lancez ce sort, vous devez utiliser un saphir différent.' || E'\n' || 'Ensuite, vous pouvez utiliser une action quand vous le désirez pour prononcer le nom de l''objet et broyer le saphir. L''objet apparaît immédiatement dans votre main, en dépit des distances physiques et planaires, et le sort se termine.' || E'\n' || 'Si l''objet est actuellement porté ou transporté par quelqu''un d''autre, il n''arrive pas jusqu''à vous quand vous broyez le saphir, mais vous apprenez qui est la créature qui détient l''objet et vous savez à peu près où elle se trouve à ce moment-là.' || E'\n' || '_Dissipation de la magie_ ou un effet similaire appliqué sur le saphir met un terme à l''effet du sort.',
        NULL
    ),
    (
        'Mur de glace',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        '36 mètres',
        'V, S, M (un éclat de quartz)',
        'concentration, jusqu''à 10 minutes',
        'Vous créez un mur de glace sur une surface solide à portée. Vous pouvez lui donner une forme de dôme hémisphérique ou de sphère d''un rayon maximal de 3 mètres ou en faire une surface plane composée de dix panneaux de 3 mètres carrés. Chaque panneau doit être contigu à un autre. Quelle que soit sa forme, le mur fait 30 centimètres d''épaisseur et persiste pendant toute la durée du sort. Si le mur passe par l''emplacement d''une créature lorsqu''il apparaît, il la repousse d''un côté ou de l''autre et elle doit faire un jet de sauvegarde de Dextérité. Si elle échoue, elle subit 10d6 dégâts de froid, la moitié seulement si elle réussit.' || E'\n' || 'Le mur est un objet que l''on peut endommager et on peut donc y ouvrir des brèches. Il a une CA de 12 et 30 points de vie par section de 3 mètres de côté et il est vulnérable aux dégâts de feu. Si une section de 3 mètres de côté tombe à 0 point de vie, elle est détruite et laisse juste une zone d''air glacé à l''emplacement où se trouvait le pan de mur. Quand une créature se déplace dans cette zone frigorifique pour la première fois de son tour, elle doit faire un jet de sauvegarde de Constitution. Si elle échoue, elle subit 5d6 dégâts de froid, la moitié seulement si elle réussit.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 7 ou plus, les dégâts que le mur inflige en apparaissant augmentent de 2d6 et les dégâts provoqués par un passage dans la zone d''air glacé augmentent de 1d6 par niveau au-delà du 6e.',
        'https://baldursgate3.wiki.fextralife.com/file/Baldurs-Gate-3/wallofice_spell_evocation_school_baldursgate3_wiki_guide_64px.png'
    ),
    (
        'Possession',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Nécromancie'),
        '1 minute',
        'personnelle',
        'V, S, M (une gemme, un cristal, un reliquaire ou un autre réceptacle ornemental d''une valeur minimale de 500 po)',
        'jusqu''à dissipation',
        'Votre corps tombe en catatonie tandis que votre âme le quitte et pénètre dans le réceptacle utilisé comme composante de sort. Tant qu''elle se trouve là, vous percevez votre environnement comme si votre corps occupait le même espace que le réceptacle. En revanche, vous ne pouvez pas bouger ni utiliser de réaction. Vous ne pouvez accomplir qu''une action: projeter votre âme dans un rayon de 30 mètres au maximum autour du réceptacle, soit pour retourner dans votre corps (ce qui met fin au sort), soit pour prendre possession d''un autre corps humanoïde.' || E'\n' || 'Vous pouvez tenter de prendre possession de n''importe quel humanoïde situé dans votre champ de vision et dans un rayon de 30 mètres (sachant que les créatures protégées par une _protection contre le mal et le bien_ ou par un _cercle magique_ sont immunisées contre la possession). La cible doit faire un jet de sauvegarde de Charisme. Si elle échoue, votre âme s''installe dans son corps et la sienne est prisonnière du réceptacle. Si elle réussit son test, elle résiste à votre tentative de possession et vous ne pouvez plus essayer de la posséder pendant 24 heures.' || E'\n' || 'Une fois que vous avez pris possession du corps d''une autre créature, vous le contrôlez totalement. Vos statistiques de jeu sont remplacées par celles de cette créature, bien que vous conserviez votre alignement et vos valeurs d''Intelligence, de Sagesse et de Charisme. Vous conservez les avantages de vos pouvoirs de classe. Si votre cible possède des niveaux de classe, vous n''avez pas accès à ses pouvoirs de classe.' || E'\n' || 'Pendant ce temps, l''âme de la créature possédée perçoit ce qui se passe autour du réceptacle grâce à ses propres sens, mais elle ne peut pas se déplacer ni effectuer la moindre action.' || E'\n' || 'Tant que vous possédez le corps d''autrui, vous pouvez utiliser votre action pour le quitter et regagner le réceptacle s''il se trouve à 30 mètres de vous ou moins. L''âme de votre hôte retourne alors dans son propre corps. Si le corps de l''hôte périt alors que vous l''occupez, l''hôte meurt et vous devez faire un jet de sauvegarde de Charisme contre votre propre DD d''incantation. Si vous réussissez, vous regagnez le réceptacle, à condition qu''il se trouve dans un rayon de 30 mètres. Sinon, vous mourez.' || E'\n' || 'Si le réceptacle est détruit ou que le sort se termine, votre âme regagne immédiatement votre corps, à moins qu''il ne se trouve à plus de 30 mètres d''elle ou qu''il ait succombé, auquel cas vous périssez. Si l''âme d''une autre créature occupe le réceptacle au moment où il est détruit, cette âme retourne immédiatement dans son corps, à condition qu''il se trouve dans un rayon de 30 mètres et soit encore en vie Sinon, elle meurt. Le réceptacle est détruit quand Je sort se termine.',
        NULL
    ),
    (
        'Sphère glacée d''Otiluke',
        6,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        '90 mètres',
        'V, S, M (une petite sphère de cristal)',
        'instantanée',
        'Un globe d''énergie gelée jaillit de la pointe de votre doigt tendu et file vers un point de votre choix situé à portée. Là, il explose en une sphère de 18 mètres de rayon. Chaque créature de la zone doit faire un jet de sauvegarde de Constitution. Celles qui échouent subissent 10d6 dégâts de froid, les autres la moitié seulement. Si le globe frappe une surface aqueuse ou un liquide principalement constitué d''eau (ce qui n''inclut pas les créatures majoritairement composées d''eau), il gèle le liquide sur une épaisseur de 15 centimètres dans une zone de 9 mètres de côté. La glace subsiste une minute. Les créatures qui nageaient à la surface de l''étendue d''eau se retrouvent prises dans la glace. Une telle créature peut utiliser une action pour faire un test de Force contre le DD du jet de sauvegarde de votre sort afin de se libérer.' || E'\n' || 'Une fois que vous avez terminé l''incantation, vous pouvez attendre avant de lancer le globe. Dans ce cas, il ressemble à une bille de fronde glacée qui reste dans votre main. Vous pouvez alors le lancer à la main (à une portée de 12 mètres) ou avec une fronde (selon la portée habituelle de cette fronde) ou le donner à une créature qui peut faire de même. Le globe se brise à l''impact, explosant comme décrit dans la version normale du sort. Vous pouvez également poser le globe à terre sans le briser. Il explose au bout d''une minute s''il n''a pas été brisé avant.' || E'\n' || '**À plus haut niveau**: Si vous lancez ce sort en utilisant un emplacement de niveau 7 ou plus, les dégâts augmentent de 1d6 par niveau au-delà du 6e.',
        NULL
    );