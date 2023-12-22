class Races {
  List raceList = [
    {
      'name': 'Orc',
      'sub': [
        {
          'subName': 'Blood Fury',
          'desc': 'Zwiększa Spell Power o 165 przez 15 sekund.',
          'img': 'blood_fury.jpg'
        },
        {
          'subName': 'Command',
          'desc': 'Zwiększa obrażenia zadawane przez pety o 5%.',
          'img': 'command.jpg'
        },
        {
          'subName': 'Hardiness',
          'desc': 'Czas trwania stunów zmniejszony o 15%.',
          'img': 'hardiness.jpg'
        },
      ]
    },
    {
      'name': 'Undead',
      'sub': [
        {
          'subName': 'Will of the Forsaken',
          'desc':
              'Usuwa wszystkie stuny itp. Ten efekt dzieli cooldown 45 sekund z podobnymi efektami.',
          'img': 'will_of_the_forsaken.jpg'
        },
        {
          'subName': 'Cannibalize',
          'desc':
              'Jeśli aktywne, regeneruje 7% maksymalnego HP co 2 sekundy przez 10 sekund. Działa tylko wtedy, kiedy w odległości 5 yardów są zwłoki Undeada lub Humanoida. Każdy ruch, akcja lub otrzymane obrażenia przerywają ten efekt.',
          'img': 'cannibalize.jpg'
        },
        {
          'subName': 'Shadow Resistance',
          'desc': 'Zmniejsza szansę na zostanie trafionym czarami Shadow o 2%.',
          'img': 'shadow_resistance.jpg'
        },
      ]
    },
    {
      'name': 'Blood Elf',
      'sub': [
        {
          'subName': 'Arcane Torrent',
          'desc':
              'Nakłada Silence na wszystkich wrogów w odległości 8 yardów na 2 sekundy i regeneruje 6% twojej maksymalnej many.',
          'img': 'arcane_torrent.jpg'
        },
        {
          'subName': 'Magic Resistance',
          'desc': 'Zmniejsza szansę na zostanie trafionym czarami o 2%.',
          'img': 'magic_resistance.jpg'
        },
      ]
    },
    {
      'name': 'Human',
      'sub': [
        {
          'subName': 'The Human Spirit',
          'desc': 'Spirit zwiększony o 3%.',
          'img': 'the_human_spirit.jpg'
        },
        {
          'subName': 'Every Man for Himself',
          'desc':
              'Usuwa wszystkie efekty utrudniające ruch lub odbierające kontrolę nad postacią. Ten efekt dzieli cooldown z podobnymi efektami.',
          'img': 'every_man_for_himself.jpg'
        },
      ]
    },
    {
      'name': 'Gnome',
      'sub': [
        {
          'subName': 'Expansive Mind',
          'desc': 'Intellect zwiększony o 5%.',
          'img': 'expansive_mind.jpg'
        },
        {
          'subName': 'Escape Artist',
          'desc': 'Pozwala unikać efektów utrudniających lub blokujących ruch.',
          'img': 'escape_artist.jpg'
        },
        {
          'subName': 'Arcane Resistance',
          'desc': 'Zmniejsza szansę na zostanie trafionym czarami Arcane o 2%.',
          'img': 'arcane_resistance.jpg'
        },
      ]
    },
  ];

  getRaceData() {
    return raceList;
  }
}
//TODO races