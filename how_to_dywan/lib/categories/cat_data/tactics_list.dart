class TacticsList {
  List<Map<String, String>> tacticsList = [
    {'title': 'Icecrown Citadel', 'subtitle': 'Nie macie jakiegoś ogrzewania?'},
    {'title': 'The Ruby Sanctum', 'subtitle': 'Dlaczego tu jest tak gorąco?'},
    {
      'title': 'Trial of the Crusader',
      'subtitle': 'Dlaczego walczymy na arenie?'
    },
  ];

  getTacticsList() {
    return tacticsList;
  }
}
