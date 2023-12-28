class Professions {
  List proffesionList = [
    {
      'name': 'Engineering',
      'img': 'engineering.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Hyperspeed Accelerators',
          'subImg': 'hyperspeed_accelerators.jpg',
          'subDesc':
              'Enchant na rękawice, który daje 340 haste przez 12 seconds. 1 minuta cooldownu.',
        },
        {
          'subName': 'Nitro Boosts',
          'subImg': 'nitro_boots.jpg',
          'subDesc':
              'Enchant na buty, który zwiększa na chwilę szybkość biegania. Ułatwia unikanie zabójczych mechanik i pozwala szybko się przemieszczać. 3 minuty cooldownu.',
        },
        {
          'subName': 'Saronite Bombs',
          'subImg': 'saronite_bomb.jpg',
          'subDesc':
              'Bomba, która zadaje niewielkie obrażenia Fire wszystkim wrogom w zasięgu 10 yardów. Przy większej grupie wrogów, można zadać sporo dodatkowych obrażeń. 1 minuta cooldownu.',
        },
        {
          'subName': 'MOLL-E',
          'subImg': 'moll_e.jpg',
          'subDesc':
              'Kieszonkowy Mailbox, który pozwala odbierać maile bez wychodzenia z rajdu. 10 minut cooldownu.',
        },
        {
          'subName': 'Jeeves',
          'subImg': 'jeeves.jpg',
          'subDesc':
              'Robot, który pozwala naprawić swoje przedmioty, daje dostęp do banku i sprzedaje różne przedmioty. 1 godzina cooldownu.',
        },
      ]
    },
    {
      'name': 'Tailoring',
      'img': 'tailoring.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Lightweave Embroidery',
          'subImg': 'lightweave_embroidery.jpg',
          'subDesc':
              'Enchant na pelerynę, który daje 295 Spell Powera przez 15 sekund. 45 sekund cooldownu.',
        },
        {
          'subName': 'Brilliant Spellthread',
          'subImg': 'brilliant_spellthread.jpg',
          'subDesc':
              'Enchant na spodnie, który daje 50 Spell Powera i 20 Spiritu.',
        },
      ]
    },
    {
      'name': 'Jewelcrafting',
      'img': 'jewelcrafting.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Runed Dragon\'s Eye',
          'subImg': 'runed_dragons_eye.jpg',
          'subDesc':
              'Specjalne czerwone gemy, które dają po 39 Spell Powera. Możesz użyć maksymalnie 3 takie gemy.',
        },
      ]
    },
    {
      'name': 'Alchemy',
      'img': 'alchemy.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Mixology',
          'subImg': 'mixology.jpg',
          'subDesc':
              'Umiejętność pasywna, która zwiększa czas trwania buffa z flasków o 1 godzinę i efekt o 47 Spell Powera.',
        },
      ]
    },
    {
      'name': 'Inscription',
      'img': 'inscription.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Master\'s Inscription of the Storm',
          'subImg': 'masters_inscription_of_the_storm.jpg',
          'subDesc':
              'Enchant na naramienniki, który daje 70 Spell Powera i 15 Critital Strike Rating.',
        },
      ]
    },
    {
      'name': 'Blacksmithing',
      'img': 'blacksmithing.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Socket Bracer',
          'subImg': 'socket_bracer.jpg',
          'subDesc': 'Dodatkowy slot na gem w bransoletce.',
        },
        {
          'subName': 'Socket Gloves',
          'subImg': 'socket_gloves.jpg',
          'subDesc': 'Dodatkowy slot na gem w rękawiczkach.',
        },
      ]
    },
    {
      'name': 'Leatherworking',
      'img': 'leatherworking.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Fur Lining - Spell Power',
          'subImg': 'fur_lining_spell_power.jpg',
          'subDesc': 'Enchant na bransoletkę, który daje 76 Spell Powera.',
        },
      ]
    },
    {
      'name': 'Enchanting',
      'img': 'enchanting.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Enchant Ring - Greater Spellpower',
          'subImg': 'enchant_ring_greater_spellpower.jpg',
          'subDesc':
              'Enchant na pierścień, który daje 23 Spell Powera. Możesz użyć takie 2.',
        },
      ]
    },
  ];

  getProffesionData() {
    return proffesionList;
  }
}
