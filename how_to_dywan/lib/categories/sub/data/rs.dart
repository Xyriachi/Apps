class RS {
  getRsList(selectedType, sectionData) {
    List rsList = [
      {
        'name': 'Mini Bosses',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': sectionData[4],
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Repelling Wave',
                'subImg': 'repelling_wave.jpg',
                'subDesc': [
                  'Boss odrzuca wszystkich graczy, stojących przy nim i nakłada im Stun na 3 sekundy. Po odrzuceniu, tworzy swoją kopię i resetuje swoje debuffy.',
                  selectedType[0] == '25'
                      ? 'Boss tworzy swoje kopie po zbiciu jego HP do 66% i 33%.'
                      : 'Boss tworzy swoją kopię po zbiciu jego HP do 50%.',
                ]
              },
              {
                'subName': 'Flame Beacon',
                'subImg': 'flame_beacon.jpg',
                'subDesc': [
                  selectedType[0] == '25'
                      ? 'Boss leci nad jezioro i rzuca na 6 losowych osób debuff Flame Beacon, który po chwili się aktywuje i sprawia, że te osoby kręcą się w miejscu i zadają obrażenia wszystkim w pobliżu.'
                      : 'Boss leci nad jezioro i rzuca na 3 losowe osoby debuff Flame Beacon, który po chwili się aktywuje i sprawia, że te osoby kręcą się w miejscu i zadają obrażenia wszystkim w pobliżu.',
                  'Osoby z debuffem uciekają conajmniej 10 yardów od rajdu i czekają, aż debuff zniknie.',
                ]
              },
              {
                'subName': 'Intimidating Roar',
                'subImg': 'intimidating_roar.jpg',
                'subDesc': [
                  'Boss nakłada Fear na cały rajd. Jeśli Tank zapomni użyć Taunta przed Fearem, Boss idzie zabić osobę z najwyższym Threatem.',
                  'Efekt trwa 4 sekundy.',
                ]
              },
            ]
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': sectionData[5],
            'shortDesc': sectionData[3],
            'sub': [
              {
                'type': 'header',
                'text': 'Baltharus the Warborn:',
              },
              {
                'type': 'image',
                'src': selectedType[0] == '10'
                    ? 'baltharus_the_warborn_10.png'
                    : 'baltharus_the_warborn_25.png',
              },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Mdpsy stoją za Bossem, a Rdpsy na max range. Main Tank trzyma Bossa, a Off Tank stoi z boku.'
                    : 'Mdpsy stoją za Bossem, a Rdpsy na max range. Main Tank trzyma Bossa, a 2 wyznaczone osoby stoją po bokach (Off Tank i ktoś z Tankiem w Off Specu).',
              },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Boss tworzy swoją kopię po zbiciu jego HP do 50%. Bijemy ten sam Target, co na początku. Po pojawieniu się kopii, Boss resetuje swoje debuffy.'
                    : 'Boss tworzy swoje kopie po zbiciu jego HP do 66% i 33%. Bijemy ten sam Target, co na początku. Po pojawieniu się kopii, Boss resetuje swoje debuffy.',
              },
              {
                'type': 'header',
                'text': 'Saviana Ragefire:',
              },
              {
                'type': 'image',
                'src': selectedType[0] == '10'
                    ? 'saviana_ragefire_10.png'
                    : 'saviana_ragefire_25.png',
              },
              {
                'type': 'string',
                'text':
                    'Nie stoimy przed Bossem. Można stać za nim lub obok niego, aby móc go dłużej bić jak zacznie odlatywać.',
              },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Co jakiś czas Boss leci nad jezioro i rzuca na 3 losowe osoby debuff Flame Beacon, który po chwili się aktywuje i sprawia, że te osoby kręcą się w miejscu i zadają obrażenia wszystkim w pobliżu.'
                    : 'Co jakiś czas Boss leci nad jezioro i rzuca na 6 losowych osób debuff Flame Beacon, który po chwili się aktywuje i sprawia, że te osoby kręcą się w miejscu i zadają obrażenia wszystkim w pobliżu.',
              },
              {
                'type': 'string',
                'text':
                    'Osoby z debuffem uciekają conajmniej 10 yardów od rajdu i czekają, aż debuff zniknie.',
              },
              {
                'type': 'header',
                'text': 'General Zarithrian',
              },
              {
                'type': 'image',
                'src': 'general_zarithrian.png',
              },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Mdpsy stoją za Bossem, a Rdpsy na max range. Main Tank trzyma Bossa, a 1 lub 2 wyznaczone osoby łapią Addy, wychodzące po bokach.'
                    : 'Mdpsy stoją za Bossem, a Rdpsy na max range. Main Tank trzyma Bossa, a 2 wyznaczone osoby łapią Addy, wychodzące po bokach.',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas Boss nakłada Fear na cały rajd. Jeśli Tank zapomni użyć Taunta przed Fearem, Boss idzie zabić osobę z najwyższym Threatem.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Halion',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': sectionData[4],
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Meteor Strike',
                'subImg': 'meteor_strike.jpg',
                'subDesc': [
                  'Na koniec timera Meteor Strike, na ziemi pojawia się kółko, w które po 5 sekundach uderzy meteoryt. Wszyscy po tej stronie Bossa przebiegają pod jego brzuchem na drugą stronę.',
                  'Meteoryt zadaje ogromne obrażenia wszystkim w promieniu 12 yardów od miejsca uderzenia.',
                  if (selectedType[1] == 'hc' && selectedType[0] == '25')
                    'W miejscu upadku pojawia się duży Add (Living Inferno) i grupa małych Addów (Living Ember). Dużego biją Rdpsy, a małe Mdpsy.',
                ]
              },
              {
                'subName': 'Fiery Combustion',
                'subImg': 'fiery_combustion.jpg',
                'subDesc': [
                  'Co jakiś czas, losowa osoba dostaje debuff Fiery Combustion. Z tym debuffem biegniemy do ściany, czekamy na dispell i wracamy do rajdu.',
                  'Po dispellu pojawia się pod nami plama, która zadaje spore obrażenia. Im późniejszy dispell, tym większa plama.',
                ]
              },
              {
                'subName': 'Soul Consumption',
                'subImg': 'soul_consumption.jpg',
                'subDesc': [
                  'Co jakiś czas, losowa osoba dostaje debuff Soul Consumption. Z tym debuffem biegniemy do ściany, czekamy na dispell i wracamy do rajdu.',
                  'Po dispellu pojawia się pod nami plama, która zadaje spore obrażenia. Im późniejszy dispell, tym większa plama.',
                ]
              },
              {
                'subName': 'Twilight Cutter',
                'subImg': 'twilight_cutter.jpg',
                'subDesc': [
                  selectedType[1] == 'nm'
                      ? 'Na koniec timera Twilight Cutter, cała sala zostaje przecięta laserem, który przechodzi przez środek i kręci się według wskazówek zegara.'
                      : 'Na koniec timera Twilight Cutter, cała sala zostaje przecięta 2 laserami, które przechodzą przez środek, przecinając się pod kątem prostym i kręcą się według wskazówek zegara.',
                  selectedType[1] == 'nm'
                      ? 'Dookoła sali latają fioletowe kulki. Laser pojawia się między tymi kulkami, więc można przewidzieć, gdzie się pojawi.'
                      : 'Dookoła sali latają fioletowe kulki. Lasery pojawiają się między tymi kulkami, więc można przewidzieć, gdzie się pojawią.',
                  selectedType[1] == 'nm'
                      ? 'Po pojawieniu się lasera, cały rajd biegnie za laserem, aby nie zostać przeciętym.'
                      : 'Po pojawieniu się laserów, cały rajd biegnie za laserami, aby nie zostać przeciętym.',
                ]
              },
              {
                'subName': 'Corporeality',
                'subImg': 'corporeality.jpg',
                'subDesc': [
                  'Boss jest obecny w obu wymiarach. W zależności od obecnego % Corporeality, obecność Bossa w jednym wymiarze jest silniejsza niż w drugim.',
                  'Jeśli Corporeality jest mniejsze niż 50%, wszyscy w pierwszym wymiarze (Fire) biją Bossa mocniej, a w drugim wymiarze (Shadow) przestają go bić.',
                  'Jeśli Corporeality jest większe niż 50%, wszyscy w drugim wymiarze (Shadow) biją Bossa mocniej, a w pierwszym wymiarze (Fire) przestają go bić.',
                ]
              },
            ]
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': sectionData[5],
            'shortDesc': sectionData[3],
            'sub': [
              {
                'type': 'header',
                'text': 'Faza 1:',
              },
              {
                'type': 'image',
                'src': selectedType[1] == 'hc'
                    ? 'halion_hc_phase_1.png'
                    : 'halion_nm_phase_1.png',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Przed pullem Rdpsy przechodzą na drugą stronę, aby przed pierwszym meteorytem uciekała tylko połowa Dpsów.',
                },
              {
                'type': 'string',
                'text':
                    'Mdpsy stoją obok Bossa, a Rdpsy nieco dalej, ale nie musi być max range. Warlock może dać teleport około 15-20 yardów od Bossa.',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas, losowa osoba dostaje debuff Fiery Combustion, z którym biegnie do ściany, czeka na dispell i wraca do rajdu.',
              },
              {
                'type': 'image',
                'src': 'halion_meteorite.png',
              },
              {
                'type': 'string',
                'text':
                    'Na koniec timera Meteor Strike, na ziemi pojawia się kółko, w które po 5 sekundach uderzy meteoryt. Wszyscy po tej stronie Bossa przebiegają pod jego brzuchem na drugą stronę.',
              },
              {
                'type': 'string',
                'text':
                    'Najlepiej jest przebiegać przy tylnych nogach Bossa, bo Boss czasem jest w stanie przewrócić graczy, którzy są pod nim.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli masz debuff, a spada meteoryt, biegnij na drugą stronę razem z rajdem i zaczekaj przy ścianie na dispell. Jeśli masz nitro buty, możesz je użyć.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'image',
                  'src': 'halion_hc_fire_adds.png',
                },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'W miejscu upadku meteorytu pojawia się duży Add (Living Inferno) i grupa małych Addów (Living Ember). Małe Addy zostaw Mdpsom.',
                },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Dużego Adda biją Rdpsy, ale wróć do bicia Bossa, gdy Add ma 30% HP. Nie przebij Aggro!',
                },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Jeśli duży Add będzie zbyt blisko małych Addów, to te małe Addy zaczynają rosnąć, zwiększając swoje HP i obrażenia.',
                },
              {
                'type': 'header',
                'text': 'Faza 2:',
              },
              {
                'type': 'image',
                'src': selectedType[1] == 'hc'
                    ? 'halion_hc_phase_2.png'
                    : 'halion_nm_phase_2.png',
              },
              {
                'type': 'string',
                'text':
                    'Po zbiciu HP Bossa do 75%, zaczyna się Faza 2. Boss przechodzi do innego wymiaru, a na środku pojawia się portal, przez który możemy się do niego dostać.',
              },
              {
                'type': 'string',
                'text':
                    'Wszyscy poza 1 Tankiem i 1 Healerem wchodzą przez portal. Jako pierwszy wchodzi Tank, a za nim reszta rajdu.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'nm'
                    ? 'Ustawiamy się po tej stronie, po której głowa Bossa jest z naszej lewej strony, a ogon z prawej.'
                    : 'Ustawiamy się po tej stronie, po której głowa Bossa jest z naszej prawej strony, a ogon z lewej.',
              },
              {
                'type': 'string',
                'text':
                    'Mdpsy stoją obok Bossa, a Rdpsy za Mdpsami. Warto obrócić sobię kamerę, aby widzieć fioletowe kulki, latające dookoła pomieszczenia.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli dostaniemy debuff Soul Consumption, a do końca timera Twilight Cutter jeszcze daleko, biegniemy do ściany, równolegle do Bossa, czekamy na dispell i wracamy do rajdu.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli dostaniemy debuff, a za chwilę skończy się timer Twilight Cutter, patrzymy gdzie jest fioletowa kulka i biegniemy do ściany tak, aby laser pojawił się przed nami. Czekamy na dispell i wracamy do rajdu.',
              },
              {
                'type': 'image',
                'src': selectedType[1] == 'hc'
                    ? 'halion_hc_cutter.png'
                    : 'halion_nm_cutter.png',
              },
              {
                'type': 'string',
                'text':
                    'Pod koniec timera Twilight Cutter, Tank zaczyna kręcić Bossem, zgodnie z ruchem wskazówek zegara. Jak Boss się obraca, reszta rajdu robi to samo.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'nm'
                    ? 'Na koniec timera, cała sala zostaje przecięta laserem, który przechodzi przez środek i kręci się zgodnie z ruchem wskazówek zegara.'
                    : 'Na koniec timera, cała sala zostaje przecięta 2 laserami, przecinającymi się pod kątem prostym, które przechodza przez środek i kręcą się zgodnie z ruchem wskazówek zegara.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'nm'
                    ? 'Laser pojawia się między fioletowymi kulami, latającymi dookoła sali, więc można przewidzieć, gdzie się pojawi.'
                    : 'Lasery pojawiają się między fioletowymi kulami, latającymi dookoła sali, więc można przewidzieć, gdzie się pojawią.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli dostaniemy debuff Soul Consumption, a uciekamy przed laserem, biegniemy lekko w lewo i do ściany, gonimy laser, czekając na dispell i wracamy do rajdu po dispellu.',
              },
              {
                'type': 'header',
                'text': 'Faza 3',
              },
              {
                'type': 'image',
                'src': 'halion_portals.png',
              },
              {
                'type': 'string',
                'text':
                    'Po zbiciu HP Bossa do 50%, zaczyna się faza 3. Boss jest obecny w obu wymiarach, a dookoła sali pojawiają się portale, które łączą oba wymiary.',
              },
              {
                'type': 'string',
                'text':
                    'Rdpsy przechodzą przez portal, a Mdpsy zostają. W tej fazie obowiązują mechaniki z obu poprzednich faz. W pierwszym wymiarze (Fire) są mechaniki z fazy 1, a w drugim (Shadow) z fazy 2.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli przechodzimy przez portal, musimy upewnić się, czy nie mamy debuffa Fiery Combustion lub Soul Consumption.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Wszystkie plamy z debuffów Soul Consumption i Fiery Combustion są widoczne w obu wymiarach.',
                },
              {
                'type': 'string',
                'text':
                    'W tej fazie dochodzi też mechanika Corporeality. Na górze pojawia się napis "Halion\'s Corporeality: 50%", która zmienia się o 10% w dowolną stronę. DPS w obu wymiarach musi być wyrównany.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli Corporeality jest mniejsze niż 50%, wszyscy w pierwszym wymiarze (Fire) biją Bossa mocniej, a w drugim wymiarze (Shadow) przestają go bić.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli Corporeality jest większe niż 50%, wszyscy w drugim wymiarze (Shadow) biją Bossa mocniej, a w pierwszym wymiarze (Fire) przestają go bić.',
              },
            ]
          },
        ]
      },
    ];
    return rsList;
  }
}
