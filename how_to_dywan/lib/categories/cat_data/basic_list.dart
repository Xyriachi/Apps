class BasicList {
  List<Map<String, String>> basicList = [
    {
      'title': 'Gear',
      'subtitle': 'Jakie itemy są dla mnie najlepsze?',
      'img': 'gear.jpg'
    },
    {
      'title': 'Talenty',
      'subtitle': 'Które talenty są najlepsze?',
      'img': 'talents.jpg'
    },
    {
      'title': 'Gemy',
      'subtitle': 'Jakie kamyki wsadzać do itemów?',
      'img': 'gems.jpg'
    },
    {
      'title': 'Glyphy',
      'subtitle': 'Czym wzmocnić swoje spelle?',
      'img': 'glyphs.jpg'
    },
    {
      'title': 'Enchanty',
      'subtitle': 'Jakie enchanty wybrać?',
      'img': 'enchants.jpg'
    },
    {
      'title': 'Profesje',
      'subtitle': 'Która profesja da mi najwięcej?',
      'img': 'professions.jpg'
    },
    {'title': 'Rasy', 'subtitle': 'Czy rasa ma znaczenie?', 'img': 'races.jpg'},
  ];

  get length => null;

  getBasicList() {
    return basicList;
  }
}
