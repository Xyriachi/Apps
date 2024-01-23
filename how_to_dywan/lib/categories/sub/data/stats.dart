class Stats {
  List statList = [
    {
      'name': "Hit Rating",
      'img': 'hit.jpg',
      'desc': [
        '1% Hit = 26.23 Hit Rating',
        'Jeśli brakuje Ci Hitu, nie wszystkie Spelle trafią w cel.',
        'Jeśli masz talent Suppression, potrzebujesz 14%, a jeśli nie, 17%.',
        'W Alliance, Draenei w rajdzie daje 1% Hitu, więc potrzebujesz 14% lub 16%.',
      ],
      'shortDesc': '14% musi być.',
    },
    {
      'name': "Spell Power",
      'img': 'spell_power.jpg',
      'desc': [
        'Spell Power daje najwięcej DPSu.',
        'Wpływa na DMG wszystkich Spelli i DoTek, które używasz.',
        '57% Spell Powera przechodzi na peta w postaci Attack Powera.',
        '15% Spell Powera przechodzi na peta w postaci Spell Powera.',
        'Felhunter używa Attack Power i Spell Power jednocześnie, więc jest to najlepszy pet.',
      ],
      'shortDesc': 'Najważniejsza ze statystyk.',
    },
    {
      'name': "Haste Rating",
      'img': 'haste.jpg',
      'desc': [
        '1% Haste = 32.79 Haste Rating',
        'Haste skraca Cast Speed i zmniejsza czas między Tickami DoTek, więc częściej zadają DMG.',
        'Haste nie przechodzi na peta, ale nadal jest bardzo przydatny.',
      ],
      'shortDesc': 'Nieco słabsze od Spell Powera, ale wciąż dobre.',
    },
    {
      'name': "Crit Rating",
      'img': 'crit.jpg',
      'desc': [
        '1% Crit = 45.91 Crit Rating',
        'Crit nie wpływa na Drain Soul, Curse of Doom i Curse of Agony',
        'Jeśli Spell zada obrażenia krytyczne, zwykle zadaje 2.09x więcej DMG niż normalnie.',
        'Jeśli Seed of Corruption zadaje obrażenia krytyczne, zwykle zadaje 1.545x więcej DMG niż normalnie.',
        'Crit nie przechodzi na peta.',
      ],
      'shortDesc': 'Daje mniej niż Haste, ale nadal sporo.',
    },
    {
      'name': "Spirit",
      'img': 'spirit.jpg',
      'desc': [
        '1 Spirit = 0.55 Spell Power',
        'Fel Armor i Glyph of Life Tap sprawiają, że po użyciu Life Tapa, 1 Spirit daje 0.5 Spell Powera.',
        'Buff Blessing of Kings wzmacnia ten efekt i 1 Spirit daje 0.55 Spell Powera.',
      ],
      'shortDesc': 'Porównywalne z Critem.',
    },
    {
      'name': "Intellect",
      'img': 'intellect.jpg',
      'desc': [
        '1 Intellect = 0.3333 Crit Rating',
        'Oprócz Crita, Intellect daje tylko manę, ale Warlock nie ma problemów z maną.',
      ],
      'shortDesc': 'Najgorsza ze statystyk, ale nadal coś daje.',
    },
  ];

  getStatList() {
    return statList;
  }
}
