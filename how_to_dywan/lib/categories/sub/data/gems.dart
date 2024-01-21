class Gems {
  List gemList = [
    {
      'name': 'Meta Socket',
      'img': 'meta.jpg',
      'desc': [
        'Taki Socket jest tylko w hełmach.',
        'Pasują tylko Meta Gemy.',
      ],
      'shortDesc': 'Pasują tylko Meta Gemy.',
      'sub': [
        {
          'subName': 'Chaotic Skyflare Diamond',
          'subImg': 'meta.jpg',
          'subDesc':
              '+21 Critical Strike Rating i +3% zwiększone obrażenia krytyczne.',
        },
      ],
    },
    {
      'name': 'Czerwony Socket',
      'img': 'ruby.jpg',
      'desc': 'Pasują Czerwone, Pomarańczowe i Fioletowe Gemy.',
      'shortDesc': 'Pasują Czerwone, Pomarańczowe i Fioletowe Gemy.',
      'sub': [
        {
          'subName': 'Runed Cardinal Ruby',
          'subImg': 'ruby.jpg',
          'subDesc': '+23 Spell Powera.',
        },
      ],
    },
    {
      'name': 'Żółty Socket',
      'img': 'kings_amber.jpg',
      'desc': 'Pasują Żółte, Pomarańczowe i Zielone Gemy.',
      'shortDesc': 'Pasują Żółte, Pomarańczowe i Zielone Gemy.',
      'sub': [
        {
          'subName': 'Veiled Ametrine',
          'subImg': 'ametrine.jpg',
          'subDesc': [
            '+12 Spell Powera i +10 Hit Rating.',
            'Używaj tylko, jeśli brakuje Ci hita.',
          ]
        },
        {
          'subName': 'Reckless Ametrine',
          'subImg': 'ametrine.jpg',
          'subDesc': '+12 Spell Powera i +10 Haste Rating.',
        },
      ],
    },
    {
      'name': 'Niebieski Socket',
      'img': 'majestic_zircon.jpg',
      'desc': 'Pasują Niebieskie, Fioletowe i Zielone Gemy.',
      'shortDesc': 'Pasują Niebieskie, Fioletowe i Zielone Gemy.',
      'sub': [
        {
          'subName': 'Purified Dreadstone',
          'subImg': 'dreadstone.jpg',
          'subDesc': [
            '+12 Spell Powera i +10 Spiritu.',
            'Jeśli socket bonus większy niż 5 Spell Powera.',
          ]
        },
        {
          'subName': 'Runed Cardinal Ruby',
          'subImg': 'ruby.jpg',
          'subDesc': [
            '+23 Spell Powera.',
            'Jeśli socket bonus mniejszy niż 5 Spell Powera.',
          ]
        },
      ],
    },
  ];

  getGemData() {
    return gemList;
  }
}
