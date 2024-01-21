class TacticsList {
  List<Map<String, String>> tacticsList = [
    {
      'title': 'Icecrown Citadel',
      'subtitle': 'Gdzie jest zdrajca Arthas?',
      'img': 'icc.jpg'
    },
    {
      'title': 'The Ruby Sanctum',
      'subtitle': 'Dlaczego ten ogień mnie goni?',
      'img': 'rs.jpg'
    },
    {
      'title': 'Trial of the Crusader',
      'subtitle': 'Dlaczego walczymy na arenie?',
      'img': 'toc.jpg'
    },
  ];

  getTacticsList() {
    return tacticsList;
  }
}
