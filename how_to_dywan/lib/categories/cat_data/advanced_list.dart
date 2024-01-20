class AdvancedList {
  List<Map<String, String>> advancedList = [
    {
      'title': 'Lista Spelli',
      'subtitle': 'Co to jest?',
      'img': 'spell_list.jpg'
    },
    {
      'title': 'Rotacja',
      'subtitle': 'Nie wystarczy walić głową w klawiaturę?',
      'img': 'rotation.jpg'
    },
    {'title': 'Opener', 'subtitle': 'Jak zacząć walkę?', 'img': 'opener.jpg'},
    {
      'title': 'Jedzenie i Mikstury',
      'subtitle': 'Co wziąć na rajd?',
      'img': 'consumables.jpg'
    },
    {
      'title': 'Addony',
      'subtitle': 'Jak ulepszyć interfejs?',
      'img': 'addons.png'
    },
  ];

  getAdvancedList() {
    return advancedList;
  }
}
