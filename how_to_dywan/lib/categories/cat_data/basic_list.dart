class BasicList {
  List<Map<String, String>> basicList = [
    {'title': 'Gear', 'subtitle': 'Czy ten item jest dla mnie?'},
    {'title': 'Talenty', 'subtitle': 'Które talenty są najlepsze?'},
    {'title': 'Gemy', 'subtitle': 'Jakie kamyki wsadzać do itemów?'},
    {'title': 'Glyphy', 'subtitle': 'Czym wzmocnić swoje spelle?'},
    {'title': 'Enchanty', 'subtitle': 'Jakie enchanty wybrać?'},
    {'title': 'Profesje', 'subtitle': 'Która profesja da mi najwięcej?'},
    {'title': 'Rasy', 'subtitle': 'Czy rasa ma znaczenie?'},
  ];

  get length => null;

  getBasicList() {
    return basicList;
  }
}
