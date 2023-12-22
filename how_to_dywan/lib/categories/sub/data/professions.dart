class Professions {
  List proffesionList = [
    {
      'name': 'Engineering',
      'sub': [
        {
          'name': 'Hyperspeed Accelerators',
          'img': 'hyperspeed_accelerators.jpg',
          'desc': [
            'Enchant na rękawice, który daje 340 haste przez 12 seconds. 1 minuta cooldownu.',
          ]
        },
        {
          'name': 'Nitro Boosts',
          'img': 'nitro_boots.jpg',
          'desc': [
            'Enchant na buty, który zwiększa na chwilę szybkość biegania. Ułatwia unikanie zabójczych mechanik i pozwala szybko się przemieszczać. 3 minuty cooldownu.',
          ]
        },
        {
          'name': 'Saronite Bombs',
          'img': 'saronite_bomb.jpg',
          'desc': [
            'Bomba, która zadaje niewielkie obrażenia Fire wszystkim wrogom w zasięgu 10 yardów. Przy większej grupie wrogów, można zadać sporo dodatkowych obrażeń. 1 minuta cooldownu.',
          ]
        },
        {
          'name': 'MOLL-E',
          'img': 'moll_e.jpg',
          'desc': [
            'Kieszonkowy Mailbox, który pozwala odbierać maile bez wychodzenia z rajdu. 10 minut cooldownu.',
          ]
        },
        {
          'name': 'Jeeves',
          'img': 'jeeves.jpg',
          'desc': [
            'Robot, który pozwala naprawić swoje przedmioty, daje dostęp do banku i sprzedaje różne przedmioty. 1 godzina cooldownu.',
          ]
        },
      ]
    },
    {
      'name': 'Tailoring',
      'sub': [
        {
          'name': 'Lightweave Embroidery',
          'img': 'lightweave_embroidery.jpg',
          'desc': [
            'Enchant na pelerynę, który daje 295 Spell Powera przez 15 sekund. 45 sekund cooldownu.',
          ]
        },
        {
          'name': 'Brilliant Spellthread',
          'img': 'brilliant_spellthread.jpg',
          'desc': [
            'Enchant na spodnie, który daje 50 Spell Powera i 20 Spiritu.',
          ]
        },
      ]
    },
    {
      'name': 'Jewelcrafting',
      'sub': [
        {
          'name': 'Runed Dragon\'s Eye',
          'img': 'runed_dragons_eye.jpg',
          'desc': [
            'Specjalne czerwone gemy, które dają po 39 Spell Powera. Możesz użyć maksymalnie 3 takie gemy.',
          ]
        },
      ]
    },
    {
      'name': 'Alchemy',
      'sub': [
        {
          'name': 'Mixology',
          'img': 'mixology.jpg',
          'desc': [
            'Umiejętność pasywna, która zwiększa czas trwania buffa z flasków o 1 godzinę i efekt o 47 Spell Powera.',
          ]
        },
      ]
    },
    {
      'name': 'Inscription',
      'sub': [
        {
          'name': 'Master\'s Inscription of the Storm',
          'img': 'masters_inscription_of_the_storm.jpg',
          'desc': [
            'Enchant na naramienniki, który daje 70 Spell Powera i 15 Critital Strike Rating.',
          ]
        },
      ]
    },
    {
      'name': 'Blacksmithing',
      'sub': [
        {
          'name': 'Socket Bracer',
          'img': 'socket_bracer.jpg',
          'desc': [
            'Dodatkowy slot na gem w bransoletce.',
          ]
        },
        {
          'name': 'Socket Gloves',
          'img': 'socket_gloves.jpg',
          'desc': [
            'Dodatkowy slot na gem w rękawiczkach.',
          ]
        },
      ]
    },
    {
      'name': 'Leatherworking',
      'sub': [
        {
          'name': 'Fur Lining - Spell Power',
          'img': 'fur_lining_spell_power.jpg',
          'desc': [
            'Enchant na bransoletkę, który daje 76 Spell Powera.',
          ]
        },
      ]
    },
    {
      'name': 'Enchanting',
      'sub': [
        {
          'name': 'Enchant Ring - Greater Spellpower',
          'img': 'enchant_ring_greater_spellpower.jpg',
          'desc': [
            'Enchant na pierścień, który daje 23 Spell Powera. Możesz użyć takie 2.',
          ]
        },
      ]
    },
  ];

  getProffesionData() {
    return proffesionList;
  }
}
//TODO professions