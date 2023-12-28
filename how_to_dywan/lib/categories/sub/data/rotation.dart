class Rotation {
  List rotationList = [
    {
      'name': 'Shadow Bolt',
      'img': 'shadow_bolt.jpg',
      'desc':
          'Używaj tylko jeśli kończy się debuff Shadow Mastery na targecie.',
      'shortDesc': 'Tylko jeden cast.',
    },
    {
      'name': 'Corruption',
      'img': 'corruption.jpg',
      'desc':
          'Używaj jeśli nie ma na targecie lub jeśli addon / weakaura każe ci odnowić.',
      'shortDesc': 'Nie może zniknąć z targetu.',
    },
    {
      'name': 'Unstable Affliction',
      'img': 'unstable_affliction.jpg',
      'desc':
          'Zacznij cast jeśli do końca została 1 sekunda lub mniej, aby odnowić dopiero jak zniknie z targetu. Jeśli odnowisz wcześniej, tracisz DPS.',
      'shortDesc': 'Odnów jak się skończy.',
    },
    {
      'name': 'Haunt',
      'img': 'haunt.jpg',
      'desc':
          'Zacznij cast 2-5 sekund przed końcem debuffa na targecie. Jeśli stoisz przy targecie, 2 sekundy wystarczą, jeśli na max range, 5 sekund będzie odpowiednie, bo Haunt musi dolecieć do targetu.',
      'shortDesc': 'Odnów zanim się skończy.',
    },
    {
      'name': 'Curse of Agony',
      'img': 'curse_of_agony.jpg',
      'desc':
          'To jest instant cast, więc odnów jak się skończy, ale priorytet mają inne DoTki.',
      'shortDesc': 'Odnów jak się skończy.',
    },
    {
      'name': 'Drain Soul',
      'img': 'drain_soul.jpg',
      'desc':
          'Używaj jeśli target ma mniej niż 25% hp lub jeśli musisz odnowić Corruption, a nie zdążysz wycastować Shadow Bolta, ani Haunta. Pamiętaj o pilnowaniu debuffa Shadow Mastery na targecie.',
      'shortDesc': 'Jeśli target ma mniej niż 25% hp.',
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
