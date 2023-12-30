class Opener {
  List openerList = [
    {
      'name': 'Potion of Wild Magic',
      'img': 'potion_of_wild_magic.jpg',
      'desc':
          'Najważniejsze jest odnowienie ręcznie Corruption, jeśli buff Devious Minds (10% DMG więcej - buff z 4setu za frosty) pojawi się przed końcem buffa z Potiona.',
      'shortDesc': 'Użyj 1-2 sekundy przed pullem.',
      'sub': [
        {
          'subName': 'Unstable Affliction',
          'subImg': 'unstable_affliction.jpg',
          'subDesc': 'Druga najsilniejsza DoTka.',
        },
        {
          'subName': 'Shadow Bolt',
          'subImg': 'shadow_bolt.jpg',
          'subDesc':
              'Główny filler. Nakłada debuff Shadow Mastery na target (+5% Critital Strike Chance).',
        },
        {
          'subName': 'Haunt',
          'subImg': 'haunt.jpg',
          'subDesc':
              'Debuff zwiększający Shadow DMG DoTek o 20%. Glyph of Haunt zwiększa ten efekt do 23%.',
        },
        {
          'subName': 'Corruption',
          'subImg': 'corruption.jpg',
          'subDesc':
              'Najsilniejsza DoTka. Shadow Bolt, Haunt i Drain Soul odnawiają jej czas trwania dzięki talentowi Everlasting Affliction.',
        },
        {
          'subName': 'Curse of Agony',
          'subImg': 'curse_of_agony.jpg',
          'subDesc':
              'Najsłabsza DoTka. Na początek zadaje słabe obrażenia, ale z czasem staje się coraz silniejsza.',
        },
        {
          'subName': 'Shadow Bolt',
          'subImg': 'shadow_bolt.jpg',
          'subDesc':
              'Główny filler. Nakłada debuff Shadow Mastery na target (+5% Critital Strike Chance).',
        },
        {
          'subName': 'Shadow Bolt',
          'subImg': 'shadow_bolt.jpg',
          'subDesc':
              'Główny filler. Nakłada debuff Shadow Mastery na target (+5% Critital Strike Chance).',
        },
      ],
    },
    {
      'name': 'Potion of Speed',
      'img': 'potion_of_speed.jpg',
      'desc': 'Po prostu wykonaj opener.',
      'shortDesc': 'Użyj 1-2 sekundy przed pullem.',
      'sub': [
        {
          'subName': 'Shadow Bolt',
          'subImg': 'shadow_bolt.jpg',
          'subDesc':
              'Główny filler. Nakłada debuff Shadow Mastery na target (+5% Critital Strike Chance).',
        },
        {
          'subName': 'Unstable Affliction',
          'subImg': 'unstable_affliction.jpg',
          'subDesc': 'Druga najsilniejsza DoTka.',
        },
        {
          'subName': 'Corruption',
          'subImg': 'corruption.jpg',
          'subDesc':
              'Najsilniejsza DoTka. Shadow Bolt, Haunt i Drain Soul odnawiają jej czas trwania dzięki talentowi Everlasting Affliction.',
        },
        {
          'subName': 'Haunt',
          'subImg': 'haunt.jpg',
          'subDesc':
              'Debuff zwiększający Shadow DMG DoTek o 20%. Glyph of Haunt zwiększa ten efekt do 23%.',
        },
        {
          'subName': 'Curse of Agony',
          'subImg': 'curse_of_agony.jpg',
          'subDesc':
              'Najsłabsza DoTka. Na początek zadaje słabe obrażenia, ale z czasem staje się coraz silniejsza.',
        },
        {
          'subName': 'Shadow Bolt',
          'subImg': 'shadow_bolt.jpg',
          'subDesc':
              'Główny filler. Nakłada debuff Shadow Mastery na target (+5% Critital Strike Chance).',
        },
        {
          'subName': 'Shadow Bolt',
          'subImg': 'shadow_bolt.jpg',
          'subDesc':
              'Główny filler. Nakłada debuff Shadow Mastery na target (+5% Critital Strike Chance).',
        },
      ],
    },
  ];
  getOpenerList() {
    return openerList;
  }
}
