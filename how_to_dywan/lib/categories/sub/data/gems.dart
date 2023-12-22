class Gems {
  List gemList = [
    {
      'name': 'Meta Socket',
      'img': 'meta.jpg',
      'descList': [
        {
          'subName': 'Chaotic Skyflare Diamond',
          'subImg': 'meta.jpg',
          'subDesc': ''
        },
      ],
    },
    {
      'name': 'Czerwony Socket',
      'img': 'ruby.jpg',
      'descList': [
        {'subName': 'Runed Cardinal Ruby', 'subImg': 'ruby.jpg', 'subDesc': ''},
      ],
    },
    {
      'name': 'Żółty Socket',
      'img': 'ametrine.jpg',
      'descList': [
        {
          'subName': 'Veiled Ametrine',
          'subImg': 'ametrine.jpg',
          'subDesc': 'Jeśli brakuje hita'
        },
        {
          'subName': 'Reckless Ametrine',
          'subImg': 'ametrine.jpg',
          'subDesc': ''
        },
      ],
    },
    {
      'name': 'Niebieski Socket',
      'img': 'dreadstone.jpg',
      'descList': [
        {
          'subName': 'Purified Dreadstone',
          'subImg': 'dreadstone.jpg',
          'subDesc': 'Jeśli socket bonus większy niż 5 Spell Powera'
        },
        {
          'subName': 'Runed Cardinal Ruby',
          'subImg': 'ruby.jpg',
          'subDesc': 'Jeśli socket bonus mniejszy niż 5 Spell Powera'
        },
      ],
    },
  ];

  getGemData() {
    return gemList;
  }
}
