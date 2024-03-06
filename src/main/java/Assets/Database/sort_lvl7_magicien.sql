INSERT INTO sort (nom_sort,niveau_sort,ecole_sort,duree_incantation,portee,composantes,duree_sort,description,img_sort)
VALUES
    (
        'Séquestration',
        7,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Transmutation'),
        '1 action',
        'contact',
        'V, S, M (une poudre de diamant, d''émeraude, de rubis et de saphir d''une valeur minimum de 5 000 po, que le sort consume)',
        'jusqu''à dissipation',
        'Grâce à ce sort, vous pouvez dissimuler une créature consentante ou un objet qui sera invisible à tout moyen de détection pendant toute la durée du sort. Quand vous lancez le sort et touchez la cible, elle devient invisible et ne peut plus être la cible de sorts de divination. De plus, les organes sensoriels de scrutation issus d''un sort de divination ne la perçoivent plus. Si la cible est une créature, elle entre en état d''animation suspendue. Le temps ne s''écoule plus pour elle et elle ne vieillit plus.' || E'\n' || 'Vous pouvez décider d''une condition qui mettra un terme prématuré au sort. Ce peut être ce que vous voulez, mais ce doit être visible ou se produire dans un rayon de 1,5 kilomètre autour de la cible. Par exemple, « au bout de 1 000 ans » ou « quand la tarasque se réveillera ». Ce sort se termine également si la cible subit le moindre dégât.',
        NULL
    ),
    (
        'Simulacre',
        7,
        (SELECT id_ecole FROM ecole WHERE nom_ecole = 'Illusion'),
        '12 heures',
        'contact',
        'V, S, M (de la neige ou de la glace en quantité suffisante pour faire une reproduction grandeur nature de la créature à dupliquer; des cheveux, des rognures d''ongles ou un autre échantillon de la créature à dupliquer, à placer dans la neige ou la glace, et de la poudre de rubis d''une valeur minimale de 1 500 po que le sort consume, à saupoudrer sur le double)',
        'jusqu''à dissipation',
        'Vous façonnez un double illusoire d''une bête ou d''un humanoïde à portée pendant toute la durée de l''incantation. Le double est une créature partiellement réelle, faite de neige ou de glace, qui peut accomplir des actions et qui est affectée par les éléments extérieurs comme une créature normale. II ressemble en tout point à l''original, mais il n''a que la moitié de son maximum de points de vie et n''a pas d''équipement lors de sa création. En dehors de cela, il utilise toutes les statistiques de la créature qu''il représente.' || E'\n' || 'Le simulacre se montre amical envers vous et les créatures que vous désignez. Il obéit à vos ordres vocaux, se déplace et agit comme vous le souhaitez et agit à votre tour lors des combats. Le simulacre est incapable d''apprendre et de gagner en puissance, il ne monte donc jamais de niveau et ne développe jamais ses pouvoirs. Il ne peut pas non plus récupérer un emplacement de sort dépensé.' || E'\n' || 'Si le simulacre est endommagé, vous pouvez le réparer dans un laboratoire d''alchimie en utilisant des herbes rares et des minéraux d''une valeur de 100 po par point de vie à régénérer. Le simulacre persiste jusqu''à ce qu''il tombe à O point de vie, il se transforme alors en neige et fond instantanément.' || E'\n' || 'Si vous lancez de nouveau ce sort, l''éventuel double que vous déjà en activité est détruit sur-le-champ.',
        NULL
    );

