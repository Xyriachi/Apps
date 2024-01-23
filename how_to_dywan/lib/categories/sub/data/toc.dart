class ToC {
  getTocList(selectedType, sectionData) {
    List tocList = [
      {
        'name': 'Northrend Beasts',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': sectionData[4],
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Fire Bomb',
                'subImg': 'fire_bomb.jpg',
                'subDesc': [
                  'Boss rzuca butelkę w losową osobę.',
                  selectedType[1] == 'hc'
                      ? 'Po upadku tworzy się ogień, z którego trzeba uciekać. Ogień nakłada stacki DoTki.'
                      : 'Po upadku tworzy się ogień, z którego trzeba uciekać.',
                ]
              },
              {
                'subName': 'Throw Snobold',
                'subImg': 'throw_snobold.jpg',
                'subDesc': [
                  'Co jakiś czas, Snoboldy wskakują na plecy losowej osoby i jej przeszkadzają.',
                ]
              },
              {
                'subName': 'Staggering Stomp',
                'subImg': 'staggering_stomp.jpg',
                'subDesc': [
                  'Boss przerywa Casty i daje Silence na 8s wszystkim, którzy Castowali w range 15 yardów.',
                  'Jeśli żaden Paladyn nie daje Aura Mastery, lepiej nie Castować przez chwilę.',
                ]
              },
              {
                'subName': 'Paralytic Toxin',
                'subImg': 'paralytic_toxin.jpg',
                'subDesc': [
                  'Acidmaw paraliżuje losową osobę i wszystkich w pobliżu. Paraliż trwa 1 minutę.',
                ]
              },
              {
                'subName': 'Burning Bile',
                'subImg': 'burning_bile.jpg',
                'subDesc': [
                  'Dreadscale strzela kulą w losową osobę. Ta osoba i wszyscy w pobliżu dostają debuff Burning Bile',
                  'Osoby z debuffem zadają obrażenia wszystkim w range 10 yardów.',
                ]
              },
              {
                'subName': 'Slime Pool',
                'subImg': 'slime_pool.jpg',
                'subDesc': [
                  'Co jakiś czas, pod Bossem pojawia się plama szlamu, która powiększa się z czasem.',
                ]
              },
              {
                'subName': 'Arctic Breath',
                'subImg': 'arctic_breath.jpg',
                'subDesc': [
                  'Icehowl odwraca się w kierunku losowej osoby i zamraża wszystkich przed sobą.',
                ]
              },
              {
                'subName': 'Massive Crash',
                'subImg': 'massive_crash.jpg',
                'subDesc': [
                  'Icehowl biegnie na środek, podskakuje, uderza o ziemię, odrzuca wszystkich pod ścianę, wybiera losową osobę i szarżuje na nią.',
                  'Wszyscy, razem z Targetem, uciekają od miejsca, w którym był ten Target przed chwilą.',
                  'Jeśli Boss kogoś zabije, dostaje Enrage. Jeśli wszyscy uciekną, Boss uderza w ścianę i przez chwilę nic nie robi.',
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
                'text': 'Gormok the Impaler',
              },
              {
                'type': 'image',
                'src': selectedType[1] == 'hc'
                    ? 'gormok_the_impaler_hc.png'
                    : 'gormok_the_impaler_nm.png',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Boss tankowany jest na środku. Wszyscy poza Hunterami stoją pod nim.'
                    : 'Rdpsy rozbiegają się po arenie lub stoją pod Bossem, a Mdpsy stoją pod Bossem.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Hunterzy biegają dookoła, a Boss rzuca w nich butelkami, które zostawiają ogień. Ten ogień nakłada stacki DoTki.'
                    : 'Boss rzuca w Rdpsów butelkami, które po upadku tworzą ogień. Trzeba z niego uciekać.',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas, Boss Castuje Staggering Stomp, który przerywa Casty i daje Silence na 8s, więc lepiej przez chwilę nie Castować.',
              },
              {
                'type': 'string',
                'text':
                    'Pojawiają się też Snoboldy, które dosłownie wskakują na plecy losowej osobie i jej przeszkadzają.',
              },
              if (selectedType[1] == 'nm')
                {
                  'type': 'string',
                  'text':
                      'Ta osoba podbiega pod Bossa i bije go dalej, a Mdpsy zabijają Snoboldy.',
                },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Następne Bossy wychodzą na koniec timera lub po zabiciu Gormoka. Jest więc szansa, że będziemy walczyć z 3 Bossami jednocześnie.',
                },
              {
                'type': 'header',
                'text': 'Acidmaw i Dreadscale',
              },
              {
                'type': 'image',
                'src': 'worms.png',
              },
              {
                'type': 'string',
                'text':
                    'Rdpsy rozstawiają się na arenie z lewej strony, a Mdpsy stoją za lewym robakiem (Acidmaw). Prawego robaka (Dreadscale) nikt nie bije.',
              },
              {
                'type': 'string',
                'text':
                    'Acidmaw strzela kulką w losową osobę i wszyscy przy tej osobie dostają Paralytic Poison, przez który biegają coraz wolniej, aż w końcu nie mogą się ruszyć.',
              },
              {
                'type': 'string',
                'text':
                    'Dreadscale strzela kulką z Burning Bile, a każdy, kto nią dostanie, odbiega od rajdu.',
              },
              {
                'type': 'string',
                'text':
                    'Osoba z Burning Bile może ściągnąć innym Paralytic Poison, przebiegając obok nich.',
              },
              {
                'type': 'image',
                'src': 'worms_after_submerge.png',
              },
              {
                'type': 'string',
                'text':
                    'Robak, który wystaje z ziemi, strzela kulką przed siebie, a drugi w losową osobę.',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas oba robaki chowają się pod ziemią, a po wyjściu zamieniają się. Ten co wystawał z ziemi, może sie przemieszczać i odwrotnie.',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas na arenie pojawiają się plamy szlamu, które powiększają się z czasem. Trzeba na nie uważać.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Następne Bossy wychodzą na koniec timera lub po zabiciu Acidmawa i Dreadscale.',
                },
              {
                'type': 'header',
                'text': 'Icehowl',
              },
              {
                'type': 'image',
                'src': 'icehowl.png',
              },
              {
                'type': 'string',
                'text':
                    'Każdy stoi, gdzie chce ale lepiej stać nieco dalej, bo Boss lubi odrzucać wszystkich obok niego.',
              },
              {
                'type': 'string',
                'text':
                    'Boss co jakiś czas obraca się w losowym kierunku i zamraża wszystkich przed sobą. Te osoby nie mogą nic robić przez kilka sekund.',
              },
              {
                'type': 'string',
                'text':
                    'W pewnym momencie Boss biegnie na środek, podskakuje, uderza o ziemię, odrzuca wszystkich pod ścianę, wybiera losową osobę i szarżuje na nią.',
              },
              {
                'type': 'string',
                'text':
                    'Nad celem pojawia się znaczek, więc wiadomo gdzie celuje Boss. Wszyscy (cel też) uciekają wzdłuż ściany od miejsca, w którym stała przed chwilą wybrana osoba.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli Boss kogoś zabije podczas szarży, dostaje Enrage. Jeśli wszyscy uciekną, Boss uderza w ścianę i przez chwilę nic nie robi.',
              },
              {
                'type': 'string',
                'text':
                    'Nie używamy nitro ani teleportu, bo Boss może wtedy polecieć w innym kierunku.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Lord Jaraxxus',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': sectionData[4],
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Fel Lightning',
                'subImg': 'fel_lightning.jpg',
                'subDesc': [
                  'Boss strzela laserem w losową osobę. Laser przechodzi na osoby w pobliżu, maksymalnie na 5 osób.',
                ]
              },
              {
                'subName': 'Legion Flame',
                'subImg': 'legion_flames.jpg',
                'subDesc': [
                  'Osoba z debuffem po chwili zaczyna zostawiać pod sobą ogień.',
                  'Ogień staramy się zostawiać wzdłuż ściany.',
                  if (selectedType[1] == 'hc')
                    'Nie zostaawiamy ognia pod Bossem, ani w miejscu spawnu Portali i Wulkanów.',
                ]
              },
              {
                'subName': 'Infernal Eruption',
                'subImg': 'infernal_eruption.jpg',
                'subDesc': [
                  'Co jakiś czas na arenie pojawia się Wulkan, który spawnuje Felflame Infernale.',
                  if (selectedType[1] == 'hc')
                    'Wulkany mają HP. Musimy zniszczyć je jak najszybciej. Im dłużej Wulkan stoi, tym więcej Addów wychodzi.',
                  'Addy po chwili zaczynają używać mocne AoE, więc lepiej nie stać przy nich.',
                ]
              },
              {
                'subName': 'Nether Portal',
                'subImg': 'nether_portal.jpg',
                'subDesc': [
                  'Co jakiś czas na arenie pojawia się Portal, z którego wychodzi Mistress of Pain.',
                  if (selectedType[1] == 'hc')
                    'Portale mają HP. Musimy zniszczyć je jak najszybciej. Im dłużej Portal stoi, tym więcej Addów wychodzi.',
                ]
              },
              {
                'subName': 'Spinning Pain Spike',
                'subImg': 'spinning_pain_spike.jpg',
                'subDesc': [
                  'Missstress of Pain wybiera losową osobę, przerywa Casta i przez chwilę się z tą osobą kręci.',
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
                'text': 'Faza 1',
              },
              {
                'type': 'image',
                'src': selectedType[1] == 'hc'
                    ? 'lord_jaraxxus_hc.png'
                    : 'lord_jaraxxus_nm.png',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Mdpsy stoją pod Bossem, a Rdpsy rozstawiają się dookołam, aby laser nie złapał zbyt wielu osób.'
                    : 'Mdpsy stoją pod Bossem, a Rdpsy gdziekolwiek indziej.',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas losowa osoba dostaje debuff Legion Flame, który sprawia, że wybrana osoba zostawia pod sobą ogień.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Zostawiamy ogień wzdłuż ściany. Nie zostawiamy go pod Bossem, ani w miejscu spawnu Portali i Wulkanów.'
                    : 'Trzeba z tym biegać z daleka od rajdu, dopóki debuff nie zniknie.',
              },
              {
                'type': 'string',
                'text':
                    'Raz na jakiś czas pojawiają się portale i wulkany. Z portali wychodzi Misstress of Pain, a z wulkanów Infernale.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Portale i wulkany mają HP. Musimy zniszczyć je jak najszybciej.',
                },
              {
                'type': 'string',
                'text':
                    'Mistress of Pain czasem wybiera losową osobę, przerywa Casta i przez chwilę się z tą osobą kręci.',
              },
              {
                'type': 'string',
                'text':
                    'Felflame Infernale używają mocne AoE, więc lepiej nie stać przy nich.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Faction Champions',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': sectionData[4],
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Bladestorm',
                'subImg': 'bladestorm.jpg',
                'subDesc': [
                  'Arms Warrior zaczyna się kręcić i latać po całej arenie.',
                  'Zadaje spore obrażenia, więc lepiej się odsunąć.',
                ]
              },
              {
                'subName': 'Charge',
                'subImg': 'charge.jpg',
                'subDesc': [
                  'Arms Warrior szarżuje do losowej osoby.',
                  'Najlepiej użyc teleport albo nitro, aby się odsunąć.',
                ]
              },
              {
                'subName': 'Death Grip',
                'subImg': 'death_grip.jpg',
                'subDesc': [
                  'Frost Death Knight przyciąga losową osobę do siebie.',
                  'Najlepiej użyc teleport albo nitro, aby się odsunąć.',
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
                'text': 'Faza 1',
              },
              {
                'type': 'image',
                'src': 'faction_champions.png',
              },
              {
                'type': 'string',
                'text':
                    'Zamiast Bossa wychodzi cała armia, która wygląda jak inni gracze.',
              },
              {
                'type': 'string',
                'text':
                    'Odsuwaj się od wszystkiego, co Cię goni. Tylko Healer Cię nie skrzywdzi.',
              },
              {
                'type': 'string',
                'text':
                    'Rogue, Warrior, Death Knight i Enhancement Shaman są w stanie zabić Cię bez problemu.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli wsród wrogów jest Restoration Druid (drzewo), możesz rzucać na niego Fear / Banish / Death Coil, aby nie leczył wrogów.',
              },
              {
                'type': 'string',
                'text':
                    'Kolejność zabijania jest zależna od Raid Leadera, ale zaczyna się od Mdpsów lub od Healerów.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Twin Val\'kyr',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': sectionData[4],
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Empowered Light / Darkness',
                'subImg': 'empowered_light.jpg',
                'subDesc': [
                  'Buff, który dostajemy po zebraniu 100 stacków Light / Dark Essence.',
                  'Zwiększa DPS na Bossie w przeciwnym kolorze o 100%.',
                ]
              },
              {
                'subName': 'Light / Dark Essence',
                'subImg': 'light_essence.jpg',
                'subDesc': [
                  'Light Essence redukuje obrażenia zadawane białemu Bossowi, ale absorbuje obrażenia od niego i Light Vortexu.',
                  'Dark Essence redukuje obrażenia zadawane czarnemu Bossowi, ale absorbuje obrażenia od niego i Dark Vortexu.',
                ]
              },
              {
                'subName': 'Shield of Light / Darkness',
                'subImg': 'shield_of_darkness.jpg',
                'subDesc': [
                  'Tarcza, która pojawia się na jednym z Bossów. Wszyscy zmieniają Target na Bossa z tarczą.',
                  'Po zbiciu tarczy, wracamy na swój poprzedni Target. Jeśli nie zdążymy zbić tarczy, Bossy leczą się.',
                ]
              },
              {
                'subName': 'Light / Dark Vortex',
                'subImg': 'dark_vortex.jpg',
                'subDesc': [
                  'Light Vortex zadaje obrażenia wszystkim osobom z czarnym kolorem.',
                  'Dark Vortex zadaje obrażenia wszystkim osobom z białym kolorem.',
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
                'text': 'Faza 1',
              },
              {
                'type': 'image',
                'src': selectedType[1] == 'hc'
                    ? 'twin_valkyr_hc.png'
                    : 'twin_valkyr_nm.png',
              },
              {
                'type': 'string',
                'text':
                    'Pojawiają się 4 Vortexy: 2 białe i 2 czarne. Po kliknięciu dostajesz taki sam kolor, jak Vortex.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Prawie wszyscy biorą kolor biały. Czarny kolor bierze tylko kilka wyznaczonych osób.'
                    : 'Zwykle Rdpsy biorą czarny kolor, Mdpsy biały.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Stackujemy się przy wejściu na arenę. Dookoła nas ustawiają się osoby z czarnym kolorem i łapią wszystkie czarne kulki, a białe przepuszczają do nas.',
                },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Jest to bardzo rasistowska walka, bo bijemy czarnego Bossa.'
                    : 'Jest to bardzo rasistowska walka, bo biali biją czarnego Bossa, a czarni białego.',
              },
              {
                'type': 'string',
                'text':
                    'Po całej arenie latają białe i czarne kulki. Kulki w Twoim kolorze, dają Ci stacki buffa Light / Dark Essence. Kulki w kolorze przeciwnym, zadają Ci obrażenia.',
              },
              {
                'type': 'string',
                'text':
                    'Po zdobyciu 100 stacków buffa, dostajesz na 20 sekund buff Empowered Light / Darkness, który zwiększa Twój DPS na Bossie w przeciwnym kolorze o 100%.',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas Boss Castuje Special Ability. Jeśli jest Shield of Light / Darkness, zmień Target na Bossa, który ma tarczę.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Jeśli Boss Castuje Dark Vortex, użyj Shadow Ward, jak tylko zacznie spadać Twoje życie. Jeśli trzeba, użyj Healthstone.'
                    : 'Jeśi Boss Castuje Light / Dark Vortex, zmień kolor na taki, jak Castowany Vortex.',
              },
              if (selectedType[1] == 'nm')
                {
                  'type': 'string',
                  'text':
                      'Buff Shadow Ward absorbuje część obrażeń od Dark Vortexu, jeśli masz biały kolor.',
                },
            ]
          },
        ]
      },
      {
        'name': 'Anub\'arak',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': sectionData[4],
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Frost Sphere / Permafrost',
                'subImg': 'permafrost.jpg',
                'subDesc': [
                  'Lodowe kule, latające dookoła.',
                  'Po rozwaleniu spadają na ziemię i tworzą plamy lodu.',
                  'Lód nie pozwala dużym Addom się zanurzyć i blokuje kolce podczas zanurzenia.',
                ]
              },
              {
                'subName': 'Spider Frenzy',
                'subImg': 'spider_frenzy.jpg',
                'subDesc': [
                  'Nerubian Borrower daje buff wszystkim takim samym Addom w range 12 yardów.',
                  'Ten buff zwiększa ich Attack i Cast Speed o 100% za każdego takiego Adda w pobliżu.',
                ]
              },
              {
                'subName': 'Penetrating Cold',
                'subImg': 'penetrating_cold.jpg',
                'subDesc': [
                  'Lodowa DoTka, którą dostają losowe osoby.',
                ]
              },
              {
                'subName': 'Pursuing Spikes',
                'subImg': 'pursuing_spikes.jpg',
                'subDesc': [
                  'Boss znajduje się pod ziemią, ale wybiera losową osobę i gonią ją kolce.',
                  'Jeśli kolce dotkną lodu, Boss rozwala lód i zmienia Target.',
                ]
              },
              {
                'subName': 'Acid-Drenched Mandibles',
                'subImg': 'acid_drenched_mandibles.jpg',
                'subDesc': [
                  'Podczas zanurzenia pojawiają się małe Addy (Swarm Scarab).',
                  'Po ugryzieniu nakładają stacki DoTki.',
                ]
              },
              {
                'subName': 'Leeching Swarm',
                'subImg': 'leeching_swarm.jpg',
                'subDesc': [
                  'Boss kradnie część aktualnego HP wszystkim osobom w rajdzie co 1 sekundę.',
                  'Im więcej HP, tym więcej kradnie, więc wszyscy poza osobami z Penetrating Cold mają mało HP, aby nie leczyć Bossa zbyt mocno.',
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
                'text': 'Faza 1',
              },
              {
                'type': 'image',
                'src': selectedType[1] == 'hc'
                    ? 'anub_hc_phase_1.png'
                    : 'anub_nm_phase_1.png',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Wszyscy stoją pod Bossem. Nie zbliżamy się do Block Tanka, który trzyma Addy.'
                    : 'Mdpsy stoją pod Bossem, a Rdpsy nieco dalej.',
              },
              {
                'type': 'string',
                'text':
                    'Dookoła latają lodowe kulki, które po rozwaleniu spadają na ziemię i tworzą plamy lodu. Rozwalaniem kulek zajmują się Hunterzy.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? selectedType[0] == '25'
                        ? 'Co jakiś czas wychodzą 4 Addy. Hunterzy prowadzą je do Block Tanka. Nie ruszamy ich.'
                        : 'Co jakiś czas wychodzą 2 Addy, które idą pod Bossa. Pierwsze Addy zabijamy, a drugie zostawiamy.'
                    : selectedType[0] == '25'
                        ? 'Co jakiś czas wychodzą 2 Addy, które idą pod Bossa. Pierwsze Addy zabijamy, a drugie zostawiamy.'
                        : 'Co jakiś czas wychodzi 1 Add, który idzie pod Bossa. Pierwszego Adda zabijamy, a drugiego zostawiamy.',
              },
              {
                'type': 'image',
                'src': selectedType[1] == 'hc'
                    ? 'anub_hc_submerge.png'
                    : 'anub_nm_submerge.png',
              },
              {
                'type': 'string',
                'text':
                    'Po 2 falach Addów, Boss zanurza się pod ziemię i wybiera Target. Wybrana osoba musi uciekać przed kolcami, które ją gonią.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text': 'Pozostali skupiają się na zabiciu Addów.',
                },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Target prowadzi kolce tak, aby jak najdłużej nie dotykały lodu. Jak kolce są blisko, dostaje Hands of Protection. Wchodzimy na lód około 2-3 sekundy przed końcem i wtedy Boss zmienia Target.'
                    : 'Nie można prowadzić kolców przez rajd, bo jeszcze ktoś zginie. Jak kolce zahaczą o lód, Boss wybiera nowy Target, a lód znika.',
              },
              {
                'type': 'string',
                'text':
                    'Póki Boss jest pod ziemią, dookoła wychodzą małe Addy (Swarm Scarab), które trzeba zabijać. Każde ugryzienie daje 1 stack DoTki, więc lepiej nie przesadzać.',
              },
              {
                'type': 'string',
                'text':
                    'Po jakimś czasie Boss się wynurza, małe Addy znikają, a duże Addy znowu zaczynają wychodzić.',
              },
              {
                'type': 'image',
                'src': selectedType[1] == 'hc'
                    ? 'anub_hc_phase_2.png'
                    : 'anub_nm_phase_2.png',
              },
              {
                'type': 'header',
                'text': 'Faza 2',
              },
              {
                'type': 'string',
                'text': 'Po zbiciu HP Bossa do 30%, zaczyna się faza 2.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Addy nadal wychodzą, a losowe osoby dostają debuff Penetrating Cold, który zadaje im obrażenia.'
                    : 'Addy przestają wychodzić, a losowe osoby dostają debuff Penetrating Cold, który zadaje im obrażenia.',
              },
              {
                'type': 'string',
                'text':
                    'Boss Castuje Leeching Swarm, kradnąc część aktualnego HP wszystkim osobom w rajdzie co 1 sekundę.',
              },
              {
                'type': 'string',
                'text':
                    'Im więcej HP, tym więcej kradnie, więc wszyscy poza osobami z Penetrating Cold mają mało HP, aby nie leczyć Bossa zbyt mocno.',
              },
            ]
          },
        ]
      },
    ];
    return tocList;
  }
}
