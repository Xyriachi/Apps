class Enchants {
  List enchantList = [
    {
      'name': "Head",
      'img': 'head.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Arcanum of Burning Mysteries',
          'subImg': 'arcanum_of_burning_mysteries.jpg',
          'subDesc': 'Dalaran - Kirin Tor Quartermaster - Archmage Alvareaux',
        },
      ],
    },
    {
      'name': "Shoulders",
      'img': 'shoulders.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Master\'s Inscription of the Storm',
          'subImg': 'masters_inscription_of_the_storm.jpg',
          'subDesc': 'Profesja - Inscription',
        },
        {
          'subName': 'Greater Inscription of the Storm',
          'subImg': 'greater_inscription_of_the_storm.jpg',
          'subDesc':
              'The Storm Peaks - The Sons of Hodir Quartermaster - Lillehoff',
        },
      ],
    },
    {
      'name': "Cloak",
      'img': 'cloak.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Lightweave Embroidery',
          'subImg': 'lightweave_embroidery.jpg',
          'subDesc': 'Profesja - Tailoring',
        },
        {
          'subName': 'Springy Arachnoweave',
          'subImg': 'engineering.jpg',
          'subDesc': 'Profesja - Engineering',
        },
        {
          'subName': 'Scroll of Enchant Cloak - Greater Speed',
          'subImg': 'scroll.jpg',
          'subDesc': 'Profesja - Enchanting',
        },
      ],
    },
    {
      'name': "Chest",
      'img': 'chest.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Scroll of Enchant Chest - Powerful Stats',
          'subImg': 'scroll.jpg',
          'subDesc': 'Profesja - Enchanting',
        },
        {
          'subName': 'Scroll of Enchant Chest - Major Spirit',
          'subImg': 'scroll.jpg',
          'subDesc': 'Profesja - Enchanting',
        },
      ],
    },
    {
      'name': "Wrists",
      'img': 'wrists.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Fur Lining - Spell Power',
          'subImg': 'fur_lining_spell_power.jpg',
          'subDesc': 'Profesja - Leatherworking',
        },
        {
          'subName': 'Scroll of Enchant Bracer - Superior Spellpower',
          'subImg': 'scroll.jpg',
          'subDesc': 'Profesja - Enchanting',
        },
      ],
    },
    {
      'name': "Hands",
      'img': 'hands.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Hyperspeed Accelerators',
          'subImg': 'engineering.jpg',
          'subDesc': 'Profesja - Engineering',
        },
        {
          'subName': 'Scroll of Enchant Gloves - Exceptional Spellpower',
          'subImg': 'scroll.jpg',
          'subDesc': 'Profesja - Enchanting',
        },
      ],
    },
    {
      'name': "Waist",
      'img': 'waist.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Eternal Belt Buckle',
          'subImg': 'eternal_belt_buckle.jpg',
          'subDesc': 'Blacksmithing',
        },
      ],
    },
    {
      'name': "Legs",
      'img': 'legs.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Brilliant Spellthread',
          'subImg': 'brilliant_spellthread.jpg',
          'subDesc': 'Profesja - Tailoring',
        },
      ],
    },
    {
      'name': "Feet",
      'img': 'feet.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Nitro Boosts',
          'subImg': 'engineering.jpg',
          'subDesc': 'Profesja - Engineering',
        },
        {
          'subName': 'Scroll of Enchant Boots - Tuskarr\'s Vitality',
          'subImg': 'scroll.jpg',
          'subDesc': 'Profesja - Enchanting',
        },
        {
          'subName': 'Scroll of Enchant Boots - Icewalker',
          'subImg': 'scroll.jpg',
          'subDesc': 'Profesja - Enchanting',
        },
      ],
    },
    {
      'name': "Ring",
      'img': 'ring_1.jpg',
      'desc': 'Tylko jeśli masz enchanting.',
      'sub': [
        {
          'subName': 'Enchant Ring - Greater Spellpower',
          'subImg': 'enchant_ring_greater_spellpower.jpg',
          'subDesc': 'Profesja - Enchanting',
        },
      ],
    },
    {
      'name': "Main-hand Weapon",
      'img': 'main-hand_weapon.jpg',
      'desc': '',
      'sub': [
        {
          'subName': 'Scroll of Enchant Weapon - Mighty Spellpower',
          'subImg': 'scroll.jpg',
          'subDesc': 'Profesja - Enchanting',
        },
        {
          'subName': 'Scroll of Enchant Staff - Greater Spellpower',
          'subImg': 'scroll.jpg',
          'subDesc': 'Profesja - Enchanting',
        },
      ],
    },
  ];

  getEnchantData() {
    return enchantList;
  }
}
