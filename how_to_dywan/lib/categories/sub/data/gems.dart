class Gems {
  List gemList = [
    {
      'name': 'Meta Socket',
      'img': 'meta.jpg',
      'desc': 'test',
      'sub': [
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
      'desc': 'test',
      'sub': [
        {'subName': 'Runed Cardinal Ruby', 'subImg': 'ruby.jpg', 'subDesc': ''},
      ],
    },
    {
      'name': 'Żółty Socket',
      'img': 'kings_amber.jpg',
      'desc': 'test',
      'sub': [
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
      'img': 'majestic_zircon.jpg',
      'desc': 'test',
      'sub': [
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
