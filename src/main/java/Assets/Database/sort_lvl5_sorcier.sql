INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
(
    'Contacter un autre plan',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Illusion'),
    '1 minute',
    'personnelle',
    'V',
    '1 minute',
    'Vous contactez mentalement un demi-dieu, l''esprit d''un sage décédé il y a longtemps, ou une autre entité mystérieuse issue d''un autre plan. Le contact avec cette intelligence extraplanaire met votre esprit à rude épreuve et risque même de le briser. Quand vous lancez ce sort, vous devez faire un jet de sauvegarde d''Intelligence DD 15. En cas d''échec, vous recevez 6d6 dégâts psychiques et vous devenez fou jusqu''à ce que vous ayez bénéficié d''un long repos. Tant que vous êtes fou, vous ne pouvez pas entreprendre la moindre action, vous ne comprenez pas ce que disent les au tres créatures, vous êtes incapable de lire et vous ne bredouillez que des paroles insensées. Une tierce personne peut mettre un terme à cet effet en vous lançant le sort de _restauration supérieure_.' || E'\n' || 'Si vous réussissez votre jet de sauvegarde, vous pouvez poser jusqu''à cinq questions à l''entité. Vous devez les poser avant la fin du sort. C''est le MD qui répond à chacune d''entre elles avec un mot, comme «oui», «non», «peut-être», «jamais», «hors sujet» ou «obscur» (si l''entité ignore la réponse à votre question). Si une réponse limitée à un seul mot risque de se révéler trompeuse, le MD peut la remplacer par une courte phrase.',
    NULL
),
(
    'Rêve',
    5,
    (SELECT id_ecole FROM ecole WHERE nom_ecole='Illusion'),
    '1 minute',
    'spéciale',
    ' V, S, M (une poignée de sable, une goutte d''encre et une plume d''écrivain prélevée sur un oiseau endormi)',
    '8 heures',
    'Ce sort façonne les rêves d''une créature. Choisissez comme cible une créature de votre connaissance. Elle doit se trouver sur le même plan d''existence que vous. Il est impossible de contacter une créature qui ne dort pas, comme un elfe, via ce sort. Vous entrez dans un état de transe et servez de messager, à moins que vous ne confiiez ce rôle à une autre créature consentante. Pendant la transe, le messager est conscient de son environnement, mais il ne peut pas entreprendre d''action ni se déplacer.' || E'\n' || 'Si la cible est endormie, le messager apparaît dans son rêve et peut discuter avec elle tant qu''elle est endormie, pendant toute la durée du sort. Le messager peut aussi modeler l''environnement onirique, en créant des objets, un paysage et d''autres images. Il peut sortir de sa transe quand bon lui semble, mettant alors un terme prématuré au sort. La cible se souvient parfaitement de son rêve quand elle se réveille. Si la cible est éveillée quand vous lancez le sort, le messager le sait et peut sortir de sa transe (et mettre un terme au sort) ou attendre qu''elle s''endorme, car il apparaîtra dans ses rêves à ce moment. Vous pouvez affubler le messager d''une apparence que la cible trouvera monstrueuse et terrifiante. Dans ce cas, le message qu''il transmet ne peut excéder dix mots et la cible est obligée de faire unjet de sauvegarde de Sagesse. Si elle échoue, les échos de cette monstruosité fantasmagorique génèrent un cauchemar qui dure pendant tout le sommeil de la cible et l''empêche de bénéficier des avantages de sa période de repos. De plus, quand elle se réveille, elle subit 3d6 dégâts psychiques.' || E'\n' || 'Si vous êtes en possession d''un élément corporel de la cible, comme une mèche de cheveux, des rognures d''ongles ou autre, elle est désavantagée lors de son jet de sauvegarde.',
    NULL
);