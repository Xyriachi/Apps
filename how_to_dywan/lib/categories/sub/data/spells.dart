class Spells {
  List spellList = [
    {
      'name': 'DPS',
      'img': 'shadow_bolt.jpg',
      'desc': 'Każdy Spell, którego celem jest zadawanie obrażeń Targetowi.',
      'shortDesc': 'Wszystko od robienia DPSu.',
      'sub': [
        {
          'subName': 'Corruption',
          'subImg': 'corruption.jpg',
          'subDesc': [
            'Najsilniejsza DoTka.',
            'Shadow Bolt, Haunt i Drain Soul odnawiają jej czas trwania dzięki talentowi Everlasting Affliction.'
          ],
        },
        {
          'subName': 'Unstable Affliction',
          'subImg': 'unstable_affliction.jpg',
          'subDesc': 'Druga najsilniejsza DoTka.',
        },
        {
          'subName': 'Haunt',
          'subImg': 'haunt.jpg',
          'subDesc':
              'Debuff zwiększający Shadow DMG DoTek o 20%. Glyph of Haunt zwiększa ten efekt do 23%.',
        },
        {
          'subName': 'Curse of Agony',
          'subImg': 'curse_of_agony.jpg',
          'subDesc':
              'Najsłabsza DoTka. Na początek zadaje słabe obrażenia, ale z czasem staje się coraz silniejsza.',
        },
        {
          'subName': 'Shadow Bolt',
          'subImg': 'shadow_bolt.jpg',
          'subDesc':
              'Główny filler. Nakłada debuff Shadow Mastery na Target (+5% Critital Strike Chance).',
        },
        {
          'subName': 'Drain Soul',
          'subImg': 'drain_soul.jpg',
          'subDesc':
              'Filler poniżej 25% HP Targetu, bo wtedy zadaje 4x większe obrażenia.',
        },
        {
          'subName': 'Seed of Corruption',
          'subImg': 'seed_of_corruption.jpg',
          'subDesc':
              'Główny Spell AoE. Działa jak DoTka, ale, jeśli Target otrzyma wystarczająco dużo obrażeń, wybucha zadając obrażenia AoE.',
        },
        {
          'subName': 'Rain of Fire',
          'subImg': 'rain_of_fire.jpg',
          'subDesc':
              'Drugi Spell AoE. Zadaje mniejsze obrażenia niż Seed of Corruption, ale nie musisz czekać, aż wybuchnie.',
        },
      ],
    },
    {
      'name': 'Proc',
      'img': 'charred_twilight_scale.jpg',
      'desc': 'Wszystkie buffy, które pojawiają się losowo w trakcie walki.',
      'shortDesc': 'Buffy z % szansą na pojawienie się.',
      'sub': [
        {
          'subName': 'Eradication',
          'subImg': 'eradication.jpg',
          'subDesc':
              'Każde obrażenia zadane przez Corruption mają 6% szansę na zwiększenie Cast Speed o 20% przez 10 sekund.',
        },
        {
          'subName': 'Nightfall',
          'subImg': 'nightfall.jpg',
          'subDesc':
              'Każde obrażenia zadane przez Corruption i Drain Life mają 4% szansę na to, żeby następny Shadow Bolt był instant Castem.',
        },
        {
          'subName': 'Devious Minds',
          'subImg': 'devious_minds.jpg',
          'subDesc': 'DMG Done większy o 10% przez 10 sekund.',
        },
      ],
    },
    {
      'name': 'Buffy',
      'img': 'unending_breath.jpg',
      'desc':
          'Wszystkie buffy, które możemy nałożyć na siebie lub kogoś innego.',
      'shortDesc': 'Buffy, które nie pojawiają się same.',
      'sub': [
        {
          'subName': 'Life Tap',
          'subImg': 'life_tap.jpg',
          'subDesc':
              'Zamienia część HP na manę. Glyph of Life Tap sprawia, że otrzymujesz buffa na 40 sekund, który zamienia 20% Twojego Spiritu na Spell Power.',
        },
        {
          'subName': 'Shadow Ward',
          'subImg': 'shadow_ward.jpg',
          'subDesc': 'Bańka, absorbująca obrażenia Shadow.',
        },
        {
          'subName': 'Fel Armor',
          'subImg': 'fel_armor.jpg',
          'subDesc':
              'Zwiększa Spell Power o 180 i 30% Spiritu. Co 5 sekund regeneruje 2% HP. Efekt trwa 30 minut.',
        },
        {
          'subName': 'Demon Armor',
          'subImg': 'demon_armor.jpg',
          'subDesc':
              'Zwiększa Armor o 1060 i efekt leczenia o 20% przez 30 minut.',
        },
        {
          'subName': 'Create Spellstone',
          'subImg': 'create_spellstone.jpg',
          'subDesc':
              'Kamień, używany jako dodatkowy enchant na broni. Zwiększa DMG od DoTek o 1% i daje 60 Haste Rating przez 1 godzinę.',
        },
        {
          'subName': 'Detect Invisibility',
          'subImg': 'detect_invisibility.jpg',
          'subDesc': 'Osoba z buffem wykrywa słabszą niewidzialność.',
        },
      ],
    },
    {
      'name': 'Debuffy',
      'img': 'shadow_bite.jpg',
      'desc': 'Wszystko, co nakładamy na Target.',
      'shortDesc': 'Wszystko, co nakładamy na Target.',
      'sub': [
        {
          'subName': 'Curse of the Elements',
          'subImg': 'curse_of_the_elements.jpg',
          'subDesc':
              'Zmniejsza Arcane, Fire, Frost, Nature i Shadow Resistance o 165 i zwiększa Magic Damage Taken o 13% przez 5 minut.',
        },
        {
          'subName': 'Curse of Tongues',
          'subImg': 'curse_of_tongues.jpg',
          'subDesc':
              'Wydłuża Cast Time Spelli o 30% przez 30 sekund. Sprawia też, że Target mówi w języku demonicznym.',
        },
        {
          'subName': 'Curse of Weakness',
          'subImg': 'curse_of_weakness.jpg',
          'subDesc':
              'Zmniejsza Attack Power o 478 i Armor o 5% przez 2 minuty.',
        },
        {
          'subName': 'Curse of Doom',
          'subImg': 'curse_of_doom.jpg',
          'subDesc':
              'Zadaje spore obrażenia, ale dopiero po 1 minucie. Jeśli Target umrze od tych obrażeń, pojawia się Doomguard.',
        },
        {
          'subName': 'Banish',
          'subImg': 'banish.jpg',
          'subDesc':
              'Sprawia, że Target nie może nic robić, ale nie można mu zadać obrażeń. Efekt trwa 30 sekund i działa tylko na Demony i Elementale.',
        },
        {
          'subName': 'Fear',
          'subImg': 'fear.jpg',
          'subDesc':
              'Target boi się i biega w losowe miejsca przez 20 sekund. Obrażenia mogą przerwać efekt.',
        },
        {
          'subName': 'Death Coil',
          'subImg': 'death_coil.jpg',
          'subDesc':
              'Target otrzymuje Shadow DMG i biega przerażony przez 3 sekundy. Caster leczy się za 300% zadanych obrażeń.',
        },
      ],
    },
    {
      'name': 'Inne',
      'img': 'soulshard.jpg',
      'desc': 'Wszystko, co nie pasuje do innych kategorii, a się przydaje.',
      'shortDesc': 'Pozostałe Spelle.',
      'sub': [
        {
          'subName': 'Create Soulstone',
          'subImg': 'create_soulstone.jpg',
          'subDesc':
              'Tworzy kamień, który można użyć na sobie lub kimś z party / rajdu. Jeśli osoba z kamieniem umrze, może wrócić do życia z częścią HP i many.',
        },
        {
          'subName': 'Create Healthstone',
          'subImg': 'create_healthstone.jpg',
          'subDesc':
              'Tworzy kamień, który regeneruje HP po użyciu. Można dać go innym osobom.',
        },
        {
          'subName': 'Ritual of Souls',
          'subImg': 'ritual_of_souls.jpg',
          'subDesc':
              'Przy pomocy 2 innych osób tworzy studnię, z której każdy w party / rajdzie może wyciągnąć Healthstone.',
        },
        {
          'subName': 'Ritual of Summoning',
          'subImg': 'ritual_of_summoning.jpg',
          'subDesc':
              'Przy pomocy 2 innych osób tworzy szafę, która pozwala na przywołanie członków party / rajdu. Do przywołania potrzebne są łącznie 2 osoby.',
        },
        {
          'subName': 'Demonic Circle: Summon',
          'subImg': 'demonic_circle_summon.jpg',
          'subDesc':
              'Tworzy krąg na ziemi, do którego możesz się później teleportować. Krąg znika po 6 minutach.',
        },
        {
          'subName': 'Demonic Circle: Teleport',
          'subImg': 'demonic_circle_teleport.jpg',
          'subDesc':
              'Teleportuje Cię do wcześniej stworzonego kręgu, jeśli jesteś w odległości 40 yardów od kręgu.',
        },
        {
          'subName': 'Health Funnel',
          'subImg': 'health_funnel.jpg',
          'subDesc':
              'Channeling, który leczy Twojego demona za pomocą Twojego HP.',
        },
        {
          'subName': 'Searing Pain',
          'subImg': 'searing_pain.jpg',
          'subDesc':
              'Szybki Spell, który zadaje Fire DMG i generuje dużo Threatu. Przydatny do podbijania Kinetic Bomb na ICC.',
        },
        {
          'subName': 'Hellfire',
          'subImg': 'hellfire.jpg',
          'subDesc': 'Najsłabszy Spell AoE, ale pozwala się zabić.',
        },
      ],
    },
  ];
  getSpellList() {
    return spellList;
  }
}
