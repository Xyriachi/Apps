class Rotation {
  List rotationList = [
    {
      'name': 'Shadow Bolt',
      'img': 'shadow_bolt.jpg',
      'desc':
          'Używaj tylko, jeśli kończy się debuff Shadow Mastery na Targecie.',
      'shortDesc': 'Tylko jeden Cast.',
    },
    {
      'name': 'Corruption',
      'img': 'corruption.jpg',
      'desc':
          'Używaj, jeśli nie ma na Targecie lub jeśli addon / weakaura każe Ci odnowić.',
      'shortDesc': 'Nie może zniknąć z Targetu.',
    },
    {
      'name': 'Unstable Affliction',
      'img': 'unstable_affliction.jpg',
      'desc': [
        'Zacznij Cast, jeśli do końca została 1 sekunda lub mniej, aby odnowić dopiero jak zniknie z Targetu.',
        'Jeśli odnowisz wcześniej, tracisz DPS.'
      ],
      'shortDesc': 'Odnów jak się skończy.',
    },
    {
      'name': 'Haunt',
      'img': 'haunt.jpg',
      'desc': [
        'Zacznij Cast 2-5 sekund przed końcem debuffa na Targecie.',
        'Jeśli stoisz przy Targecie, 2 sekundy wystarczą, jeśli na max range, 5 sekund będzie odpowiednie, bo Haunt musi dolecieć do Targetu.'
      ],
      'shortDesc': 'Odnów zanim się skończy.',
    },
    {
      'name': 'Curse of Agony',
      'img': 'curse_of_agony.jpg',
      'desc':
          'To jest instant Cast, więc odnów jak się skończy, ale priorytet mają inne DoTki.',
      'shortDesc': 'Odnów jak się skończy.',
    },
    {
      'name': 'Drain Soul',
      'img': 'drain_soul.jpg',
      'desc': [
        'Używaj, jeśli Target ma mniej niż 25% HP.',
        'Jeśli kończy się Corruption na Targecie, a nie masz czasu na Castowanie, użyj Drain Soul, aby odnowić Corruption.',
        'Pamiętaj o pilnowaniu debuffa Shadow Mastery na Targecie.'
      ],
      'shortDesc': 'Jeśli Target ma mniej niż 25% hp.',
    },
    {
      'name': 'Shadow Bolt',
      'img': 'shadow_bolt.jpg',
      'desc': 'Spamuj, ale pilnuj DoTek, aby odnawiać je na czas.',
      'shortDesc': 'Po prostu spamuj.',
    },
  ];

  getRotationList() {
    return rotationList;
  }
}
