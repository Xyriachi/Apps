class Professions {
  List proffesionList = [
    {
      'name': 'Engineering',
      'img': 'engineering.jpg',
      'shortDesc': 'Najlepsza profesja dla casterów.',
      'desc': [
        'Najlepsza profesja dla casterów.',
        'Daje dobre buffy, a Nitro Buty pozwalają szybko uciekać od mechanik.'
      ],
      'sub': [
        {
          'subName': 'Hyperspeed Accelerators',
          'subImg': 'hyperspeed_accelerators.jpg',
          'subDesc':
              'Enchant na rękawice, który daje 340 haste przez 12 sekund. 1 minuta Cooldownu.',
        },
        {
          'subName': 'Nitro Boosts',
          'subImg': 'nitro_boots.jpg',
          'subDesc': [
            'Enchant na buty, który zwiększa na chwilę szybkość biegania.',
            'Ułatwia unikanie zabójczych mechanik i pozwala szybko się przemieszczać. 3 minuty Cooldownu.'
          ],
        },
        {
          'subName': 'Saronite Bombs',
          'subImg': 'saronite_bomb.jpg',
          'subDesc': [
            'Bomba, która zadaje trochę Fire DMG wszystkim wrogom w zasięgu 10 yardów.',
            'Przy większej grupie wrogów, można zadać sporo dodatkowych obrażeń. 1 minuta Cooldownu.'
          ],
        },
        {
          'subName': 'MOLL-E',
          'subImg': 'moll_e.jpg',
          'subDesc':
              'Kieszonkowy Mailbox, który pozwala odbierać maile bez wychodzenia z rajdu. 10 minut Cooldownu.',
        },
        {
          'subName': 'Jeeves',
          'subImg': 'jeeves.jpg',
          'subDesc':
              'Robot, który pozwala naprawić swoje przedmioty, daje dostęp do banku i sprzedaje różne przedmioty. 1 godzina Cooldownu.',
        },
      ]
    },
    {
      'name': 'Tailoring',
      'img': 'tailoring.jpg',
      'shortDesc': 'Kto by nie chciał latać na dywanie?',
      'desc':
          'Druga najlepsza profesja dla casterów. Daje dobre staty i latający dywan.',
      'sub': [
        {
          'subName': 'Lightweave Embroidery',
          'subImg': 'lightweave_embroidery.jpg',
          'subDesc':
              'Enchant na pelerynę, który daje 295 Spell Powera przez 15 sekund. 45 sekund Cooldownu.',
        },
        {
          'subName': 'Brilliant Spellthread',
          'subImg': 'brilliant_spellthread.jpg',
          'subDesc':
              'Enchant na spodnie, który daje 50 Spell Powera i 20 Spiritu.',
        },
      ]
    },
    {
      'name': 'Jewelcrafting',
      'img': 'jewelcrafting.jpg',
      'shortDesc': 'Bardzo dobry zamiennik dla Tailoringu.',
      'desc':
          'Bardzo dobry zamiennik dla Tailoringu. Pozwala też wytwarzać gemy.',
      'sub': [
        {
          'subName': 'Runed Dragon\'s Eye',
          'subImg': 'runed_dragons_eye.jpg',
          'subDesc':
              'Specjalne czerwone gemy, które dają po 39 Spell Powera. Możesz użyć maksymalnie 3 takie gemy.',
        },
      ]
    },
    {
      'name': 'Alchemy',
      'img': 'alchemy.jpg',
      'shortDesc': 'Przydatne, jeśli używasz dużo flasków i potionów.',
      'desc':
          'Wzmacnia efekt Flasków i wydłuża ich działanie. Pozwala też tworzyć flaski i potiony.',
      'sub': [
        {
          'subName': 'Mixology',
          'subImg': 'mixology.jpg',
          'subDesc':
              'Umiejętność pasywna, która zwiększa czas trwania buffa z flasków o 1 godzinę i efekt o 47 Spell Powera.',
        },
      ]
    },
    {
      'name': 'Inscription',
      'img': 'inscription.jpg',
      'shortDesc': 'Czasem się przyda, ale Warlock nie zmienia glyphów.',
      'desc': 'Przydatne, jeśli robisz glyphy na inne postacie.',
      'sub': [
        {
          'subName': 'Master\'s Inscription of the Storm',
          'subImg': 'masters_inscription_of_the_storm.jpg',
          'subDesc':
              'Enchant na naramienniki, który daje 70 Spell Powera i 15 Critital Strike Rating.',
        },
      ]
    },
    {
      'name': 'Blacksmithing',
      'img': 'blacksmithing.jpg',
      'shortDesc': 'Raczej nie przydatne dla casterów.',
      'desc': 'Raczej nie przydatne dla casterów.',
      'sub': [
        {
          'subName': 'Socket Bracer',
          'subImg': 'socket_bracer.jpg',
          'subDesc': 'Dodatkowy slot na gem w bransoletce.',
        },
        {
          'subName': 'Socket Gloves',
          'subImg': 'socket_gloves.jpg',
          'subDesc': 'Dodatkowy slot na gem w rękawiczkach.',
        },
      ]
    },
    {
      'name': 'Leatherworking',
      'img': 'leatherworking.jpg',
      'shortDesc': 'Raczej nie przydatne dla casterów.',
      'desc': 'Raczej nie przydatne dla casterów.',
      'sub': [
        {
          'subName': 'Fur Lining - Spell Power',
          'subImg': 'fur_lining_spell_power.jpg',
          'subDesc': 'Enchant na bransoletkę, który daje 76 Spell Powera.',
        },
      ]
    },
    {
      'name': 'Enchanting',
      'img': 'enchanting.jpg',
      'shortDesc': 'Mało daje, ale pozwala robić enchanty.',
      'desc': 'Mało daje, ale pozwala robić enchanty.',
      'sub': [
        {
          'subName': 'Enchant Ring - Greater Spellpower',
          'subImg': 'enchant_ring_greater_spellpower.jpg',
          'subDesc':
              'Enchant na pierścień, który daje 23 Spell Powera. Możesz użyć takie 2.',
        },
      ]
    },
  ];

  getProffesionData() {
    return proffesionList;
  }
}
