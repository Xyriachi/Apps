class Gems {
  List gemList = [
    {
      'name': 'Meta Socket',
      'img': 'meta.jpg',
      'desc': [
        {
          'subName': 'Chaotic Skyflare Diamond',
          'subImg': 'meta.jpg',
          'subDesc':
              '+21 Critical Strike Rating and 3% Increased Critical Damage'
        },
      ],
    },
    {
      'name': 'Czerwony Socket',
      'img': 'ruby.jpg',
      'desc': [
        {
          'subName': 'Runed Cardinal Ruby',
          'subImg': 'ruby.jpg',
          'subDesc': '+23 Spell Power'
        },
      ],
    },
    {
      'name': 'Żółty Socket',
      'img': 'ametrine.jpg',
      'desc': [
        {
          'subName': 'Veiled Ametrine',
          'subImg': 'ametrine.jpg',
          'subDesc': '+12 Spell Power and +10 Hit Rating'
        },
        {
          'subName': 'Reckless Ametrine',
          'subImg': 'ametrine.jpg',
          'subDesc': '+12 Spell Power and +10 Haste Rating'
        },
      ],
    },
    {
      'name': 'Niebieski Socket',
      'img': 'dreadstone.jpg',
      'desc': [
        {
          'subName': 'Purified Dreadstone',
          'subImg': 'dreadstone.jpg',
          'subDesc': '+12 Spell Power and +10 Spirit'
        },
        {
          'subName': 'Runed Cardinal Ruby',
          'subImg': 'ruby.jpg',
          'subDesc': '+23 Spell Power'
        },
      ],
    },
  ];

  getGemData() {
    return gemList;
  }
}
