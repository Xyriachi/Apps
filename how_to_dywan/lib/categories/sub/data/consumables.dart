class Consumables {
  List consumableList = [
    {
      'name': 'Flask of the Frost Wyrm',
      'img': 'flask_of_the_frost_wyrm.jpg',
      'desc':
          'Zwiększa Spell Power o 125 przez 1 godzinę. Efekt nie znika po śmierci.',
      'shortDesc': 'Wymagane na cały rajd.',
    },
    {
      'name': 'Potion of Wild Magic',
      'img': 'potion_of_wild_magic.jpg',
      'desc':
          'Zwiększa Critical Strike Rating o 200 i Spell Power o 200 przez 15 sekund.',
      'shortDesc': 'Wymagane na trudniejsze Bossy.',
    },
    {
      'name': 'Potion of Speed',
      'img': 'potion_of_speed.jpg',
      'desc': 'Zwiększa Haste Rating o 500 przez 15 sekund.',
      'shortDesc': 'Wymagane na trudniejsze Bossy.',
    },
    {
      'name': 'Fish Feast',
      'img': 'fish_feast.jpg',
      'desc':
          'Zwiększa Attack Power o 80, Spell Power o 46 i Staminę o 40 przez 1 godzinę. Efekt znika po śmierci.',
      'shortDesc': 'Główne rajdowe jedzenie.',
    },
    {
      'name': 'Tender Shoveltusk Steak',
      'img': 'tender_shoveltusk_steak.jpg',
      'desc':
          'Zwiększa Spell Power o 46 i Staminę o 40 przez 1 godzinę. Efekt znika po śmierci.',
      'shortDesc': 'Jeśli nikt nie da Fish Feast.',
    },
    {
      'name': 'Firecracker Salmon',
      'img': 'firecracker_salmon.jpg',
      'desc':
          'Zwiększa Spell Power o 46 i Staminę o 40 przez 1 godzinę. Efekt znika po śmierci.',
      'shortDesc': 'Jeśli nikt nie da Fish Feast.',
    },
    {
      'name': 'Spiced Mammoth Treats',
      'img': 'spiced_mammoth_treats.jpg',
      'desc': 'Zwiększa Strength i Staminę Twojego Peta o 30 przez 1 godzinę.',
      'shortDesc': 'Najlepsze jedzenie dla Peta.',
    },
  ];
  getConsumablesList() {
    return consumableList;
  }
}
