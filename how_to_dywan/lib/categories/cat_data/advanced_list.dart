class AdvancedList {
  List<Map<String, String>> advancedList = [
    {'title': 'Lista Spelli', 'subtitle': 'Co to jest?'},
    {'title': 'Rotacja', 'subtitle': 'Nie wystarczy walić głową w klawiaturę?'},
    {'title': 'Opener', 'subtitle': 'Jak zacząć walkę?'},
    {
      'title': 'Jedzenie i Mikstury',
      'subtitle': 'Jakie dopalacze wziąć na rajd?'
    },
    {'title': 'Addony', 'subtitle': 'Co się przydaje na rajdach?'},
  ];

  getAdvancedList() {
    return advancedList;
  }
}
