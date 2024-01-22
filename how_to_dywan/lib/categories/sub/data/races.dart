class Races {
  List raceList = [
    {
      'name': 'Orc',
      'img': 'orc.jpg',
      'desc': [
        'Najlepsza rasa dla Warlocka w Hordzie.',
        'Daje 165 Spell Powera i zwiększa obrażenia zadawane przez demony o 5%.',
        'Skrócony czas trwania stunów czasem też się przydaje.',
      ],
      'subDesc': 'Najlepsza rasa dla Warlocka w Hordzie.',
      'sub': [
        {
          'subName': 'Blood Fury',
          'subDesc': 'Zwiększa Spell Power o 165 przez 15 sekund.',
          'subImg': 'blood_fury.jpg'
        },
        {
          'subName': 'Command',
          'subDesc': 'Zwiększa obrażenia zadawane przez pety o 5%.',
          'subImg': 'command.jpg'
        },
        {
          'subName': 'Hardiness',
          'subDesc': 'Czas trwania stunów zmniejszony o 15%.',
          'subImg': 'hardiness.jpg'
        },
      ]
    },
    {
      'name': 'Undead',
      'img': 'undead.jpg',
      'desc': [
        'Mogło być lepiej, ale nie jest źle.',
        'Regeneracja HP raczej nie przyda się na rajdach.',
        'Czasem na rajdach przydaje się usuwanie stunów, ale Undead nic więcej nie daje.',
      ],
      'subDesc': 'Mogło być lepiej, ale nie jest źle.',
      'sub': [
        {
          'subName': 'Will of the Forsaken',
          'subDesc':
              'Usuwa wszystkie stuny itp. Ten efekt dzieli cooldown 45 sekund z podobnymi efektami.',
          'subImg': 'will_of_the_forsaken.jpg'
        },
        {
          'subName': 'Cannibalize',
          'subDesc':
              'Jeśli aktywne, regeneruje 7% maksymalnego HP co 2 sekundy przez 10 sekund. Działa tylko wtedy, kiedy w odległości 5 yardów są zwłoki Undeada lub Humanoida. Każdy ruch, akcja lub otrzymane obrażenia przerywają ten efekt.',
          'subImg': 'cannibalize.jpg'
        },
        {
          'subName': 'Shadow Resistance',
          'subDesc':
              'Zmniejsza szansę na zostanie trafionym czarami Shadow o 2%.',
          'subImg': 'shadow_resistance.jpg'
        },
      ]
    },
    {
      'name': 'Blood Elf',
      'img': 'blood_elf.jpg',
      'desc': [
        'Niezbyt użyteczna rasa dla Warlocka.',
        'Nie zwiększa zadawanych obrażeń i regeneruje manę, którą i tak dałby nam Life Tap.',
        'Czasem przydaje się Silence, ale nie działa na Bossach, więc nie warto.',
      ],
      'subDesc': 'Niezbyt użyteczna rasa dla Warlocka.',
      'sub': [
        {
          'subName': 'Arcane Torrent',
          'subDesc':
              'Nakłada Silence na wszystkich wrogów w odległości 8 yardów na 2 sekundy i regeneruje 6% Twojej maksymalnej many.',
          'subImg': 'arcane_torrent.jpg'
        },
        {
          'subName': 'Magic Resistance',
          'subDesc': 'Zmniejsza szansę na zostanie trafionym czarami o 2%.',
          'subImg': 'magic_resistance.jpg'
        },
      ]
    },
    {
      'name': 'Human',
      'img': 'human.jpg',
      'desc': [
        'Najlepsza rasa dla Warlocka w Alliance.',
        'Daje tylko 3% Spiritu, ale pozwala na usunięcie wszystkich efektów utrudniających ruch lub odbierających kontrolę nad postacią.',
        'Bardzo przydaje się na PVP, ale nawet na rajdach można zrobić z tego użytek.',
      ],
      'subDesc': 'Najlepsza rasa dla Warlocka w Alliance.',
      'sub': [
        {
          'subName': 'The Human Spirit',
          'subDesc': 'Spirit zwiększony o 3%.',
          'subImg': 'the_human_spirit.jpg'
        },
        {
          'subName': 'Every Man for Himself',
          'subDesc':
              'Usuwa wszystkie efekty utrudniające ruch lub odbierające kontrolę nad postacią. Ten efekt dzieli cooldown z podobnymi efektami.',
          'subImg': 'every_man_for_himself.jpg'
        },
      ]
    },
    {
      'name': 'Gnome',
      'img': 'gnome.jpg',
      'desc': [
        'Rasa porównywalna z Humanem.',
        'Daje tylko 5% Intellectu, ale pozwala unikać efektów utrudniających lub blokujących ruch.',
      ],
      'subDesc': 'Rasa porównywalna z Humanem.',
      'sub': [
        {
          'subName': 'Expansive Mind',
          'subDesc': 'Intellect zwiększony o 5%.',
          'subImg': 'expansive_mind.jpg'
        },
        {
          'subName': 'Escape Artist',
          'subDesc':
              'Pozwala unikać efektów utrudniających lub blokujących ruch.',
          'subImg': 'escape_artist.jpg'
        },
        {
          'subName': 'Arcane Resistance',
          'subDesc':
              'Zmniejsza szansę na zostanie trafionym czarami Arcane o 2%.',
          'subImg': 'arcane_resistance.jpg'
        },
      ]
    },
  ];

  getRaceData() {
    return raceList;
  }
}
