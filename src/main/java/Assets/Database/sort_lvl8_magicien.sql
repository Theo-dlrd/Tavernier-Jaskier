INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Clone',
        8,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Nécromancie'),
        '1 heure',
        'contact',
        'V, S, M (un diamant valant au moins 1 000 po et un cube d''au moins 2,5 centimètres d''arête de chair de la créature à cloner, le sort consommant ces deux composantes, ainsi qu''un réceptacle d''une valeur minimale de 2 000 po disposant d''un couvercle susceptible d''être scellé, et assez grand pour contenir une créature de taille Moyenne, comme une grande urne, un cercueil, une cavité remplie de boue creusée dans la terre ou un récipient de cristal rempli d''eau salée)',
        'instantanée',
        'Ce sort génère la réplique inerte d''une créature vivante, pour la protéger de la mort. Le clone se forme au sein d''un réceptacle scellé et grandit jusqu''à atteindre sa taille adulte et sa maturité en 120 jours; cependant, vous pouvez décider que le clone sera une version plus jeune de la créature qu''il reproduit. Il reste inerte et indéfiniment dans le même état tant que le réceptacle reste scellé.' || E'\n' || 'Une fois que le clone est arrivé à maturité, si la créature originale meurt, son âme se transfère dans le clone, à condition que cette âme soit libre et désireuse de revenir à la vie. D''un point de vue physique, le clone est identique à l''original. De plus, il possède la même personnalité, les mêmes souvenirs et les mêmes capacités, mais il n''hérite pas de son équipement. Les restes physiques de la créature originale ne disparaissent pas. S''ils ne sont pas détruits, ils deviennent inertes et ne peuvent pas servir à ramener la créature à la vie puisque son âme se trouve ailleurs.',
        NULL
    ),
    (
        'Labyrinthe',
        8,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Invocation'),
        '1 action',
        '18 mètres',
        'V, S',
        'concentration, jusqu''à 10 minutes',
        'Vous bannissez une créature située à portée dans votre champ de vision dans un demi-plan labyrinthique. La cible y reste pendant toute la durée du sort ou jusqu''à ce qu''elle s''échappe du dédale.' || E'\n' || 'Elle peut utiliser une action pour tenter de s''évader. Pour cela, elle effectue un test d''Intelligence DD 20. Si elle le réussit, elle s''échappe et le sort se termine (les minotaures et les démons goristros réussissent automatiquement).' || E'\n' || 'Quand le sort se termine, la cible réapparaît à l''emplacement qu''elle a quitté ou, s''il est occupé, dans l''emplacement libre le plus proche.',
        NULL
    ),
    (
        'Télépathie',
        8,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Evocation'),
        '1 action',
        'illimitée',
        'V, S, M (une paire d''anneaux en argent liés)',
        '24 heures',
        'Vous créez un lien télépathique entre vous et une créature consentante qui vous est familière. Elle peut se trouver n''importe où tant qu''elle est sur le même plan d''existence que vous. Le sort se termine si vous ne vous trouvez plus tous deux sur le même plan.' || E'\n' || 'Tant que le sort persiste, vous et la cible pouvez échanger instantanément des mots, des images, des sons et d''autres messages sensoriels grâce au lien qui vous unit. La cible sait que c''est avec vous qu''elle communique. Le sort permet à toute créature dotée d''une Intelligence minimale de 1 de comprendre la signification des mots que vous employez et de saisir le sens des messages sensoriels transmis.',
        NULL
    );
