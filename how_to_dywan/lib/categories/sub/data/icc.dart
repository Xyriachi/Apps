class ICC {
  getIccList(selectedType, sectionData) {
    List iccList = [
      {
        'name': 'Lord Marrowgar',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Bone Spike Graveyard',
                'subImg': 'bone_spike_graveyard.jpg',
                'subDesc': [
                  selectedType[0] == '25'
                      ? 'Boss wybiera 3 osoby i nabija je na kolce.'
                      : 'Boss wybiera 1 osobę i nabija ją na kolec.',
                  'Kolce zadają obrażenia wybranym osobom, póki nie zostaną zniszczone.',
                ]
              },
              {
                'subName': 'Coldflame',
                'subImg': 'coldflame.jpg',
                'subDesc': [
                  'Boss tworzy lodowy ogień w linii prostej, zaczynając od siebie.',
                  'Ogień nie pojawia się pod samym Bossem.',
                  'Ogień zadaje spore obrażenia, więc lepiej w nim nie stać.',
                ]
              },
              {
                'subName': 'Bone Storm',
                'subImg': 'bone_storm.jpg',
                'subDesc': [
                  'Boss kręci się w miejscu, zadając obrażenia wszystkim wokół. Im bliżej Bossa, tym większe obrażenia.',
                  'Boss leci do osoby, znajdującej się najdalej od niego, ale nie za daleko, po czym kręci się przez chwilę i leci do następnej osoby.',
                  'Boss tworzy lodowy ogień w kształcie krzyża.',
                  if (selectedType[1] == 'hc')
                    'Podczas Bone Stormu pojawiają się też kolce.',
                ]
              },
              {
                'subName': 'Bone Slice',
                'subImg': 'bone_slice.jpg',
                'subDesc': [
                  'Boss zadaje ogromne obrażenia osobie przed sobą.',
                  'Jeśli są 2 osoby, obrażenia są dzielone między nimi.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {
                'type': 'header',
                'text': 'Faza 1:',
              },
              {
                'type': 'image',
                'src': 'lord_marrowgar_phase_1.png',
              },
              {
                'type': 'string',
                'text':
                    'Po kliknięciu na Bossa, pojawi się czerwony okrąg. Na środku tego okręgu nie pojawia się ogień.',
              },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Co jakiś czas Boss wybiera 1 osobę i nabija ją na kolec, ale jego zniszczenie, to robota Mdpsów.'
                    : 'Co jakiś czas Boss wybiera 3 osoby i nabija je na kolec, ale ich zniszczenie, to robota Mdpsów.',
              },
              {
                'type': 'string',
                'text': 'Pomagaj z kolcami tylko jeśli zbyt wolno padają.',
              },
              {
                'type': 'string',
                'text':
                    'Stój pod Bossem, aby nie palić się w ogniu i żeby kolce były zestackowane.',
              },
              {'type': 'header', 'text': 'Bonestorm:'},
              {
                'type': 'image',
                'src': 'lord_marrowgar_bone_storm.png',
              },
              {
                'type': 'string',
                'text':
                    'Boss będzie się kręcił i latał między Tankiem i Hunterem. Pomiędzy tymi miejscami stoi rajd.',
              },
              {
                'type': 'string',
                'text':
                    'Nie za blisko, aby nie otrzymywać zbyt dużych obrażeń i nie za daleko, aby Boss nie poleciał do Nas.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Pamiętaj, że podczas Bone Stormu nadal pojawiają się kolce. Lepiej nie stać zbyt daleko od rajdu.',
                },
            ]
          },
        ]
      },
      {
        'name': 'Lady Deathwisper',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Death and Decay',
                'subImg': 'death_and_decay.jpg',
                'subDesc': [
                  'Boss tworzy zieloną plamę na ziemi, która zadaje obrażenia graczom, stojącym w niej.',
                ]
              },
              if (selectedType[0] == '25' ||
                  (selectedType[0] == '10' && selectedType[1] == 'hc'))
                {
                  'subName': 'Dominate Mind',
                  'subImg': 'dominate_mind.jpg',
                  'subDesc': [
                    selectedType[0] == '25' && selectedType[1] == 'hc'
                        ? 'Boss wybiera 3 losowe osoby, które po chwili zostają opętane i zaczynają atakować swoich sojuszników.'
                        : 'Boss wybiera 1 losową osobę, która po chwili zostaje opętana i zaczyna atakować swoich sojuszników.',
                    'Efekt trwa 12 sekund.',
                  ]
                },
              {
                'subName': 'Curse of Torpor',
                'subImg': 'curse_of_torpor.jpg',
                'subDesc': [
                  'Adherent rzuca debuff na losową osobę. Debuff ten zwiększa cooldown zaklęć o 15 sekund.',
                  'Efekt trwa 15 sekund.'
                ]
              },
              {
                'subName': 'Summon Vengeful Shade',
                'subImg': 'summon_vengeful_shade.jpg',
                'subDesc': [
                  selectedType[0] == '10'
                      ? 'Boss przyzywa 1 ducha, który leci do losowo wybranej osoby.'
                      : 'Boss przyzywa 3 duchy, które lecą do losowo wybranych osób.',
                  selectedType[1] == 'hc'
                      ? 'Duchy wybuchają po złapaniu targetu, zadając obrażenia targetowi.'
                      : 'Duchy wybuchają po złapaniu targetu, zadając ogromne obrażenia wszystkim w pobliżu.',
                  'Duchy zmieniają target, jeśli padnie, zanim go złapią.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {
                'type': 'header',
                'text': 'Faza 1:',
              },
              {
                'type': 'image',
                'src': 'lady_deathwhisper_phase_1.png',
              },
              {
                'type': 'string',
                'text':
                    'Mdpsy stoją pod Bossem, a Rdpsy między schodami, a max range (fioletowa strefa na rysunku). Najlepiej stać lekko z lewej lub z prawej strony, aby mieć bliżej Addy.',
              },
              {
                'type': 'string',
                'text':
                    'Jak wyjdą Addy z Twojej strony, rzuć na nie Corruption i bij Bossa.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli jest problem z Fanaticami, pomóż z nimi. Nie bij ulepszonych Adherentów, bo odbijają Spelle.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli zielona plama pojawi się pod Twoimi nogami, a nie ufasz Healerom, wyjdź z niej, aby nie dostawać obrażeń.',
              },
              {
                'type': 'header',
                'text': 'Faza 2:',
              },
              {
                'type': 'image',
                'src': selectedType[0] == '10'
                    ? 'lady_deathwhisper_10_phase_2.png'
                    : 'lady_deathwhisper_25_phase_2.png',
              },
              {
                'type': 'string',
                'text':
                    'Na początku fazy 2, Tank może mieć problem z utrzymaniem aggro, więc trzymaj Soulshattera pod ręką.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Pamiętaj, że Addy wychodzą przez całą walkę. Jeśli się pojawią, to utrzymaj Corruption na Bossie i pomóż z Addami.',
                },
              {
                'type': 'string',
                'text':
                    'Jeśli goni Cię Duch, uciekaj od niego, bo wybuchnie, jak Cię złapie.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Gunship Battle',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Below Zero',
                'subImg': 'below_zero.jpg',
                'subDesc': [
                  'Wszystkie działa zostają zamrożone, a na środku statku przeciwnika pojawia się mag.',
                  'Efekt znika po zabiciu go.',
                ]
              },
              {
                'subName': 'Rocket Artillery',
                'subImg': 'rocket_artillery.jpg',
                'subDesc': [
                  'Na ziemi pojawia się duży znak, w który po chwili trafi rakieta.',
                  'Rakieta zadaje obrażenia i odrzuca graczy. Może nawet zrzucić ze statku.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {
                'type': 'image',
                'src': 'gunship.png',
              },
              {
                'type': 'string',
                'text':
                    'Mdpsy zajmują wszystkie działa, a Rdpsy stoją przy krawędzi statku, aby mieć w zasięgu Addy na wrogim statku.',
              },
              {
                'type': 'string',
                'text':
                    'Zabijaj Riflemanów / Axethrowerów na wrogim statku, aby nie zdobyli zbyt dużo doświadczenia. Jeśli ich zostawisz, będą zadawać coraz większe obrażenia.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli Mdpsy nie radzą sobie z Addami, możesz im pomóc.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli pod Twoimi nogami pojawi się znak, wyjdź z niego. Za chwilę spadnie tam rakieta, zada obrażenia wszystkim w pobliżu i odrzuci ich.',
              },
              {'type': 'header', 'text': 'Below Zero:'},
              {
                'type': 'image',
                'src': 'gunship_below_zero.png',
              },
              {
                'type': 'string',
                'text':
                    'Działa sojuszników zostają zamrożone, a na wrogim statku pojawia się Mag. Użyj plecaka, aby przeskoczyc na drugi statek, ale nie skacz przed Tankiem!',
              },
              {
                'type': 'string',
                'text':
                    'Nie skacz obok Muradina (z prawej strony), bo plecak zadaje obrażenia AoE i możesz przebić Aggro.',
              },
              {
                'type': 'string',
                'text':
                    'Wróć na statek sojuszników, jak Magowi zostanie 20% HP. DoTki go dobiją.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Deathbringer Saurfang',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Mark of the Fallen Champion',
                'subImg': 'mark_of_the_fallen_champion.jpg',
                'subDesc': [
                  'Boss rzuca debuff na losową osobę.',
                  'Debuff zadaje spore obrażenia.',
                  'Jeśli osoba z debuffem umiera, Boss leczy się.',
                ]
              },
              {
                'subName': 'Call Blood Beast',
                'subImg': 'call_blood_beast.jpg',
                'subDesc': [
                  selectedType[0] == '10'
                      ? 'Boss przyzywa 2 bestie.'
                      : 'Boss przyzywa 5 bestii.',
                  'Bestie powinny zostać zabite przez Rdpsy, zanim kogoś dotkną.',
                ]
              },
              {
                'subName': 'Blood Nova',
                'subImg': 'blood_nova.jpg',
                'subDesc': [
                  'Boss wybiera losową osobę i zadaje jej obrażenia.',
                  'Obrażenia dostają również osoby w range 12 yardów od wybranej osoby.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {
                'type': 'image',
                'src': selectedType[0] == '10'
                    ? 'deathbringer_saurfang_10.png'
                    : 'deathbringer_saurfang_25.png',
              },
              {
                'type': 'string',
                'text':
                    'Kolorami zaznaczone są miejsca dla Rdpsów i miejsca spawnu Bestii. Kolory łączą w pary Rdpsów z Bestiami, które mają zabić.',
              },
              {
                'type': 'string',
                'text':
                    'Pilnuj range 12 yardów, aby Blood Nova nie zadawała innym obrażeń.',
              },
              selectedType[0] == '10'
                  ? {
                      'type': 'string',
                      'text':
                          'Boss co jakiś czas będzie przyzywał 2 Bestie. Rzuć Corruption na obie Bestie i wróć do bicia Bossa.',
                    }
                  : {
                      'type': 'string',
                      'text':
                          'Boss co jakiś czas będzie przyzywał 5 Bestii. Rzuć Corruption na 3-5 Bestii i wróć do bicia Bossa.',
                    },
              {
                'type': 'string',
                'text':
                    'Jeśli Boss rzuci na Ciebie Mark of the Fallen Champion, zmień buffa na Demon Armor, aby Healerom było łatwiej utrzymać Cię przy życiu.',
              },
              {
                'type': 'string',
                'text':
                    'Możesz dać teleport przy barierkach, aby uciekać, jeśli Bestia Cię goni.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Festergut',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Gas Spore',
                'subImg': 'gas_spore.jpg',
                'subDesc': [
                  selectedType[0] == '10'
                      ? 'Boss wybiera 2 osoby i nakłada na nich debuff.'
                      : 'Boss wybiera 3 osoby i nakłada na nich debuff.',
                  'Osoby z debuffem muszą się rozdzielić, aby każdy stacking point miał tylko 1 osobę z debuffem.',
                ]
              },
              {
                'subName': 'Pungent Blight',
                'subImg': 'pungent_blight.jpg',
                'subDesc': [
                  'Boss wybucha, zadając ogromne obrażenia wszystkim na sali.',
                  'Obrażenia z wybuchu mogą zostać zmniejszone przez stacki debuffa Gas Spore.',
                ]
              },
              {
                'subName': 'Vile Gas',
                'subImg': 'vile_gas.jpg',
                'subDesc': [
                  selectedType[0] == '10'
                      ? 'Boss wybiera 1 losową osobę i nakłada na nią debuff, który na chwilę wyłącza z walki tę osobę.'
                      : 'Boss wybiera 3 losowe osoby i nakłada na nich debuff, który na chwilę wyłącza z walki te osoby.',
                  'Debuff zadaje obrażenia wszystkim graczom w pobliżu.',
                  'Osoba z debuffem może zarazić innych w range 8 yardów.',
                ]
              },
              if (selectedType[1] == 'hc')
                {
                  'subName': 'Malleable Goo',
                  'subImg': 'malleable_goo.jpg',
                  'subDesc': [
                    'Boss rzuca kulę szlamu w losową osobę.',
                    'Pod targetem pojawia się zielona plama, w którą za chwilę trafi kula szlamu i wybuchnie.',
                    'Wybuch zadaje obrażenia i wydłuża Cast Speed o 200% wszystkim w range 5 yardów od miejsca wybuchu.',
                  ]
                },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {
                'type': 'image',
                'src': selectedType[1] == 'nm'
                    ? selectedType[0] == '10'
                        ? 'festergut_10_nm.png'
                        : 'festergut_25_nm.png'
                    : selectedType[0] == '10'
                        ? 'festergut_10_hc.png'
                        : 'festergut_25_hc.png',
              },
              {
                'type': 'string',
                'text':
                    'Mdpsy i część Healerów idą pod Bossa, a reszta rozbiega się po sali, utrzymując range 8 yardów, aby nie zarażać debuffem Vile Gas.',
              },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Boss co jakiś czas rzuci Gas Spore na 2 losowe osoby. Wybrane osoby muszą rozstawić się tak, aby 1 osoba była wśród Mdpsów i 1 osoba na stacking poincie w Rdpsach.'
                    : 'Boss co jakiś czas rzuci Gas Spore na 3 losowe osoby. Wybrane osoby muszą rozstawić się tak, aby 1 osoba była wśród Mdpsów i 2 osoby na różnych stacking pointach w Rdpsach.',
              },
              {
                'type': 'string',
                'text': 'Nie pozwól, aby 2 osoby z Gas Spore były obok siebie.',
              },
              {
                'type': 'string',
                'text':
                    'Po 3 falach Gas Sporów, Boss castuje Pungent Blight. Chwilę przed końcem, użyj Shadow Ward, aby zaabsorbować część obrażeń.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Jeśli pojawi się mała, zielona plama, za chwile trafi tam Malleable Goo. Jeśli jesteś w range 5 yardów od tej plamy, odsuń się i zaczekaj aż wybuchnie.',
                },
            ]
          },
        ]
      },
      {
        'name': 'Rotface',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Ooze Flood',
                'subImg': 'ooze_flood.jpg',
                'subDesc': [
                  'Co jakiś czas, ćwierć sali zostaje zalana szlamem, który zadaje obrażenia i nakłada stacki debuffa, spowalniającego gracza.',
                  'Zalana zostaje tylko zewnętrzna część sali.',
                ]
              },
              {
                'subName': 'Mutated Infection',
                'subImg': 'mutated_infection.jpg',
                'subDesc': [
                  'Boss rzuca debuff na losową osobę.',
                  'Osoba z debuffem dostaje obrażenia, a po otrzymaniu dispella wyskakuje z niej mały Ooze.',
                  'Mały Ooze powinien być połączony z dużym Oozem.',
                  'Jeśli nie ma dużego Ooza, zaczekaj, aż będą 2 małe Oozy i połącz je ze sobą.',
                  'Osoba targetowana przez Ooza, powinna stać bokiem lub tyłem do rajdu, aby nie zostawić zielonej plamy pod nogami innych graczy.',
                ]
              },
              {
                'subName': 'Unstable Ooze Explosion',
                'subImg': 'unstable_ooze_explosion.jpg',
                'subDesc': [
                  'Duży Ooze wybucha, a jego fragmenty lecą w miejsca, w których stali gracze w momencie wybuchu.',
                  'Każdy fragment zadaje obrażenia wszystkim w range 6 yardów.',
                ]
              },
              if (selectedType[1] == 'hc')
                {
                  'subName': 'Vile Gas',
                  'subImg': 'vile_gas.jpg',
                  'subDesc': [
                    selectedType[0] == '10'
                        ? 'Boss wybiera 1 losową osobę i nakłada na nią debuff, który na chwilę wyłącza z walki tę osobę.'
                        : 'Boss wybiera 3 losowe osoby i nakłada na nie debuff, który na chwilę wyłącza z walki te osoby.',
                    'Debuff zadaje obrażenia wszystkim graczom w pobliżu.',
                    'Osoba z debuffem może zarazić innych w range 8 yardów.',
                  ]
                },
              {
                'subName': 'Slime Spray',
                'subImg': 'slime_spray.jpg',
                'subDesc': [
                  'Boss pluje szlamem w losowym kierunku, zadając obrażenia wszystkim przed sobą.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              if (selectedType[1] == 'hc')
                {
                  'type': 'image',
                  'src': 'rotface_hc.png',
                },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Ustaw się między zewnętrznym i wewnętrznym pierścieniem (tym z czaszek na podłodze) i trzymaj range 8 yardów. Nie przekraczaj wewnętrznego pierścienia.',
                },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Co jakiś czas jedna ćwiartka pomieszczenia zostaje zalana zielonym szlamem. Jeśli po Twojej stronie z kranów na ścianie leci szlam, uciekaj na inną ćwiartkę.',
                },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Jeśli dostaniesz debuff Vile Gas, przez chwilę nie możesz bić. Tym debuffem zarażasz wszystkich w range 8 yardów, więc pilnuj range.',
                },
              {
                'type': 'image',
                'src': selectedType[1] == 'nm'
                    ? 'rotface_nm_mutated_plague.png'
                    : 'rotface_hc_mutated_plague.png',
              },
              if (selectedType[1] == 'nm')
                {
                  'type': 'string',
                  'text':
                      'Ustaw się za plecami Bossa i chowaj się za jego plecami, jeśli obróci się w inną stronę.',
                },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Jeśli dostaniesz debuff Mutated Infection, biegnij do Off Tanka, krążącego dookoła Rdpsów. Nie przebiegaj przez środek. Po dispellu wyskoczy z Ciebie mały Ooze, którego łączysz z dużym Oozem.'
                    : 'Jeśli dostaniesz debuff Mutated Infection, biegnij do Off Tanka, krążącego dookoła Rdpsów. Po dispellu wyskoczy z Ciebie mały Ooze, którego łączysz z dużym Oozem.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli nie ma dużego Ooza, połącz 2 małe Oozy. Jeśli małego Ooza też nie ma, zaczekaj na niego i patrz się w ścianę.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Target Ooza zostawia przed sobą plamy zielonego szlamu, więc nie patrz w stronę Bossa, jeśli goni Cię Ooze.',
                },
              {
                'type': 'string',
                'text':
                    'Po 5 połączeniach, duży Ooze wybucha. Po wybuchu małe kulki szlamu lecą w miejsca, w których stali gracze, więc przesuń się tam, gdzie nikt nie stał.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Professor Putricide',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Slime Puddle',
                'subImg': 'slime_puddle.jpg',
                'subDesc': [
                  'Boss rzuca 2 butelki z zielonym szlamem w losowe osoby.',
                  'Butelki tworzą zielone plamy, które się powiększają z czasem.',
                ]
              },
              {
                'subName': 'Unstable Experiment',
                'subImg': 'unstable_experiment.jpg',
                'subDesc': [
                  'Boss tworzy małego Ooza, który biegnie do losowej osoby.',
                  'Target zielonego Ooza nie może się ruszać. Jeśli Ooze dotknie target, to wybucha, zadając spore obrażenia i odrzucając wszystkich, stojących w pobliżu. Otrzymane obrażenia dzielą się na wszystkich graczy w pobliżu.',
                  'Target pomarańczowego Ooza musi uciekać, aby Ooze go nie dotknął. Jeśli Ooze dotknie target, to wybucha, zabijając cały rajd.',
                  'Oba Oozy po 20 sekundach zmieniają targety.',
                ]
              },
              {
                'subName': 'Malleable Goo',
                'subImg': 'malleable_goo.jpg',
                'subDesc': [
                  selectedType[0] == '10'
                      ? 'Boss rzuca kule szlamu w 1 losową osobę.'
                      : 'Boss rzuca kule szlamu w 3 losowe osoby.',
                  'Kule odbijają się 2 razy od podłogi, a za 3 razem wybuchają.',
                  'Wybuch zadaje obrażenia i wydłuża Cast Speed o 200% wszystkim w range 5 yardów od miejsca wybuchu.',
                ]
              },
              {
                'subName': 'Choking Gas Bomb',
                'subImg': 'choking_gas_bomb.jpg',
                'subDesc': [
                  'Boss tworzy koło siebie 2 małe pomarańczowe plamy.',
                  'Plamy zadają spore obrażenia i wybuchają po 20 sekundach.',
                ]
              },
              if (selectedType[1] == 'hc')
                {
                  'subName': 'Unbound Plague',
                  'subImg': 'unbound_plague.jpg',
                  'subDesc': [
                    'Boss nakłada debuff na losową osobę.',
                    'Osoba z debuffem otrzymuje obrażenia co 1 sekundę i zabija gracza, jeśli nie przekaże debuffa dalej.',
                    'Po przekazaniu plagi na inną osobę, gracz otrzymuje 1 stack debuffa, zwiększającego otrzymywane obrażenia z plagi i skraca czas, po którym trzeba oddać plagę, żeby nie umrzeć. Ten debuff trwa 1 minutę',
                    'Pplagę powinno się oddać po około 6-8 sekundach, a każdy stack debuffa skraca ten czas.',
                  ]
                },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {
                'type': 'image',
                'src': 'professor_putricide_fight_start.png',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli Boss castuje Unstable Experiment, po chwili pojawi się Ooze. Pierwszy Ooze jest zielony, drugi pomarańczowy i tak na zmianę.',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas Boss rzuci butelki w 2 losowe osoby, tworząc zielone plamy szlamu. Plamy powiększają się, ale Off Tank może je zmniejszyć.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Co jakiś czas losowa osoba dostaje debuff Unbound Plague. Debuff przechodzi na osobę w range 3 yardów. Przekaż go dalej po 6-8 sekundach.',
                },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Po oddaniu plagi, dostajesz 1 stack debuffa Plague Sickness, który zwiększa otrzymywane obrażenia od Unbound Plague. Z każdym stackiem skraca się czas, po którym musisz oddać plagę.',
                },
              {
                'type': 'image',
                'src': 'professor_putricide_green_ooze.png',
              },
              {
                'type': 'string',
                'text':
                    'Target zielonego Ooza nie może się ruszać, ale Warlock może użyć teleport. Target nadal może castować.',
              },
              {
                'type': 'string',
                'text':
                    'Stackujemy się przy Targecie na zmianę od strony stołu (przy Targecie) i od strony środka (5 yardów od Targetu). W ten sposób lecimy do stołu lub na środek.',
              },
              {
                'type': 'image',
                'src': 'professor_putricide_orange_ooze.png',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli wybrał Cię pomarańczowy Ooze, uciekaj od niego tak, jak pokazuje strzałka na zdjęciu. Omijaj plamy, jeśli są na Twojej drodze.',
              },
              {
                'type': 'string',
                'text':
                    'Po jakimś czasie oba Oozy zmieniają Target, więc staraj się nie stać przy nich, bo możesz nie zdążyć zareagować. Zmianę Targetu może też przyspieszyć Hand of Protection rzucone na aktualny Target.',
              },
              if (selectedType[1] == 'hc')
                {'type': 'header', 'text': 'Faza 1.5:'},
              if (selectedType[1] == 'hc')
                {
                  'type': 'image',
                  'src': 'professor_putricide_hc_transition.png',
                },
              if (selectedType[1] == 'hc' && selectedType[0] == '25')
                {
                  'type': 'string',
                  'text':
                      'Po zbiciu HP Bossa do 80%, zostają przyzwane 2 dodatkowe Oozy: zielony i pomarańczowy. Połowa rajdu dostaje debuff z zielonym kolorem, a druga połowa z pomarańczowym. Można bić tylko Ooza w swoim kolorze.',
                },
              if (selectedType[1] == 'hc' && selectedType[0] == '10')
                {
                  'type': 'string',
                  'text':
                      'Po zbiciu HP Bossa do 80%, zostają przyzwane 2 dodatkowe Oozy: zielony i pomarańczowy.',
                },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Nie prowadź pomarańczowego Ooza przez target zielonego Ooza, bo możesz zostać odrzucony i pomarańczowy Ooze Cię złapie.',
                },
              {'type': 'header', 'text': 'Faza 2:'},
              {
                'type': 'string',
                'text':
                    'W tej fazie jest wszystko co w fazie 1 oraz Malleable Goo i Chocking Gas Bomb.',
              },
              selectedType[0] == '25'
                  ? {
                      'type': 'string',
                      'text':
                          'Co jakiś czas Boss rzuci Malleable Goo na 3 losowych Rdpsów. Jeśli Cię trafi, zada Ci spore obrażenia i wydłuży Cast Time o 200%.',
                    }
                  : {
                      'type': 'string',
                      'text':
                          'Co jakiś czas Boss rzuci Malleable Goo na 1 losowego Rdpsa. Jeśli Cię trafi, zada Ci spore obrażenia i wydłuży Cast Time o 200%.',
                    },
              {
                'type': 'string',
                'text':
                    'Main tank prowadzi Bossa tak, aby na timerze Chocking Gas Bomb, Boss był przy ścianie. Na ziemi pojawiają się 2 małe, pomarańczowe plamy z butelkami na środku. Uciekaj od nich.',
              },
              if (selectedType[1] == 'hc')
                {'type': 'header', 'text': 'Faza 2.5:'},
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'To samo co w fazie 1.5. Ta faza zaczyna się po zbiciu HP Bossa do 35%.',
                },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Powoli zaczynaj się stackować z Rdpsami, aby lepiej zarządzać tym, gdzie pojawi się plama szlamu.',
                },
              {'type': 'header', 'text': 'Faza 3:'},
              {
                'type': 'image',
                'src': 'professor_putricide_phase_3.png',
              },
              {
                'type': 'string',
                'text':
                    'W tej fazie jest wszystko co w fazie 2, ale nie pojawiają się nowe Oozy.',
              },
              {
                'type': 'string',
                'text':
                    'Zestackuj się z Rdpsami i staraj się stać przy plamach szlamu. Stackowanie się pozwala na lepsze zarządzanie miejscem.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli Malleable Goo leci w stronę zestackowanych Rdpsów, zwykle ucieka się w lewo lub w prawo. Po wybuchu, wróć na miejsce.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Blood Prince Council',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Kinetic Bomb',
                'subImg': 'kinetic_bomb.jpg',
                'subDesc': [
                  'Kula, która powoli spada na ziemię, a po dotknięciu podłogi, odrzuca wszystkich graczy.',
                  'Kule można podbić, zadając im obrażenia, zanim spadną na ziemię. Zwykle podbija je Hunter.',
                  'Kule nie mogą być podbijane za pomocą DoTek.',
                ]
              },
              {
                'subName': 'Shock Vortex',
                'subImg': 'shock_vortex.jpg',
                'subDesc': [
                  'Na ziemi pojawia się małe tornado, które po chwili się aktywuje i odrzuca pobliskich graczy.',
                ]
              },
              {
                'subName': 'Empowered Shock Vortex',
                'subImg': 'shock_vortex.jpg',
                'subDesc': [
                  'Valanar rzuca czar na wszystkich graczy, którzy po chwili odrzucają graczy w range 12 yardów.',
                  'Czar ten działa jak Shock Vortex, ale nie zostaje na ziemi i pojawia się pod każdym graczem.',
                ]
              },
              {
                'subName': 'Conjure Empowered Flame',
                'subImg': 'conjure_empowered_flame.jpg',
                'subDesc': [
                  'Taldaram tworzy ulepszoną kulę ognia, która leci do losowej osoby.',
                  'Kula zmniejsza się po przeleceniu obok innego gracza.',
                  'Im mniejsza kula, tym mniejsze obrażenia zadaje po trafieniu w Target.',
                ]
              },
              if (selectedType[1] == 'hc')
                {
                  'subName': 'Shadow Prison',
                  'subImg': 'shadow_prison.jpg',
                  'subDesc': [
                    'Każda sekunda ruchu nakłada 1 stack DoTki, która zadaje obrażenia co 1 sekundę.',
                  ]
                },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {
                'type': 'image',
                'src': 'blood_prince_council_valanar.png',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli aktywny jest Valanar, co jakiś czas będzie castował Empowered Shock Vortex. Trzymaj range 12 yardów.',
              },
              {
                'type': 'string',
                'text':
                    'Środek sali jest zarezerwowany dla Healerów, platforma dla Mdpsów, a boki dla Rdpsów.',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas będą pojawiać się Kinetic Bomby w losowych miejscach. Jeśli jest ryzyko, że dotkną ziemi, użyj Searing Pain, aby je podbić. Kinetic Bomby pojawiają się przez całą walkę.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Za każdą 1 sekundę ruchu dostajesz 1 stack debuffa Shadow Prison. Jeśli masz zbyt dużo stacków, nie ruszaj się przez chwilę, aby debuff zniknął.',
                },
              {
                'type': 'image',
                'src': 'blood_prince_council_taldaram.png',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli aktywny jest Taldaram, co jakiś czas będzie castował Conjure Empowered Flame, dlatego Rdpsy i Healerzy stackują się lekko z prawej strony.',
              },
              {
                'type': 'string',
                'text':
                    'Target musi uciekać tak, aby kula, która go goni, zahaczyła o jak najwięcej osób. Jeśli kula się zmniejszy, należy złapać ją conajmniej 10 yardów za rajdem.',
              },
              {
                'type': 'string',
                'text':
                    'Czasem na ziemi pojawiają się małe tornada (Shock Vortex). Uciekaj od nich, bo po chwili się aktywują i odrzucają wszystkich w pobliżu.',
              },
              {
                'type': 'image',
                'src': 'blood_prince_council_keleseth.png',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli aktywny jest Keleseth, po prostu nie używaj AoE i patrz pod nogi, aby nie wejść w Shock Vortex.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli fioletowa kulka przyleci do Ciebie, podbiegnij do Kelesetha, aby Tank mógł zabrać Ci kulkę.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Blood Queen Lana\'thel',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Vampiric Bite',
                'subImg': 'vampiric_bite.jpg',
                'subDesc': [
                  'Boss gryzie osobę, która jest na 3 miejscu pod względem Threatu.',
                  'Ugryziona osoba dostaje debuff, który zwiększa zadawane obrażenia o 100% i sprawia, że gracz nie generuje Threatu.',
                  'Co 1 minutę osoba z debuffem musi ugryźć inną osobę, a jeśli tego nie zrobi, zostaje opętana i zaczyna zabijać sojuszników.',
                ]
              },
              {
                'subName': 'Swarming Shadows',
                'subImg': 'swarming_shadows.jpg',
                'subDesc': [
                  'Boss rzuca debuff na losową osobę, pod którą po chwili zaczyna pojawiać się ogień.',
                  'Ogień zadaje obrażenia, dlatego powinno się go zostawiać wzdłuż ściany.',
                ]
              },
              {
                'subName': 'Pact of the Darkfallen',
                'subImg': 'pact_of_the_darkfallen.jpg',
                'subDesc': [
                  selectedType[0] == '10'
                      ? 'Boss wybiera 2 losowe osoby, i łączy je czerwonymi linkami.'
                      : 'Boss wybiera 3 losowe osoby, i łączy je czerwonymi linkami.',
                  'Osoby te muszą się jak najszybciej spotkać, aby linki zniknęły.',
                  'Linki zadają obrażenia osobom w pobliżu.',
                ]
              },
              {
                'subName': 'Incite Terror',
                'subImg': 'incite_terror.jpg',
                'subDesc': [
                  'Boss biegnie na środek sali, wzlatuje w powietrze i nakłada Fear na wszystkich graczy.',
                  'Po zniknięciu Feara trzeba utrzymać range 8 yardów, a Boss zadaje wszystkim obrażenia. Im więcej graczy w pobliżu, tym większe obrażenia.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {
                'type': 'image',
                'src': 'blood_queen_lanathel_phase_1.png',
              },
              {
                'type': 'string',
                'text':
                    'Ustaw się tak, aby mieć bliżej do osoby, która ma Cię ugryźć. Środek jest zarezerwowany dla Healerów, a platforma dla Mdpsów.',
              },
              {
                'type': 'string',
                'text':
                    'Sprawdzaj, kiedy kończy się debuff na ugryzionych osobach, aby wiedzieć, kiedy Twoja kolej. (DBM wyświetla tabelkę z ugryzionymi osobami i czasem do końca debuffa).',
              },
              {
                'type': 'string',
                'text':
                    'Około 5-10 sekund przed końcem debuffa u osoby, która ma Ciebie ugryźć, podbiegnij do niej, stań przed nią i bij Bossa. Jak zostaniesz ugryziony, wróć na miejsce.',
              },
              {
                'type': 'string',
                'text':
                    'Chwilę przed końcem debuffa, osoba, którą masz ugryźć, powinna podbiec do Ciebie. Jeśli tego nie zrobi, a wiesz gdzie jest, szybko podbiegnij i ugryź. W ostateczności, ugryź Healera.',
              },
              {
                'type': 'image',
                'src': selectedType[0] == '25'
                    ? 'blood_queen_lanathel_25_mechanics.png'
                    : 'blood_queen_lanathel_10_mechanics.png',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas Boss rzuca Swarming Shadows na losową osobę, która powinna biec do najbliższej ściany i wzdłuż ściany oddalać się od Bossa.',
              },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Boss wybiera 2 losowe osoby i łączy je za pomocą czerwonej linki. Osoby te muszą się zestackować jak najszybciej, aby połączenie zniknęło.'
                    : 'Boss wybiera 3 losowe osoby i łączy je za pomocą czerwonej linki. Osoby te muszą się zestackować jak najszybciej, aby połączenie zniknęło. Najlepiej biec w stronę środka trójkąta, aby spotkać się w połowie drogi.',
              },
              {
                'type': 'string',
                'text':
                    '2 razy w trakcie walki Boss używa Incite Terror. Biegnie wtedy na środek pomieszczenia, wzlatuje w powietrze i rzuca Fear na cały raid.',
              },
              {
                'type': 'string',
                'text':
                    'Jak skończy się Fear, ustaw się na range 8 yardów, ale tak, aby mieć range na Bossa. Mdpsy muszą się dostosować do Rdpsów.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Valithria Dreamwalker',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Mana Void',
                'subImg': 'mana_void.jpg',
                'subDesc': [
                  'Fioletowa kula, która kradnie manę, jeśli się do niej podejdzie.',
                ]
              },
              {
                'subName': 'Column of Frost',
                'subImg': 'column_of_frost.jpg',
                'subDesc': [
                  'Biała plama, która po chwili wyrzuca w powietrze wszystkich graczy, stojących na niej.',
                ]
              },
              {
                'subName': 'Lay Waste',
                'subImg': 'lay_waste.jpg',
                'subDesc': [
                  'Blazing Skeleton zaczyna czar AoE, który zadaje obrażenia wszystkim graczom i Bossowi.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {
                'type': 'image',
                'src': selectedType[1] == '10'
                    ? 'valithria_dreamwalker_10.png'
                    : 'valithria_dreamwalker_25.png',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas będą pojawiać się różne Addy. Priorytet zabijania: Blazing Skeleton > Risen Archmage > Gluttonous Abomination > Suppresser.',
              },
              {
                'type': 'string',
                'text':
                    'Na Blazing Skeletony i Risen Archmagów rzuć od razu Curse of Tongues i dopiero wtedy zacznij je bić. Jeśli wyjdzie Blazing Skeleton, zostaw wszystko co robisz i leć do niego.',
              },
              {
                'type': 'string',
                'text':
                    'Po zabiciu Gluttonous Abomination, wychodzi armia robaków. Pomagaj z nimi tylko wtedy, jeśli za wolno umierają.',
              },
              {
                'type': 'image',
                'src': selectedType[1] == '10'
                    ? 'valithria_dreamwalker_10_mechanics.png'
                    : 'valithria_dreamwalker_25_mechanics.png',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas na ziemi pojawia się Biała plama. Jeśli w niej stoisz, po chwili zostaniesz wystrzelony w powietrze i otrzymasz obrażenia od upadku.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli zobaczysz Fioletową kulę, możesz ją zignorować. Kula kradnie manę, ale masz Lite Tap, więc na brak many nie powinieneś narzekać.',
              },
              {
                'type': 'string',
                'text':
                    'Czasem Addy rzucają się na Healerów, którzy wyszli z portali, bo generują ogromne ilości Threatu. Zabijaj takie Addy zanim zabiją Healerów.',
              },
            ]
          },
        ]
      },
      {
        'name': 'Sindragosa',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Frost Beacon',
                'subImg': 'frost_beacon.jpg',
                'subDesc': [
                  selectedType[0] == '10'
                      ? 'Boss wybiera 2 osoby w fazie 1 lub 1 osobę w fazie 2 i nakłada na nie debuff.'
                      : selectedType[1] == 'hc'
                          ? 'Boss wybiera 5 osób w fazie 1 lub 1 osobę w fazie 2 i nakłada na nie debuff.'
                          : 'Boss wybiera 6 osób w fazie 1 lub 1 osobę w fazie 2 i nakłada na nie debuff.',
                  'Osoba z debuffem musi uciekać od rajdu na wyznaczone miejsce i po chwili zamienia się w lód.',
                ]
              },
              {
                'subName': 'Blistering Cold',
                'subImg': 'blistering_cold.jpg',
                'subDesc': [
                  'Boss przyciąga wszystkich do siebie, po czym zaczyna czar AoE, który zadaje spore obrażenia wszystkim w pobliżu.',
                ]
              },
              {
                'subName': 'Unchained Magic',
                'subImg': 'unchained_magic.jpg',
                'subDesc': [
                  selectedType[0] == '25'
                      ? 'Boss nakłada debuff na 6 losowych osób.'
                      : 'Boss nakłada debuff na 3 losowe osoby.',
                  'Osoba z debuffem otrzymuje 1 stack Instability po użyciu czarów.',
                  'Po 5 sekundach od otrzymania ostatniego stacka Instability, osoba z debuffem wybucha, resetując stacki.',
                  selectedType[1] == 'nm'
                      ? 'Wybuch Instability zadaje obrażenia graczowi. Im więcej stacków, tym większe obrażenia.'
                      : 'Wybuch Instability zadaje ogromne obrażenia wszystkim w range 20 yardów. Im więcej stacków, tym większe obrażenia.',
                ]
              },
              {
                'subName': 'Mystic Buffet',
                'subImg': 'mystic_buffet.jpg',
                'subDesc': [
                  'Debuff otzymywany co 6 sekund w ostatniej fazie.',
                  'Każdy stack zwiększa otrzymywane magiczne obrażenia o 20%.',
                  'Stacki można zresetować po schowaniu się za lodem. Stacki znikają po 8 sekundach od schowania się.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {'type': 'image', 'src': 'sindragosa_phase_1.png'},
              {
                'type': 'string',
                'text':
                    'Mdpsy stoją przy brzuchu Bossa, a Rdpsy nieco dalej. Walka zaczyna się około 2-3 sekundy po tym, jak Boss dotknie ziemi.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'image',
                  'src': selectedType[0] == '10'
                      ? 'sindragosa_10_hc_unchained_magic.png'
                      : 'sindragosa_25_hc_unchained_magic.png'
                },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Co jakiś czas Boss wybiera 3 osoby, które dostają debuff Unchained Magic. Osoby te dostają stacki Instability za każdy cast.'
                    : 'Co jakiś czas Boss wybiera 6 osób, które dostają debuff Unchained Magic. Osoby te dostają stacki Instability za każdy cast.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Osoby z debuffem rozbiegają się na wyznaczone miejsca (rysunek). Miejsce dla Warlocka jest po lewej stronie, lekko z przodu (na rysunku z prawej strony, kolor jasnoniebieski).',
                },
              {
                'type': 'string',
                'text': selectedType[1] == 'nm'
                    ? 'Po 5 sekundach od ostatniego casta, lub od końca Unchained Magic, stacki wybuchają, zadając obrażenia graczowi. Im więcej stacków, tym większe obrażenia.'
                    : 'Po 5 sekundach od ostatniego casta, lub od końca Unchained Magic, stacki wybuchają, zadając obrażenia graczowi i wszystkim w range 20 yardów. Im więcej stacków, tym większe obrażenia.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'nm'
                    ? 'Najpóźniej 5 sekund przed końcem timera Blistering Cold należy się zdestackować (destack trwa 5 sekund, więc trzeba zacząć 10 sekund przed timerem).'
                    : 'Najpóźniej 5 sekund przed końcem timera Blistering Cold należy się zdestackować (destack trwa 5 sekund, więc trzeba zacząć 10 sekund przed timerem). Po destacku biegniemy do Mdpsów.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Jeśli Boss Cię przyciągnie, a masz debuff Unchained Magic, nie używaj teleportu, ani nitro butów, bo dostaniesz kolejny stack Instability. Po prostu biegnij na miejsce Rdpsów.',
                },
              {'type': 'header', 'text': 'Faza lotna:'},
              {
                'type': 'image',
                'src': selectedType[0] == '10'
                    ? 'sindragosa_10_ice_tomb.png'
                    : 'sindragosa_25_ice_tomb.png'
              },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Co jakiś czas Boss odlatuje i wybiera 2 osoby, które po chwili zamienią się w Ice Tomby.'
                    : selectedType[1] == 'nm'
                        ? 'Co jakiś czas Boss odlatuje i wybiera 5 osób, które po chwili zamienią się w Ice Tomby.'
                        : 'Co jakiś czas Boss odlatuje i wybiera 6 osób, które po chwili zamienią się w Ice Tomby.',
              },
              {
                'type': 'string',
                'text':
                    'Wybrane osoby ustawiają się na wyznaczonych miejscach (rysunek).',
              },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Starszy DBM nie mówi, w którym miejscu masz stać. Zamiast tego pokazuje 2 nicki, według których ustala się kolejność: lewo, prawo.'
                    : selectedType[1] == 'nm'
                        ? 'Starszy DBM nie mówi, w którym miejscu masz stać. Zamiast tego pokazuje 5 nicków, według których ustala się kolejność: lewo, lewo, środek, prawo, prawo.'
                        : 'Starszy DBM nie mówi, w którym miejscu masz stać. Zamiast tego pokazuje 6 nicków, według których ustala się kolejność: lewo, lewo, środek, środek, prawo, prawo.',
              },
              {
                'type': 'string',
                'text':
                    'Jak tylko wybrani gracze zamienią się w Ice Tomby, wszyscy chowają się za nimi, ale nie za szybko, bo też zamienisz się w Ice Tomba.',
              },
              {
                'type': 'string',
                'text':
                    'W losowych miejscach spadają pojedynczo 4 bomby. Wszyscy muszą ustawić się tak, aby między nimi, a bombami był Ice Tomb. Po 4 bombie Boss wraca na ziemię.',
              },
              {'type': 'header', 'text': 'Faza 2:'},
              {
                'type': 'image',
                'src': selectedType[1] == 'nm'
                    ? 'sindragosa_nm_phase_2.png'
                    : 'sindragosa_hc_phase_2.png'
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Raid Leader decyduje, w którym momencie przebiegamy na drugą stronę Bossa (ustawienie na rysunku). Zwykle przebiegamy po fazie lotnej albo po Blisteringu.',
                },
              {
                'type': 'string',
                'text':
                    'Po zbiciu HP Bossa do 35%, zaczyna się faza 2. Boss już nie odlatuje, ale co jakiś czas rzuca Frost Beacon na 1 losową osobę.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Jeśli dostaniesz Unchained Magic, nic nie rób. Do berserka daleko, a możesz zabić rajd. Jeśli przypadkiem dostaniesz stack Instability, biegnij w prawo.',
                },
              {
                'type': 'string',
                'text':
                    'Wybrana osoba biegnie na wyznaczone miejsce (na rysunku jedno z jasnoniebieskich kółek). Kolejność jest zawsze taka sama: Melee, Melee, Neck, Melee, Melee, Melee, Neck... (patrz na rysunek).',
              },
              {
                'type': 'string',
                'text':
                    'Dalsza kolejność jest zależna od Raid Leadera, DPSu na Bossie i stacków Mystic Buffet. Zwykle, po 7 Ice Tombach, każdy kolejny idzie do tzw. Afryki, czyli daleko od rajdu.',
              },
              {
                'type': 'string',
                'text':
                    'Wszystkie Ice Tomby poza 2 i 6 powinny być szybko zniszczone. 2 i 6 Ice Tomb zostają, aby zablokować Blistering Cold (Boss nie przyciągnie jeśli zasłania Cię Ice Tomb).',
              },
            ]
          },
        ]
      },
      {
        'name': 'The Lich King',
        'data': [
          {
            'name': 'Mechaniki',
            'img': sectionData[0],
            'desc': '',
            'shortDesc': sectionData[2],
            'sub': [
              {
                'subName': 'Defile',
                'subImg': 'defile.jpg',
                'subDesc': [
                  'Boss rzuca debuff na losową osobę, pod którą po chwili pojawia się plama.',
                  'Plama zadaje obrażenia i rośnie, jeśli ktoś w niej stoi.',
                ]
              },
              {
                'subName': 'Summon Val\'kyr',
                'subImg': 'summon_valkyr.jpg',
                'subDesc': [
                  selectedType[0] == '10'
                      ? 'Boss przyzywa 1 Val\'kyrię, która łapie losową osobę i zabiera ją do krawędzi platformy, po czym zrzuca z niej.'
                      : 'Boss przyzywa 3 Val\'kyrie, które łapią 3 losowe osoby i zabierają je do krawędzi platformy, po czym zrzucają z niej.',
                  'Val\'kyrie lecą do najbliższej krawędzi paltformy.',
                  selectedType[1] == 'nm'
                      ? 'Po śmierci, Val\'kyria puszcza gracza.'
                      : 'Po zbiciu HP do 50%, Val\'kyria puszcza gracza, wzlatuje w powietrze i zaczyna castować Siphon Life, aby okradać nas z HP.',
                ]
              },
              {
                'subName': 'Necrotic Plague',
                'subImg': 'necrotic_plague.jpg',
                'subDesc': [
                  'Losowa osoba dostaje debuff, z którym jak najszybciej biegnie do Off Tanka, zatrzymując się za plecami Shambling Horroru (duży Ddd) i po otrzymaniu dispella wraca na miejsce.',
                  'Debuff po 5 sekundach zabija gracza, a po śmierci lub dispellu przechodzi na innego gracza lub wroga, jeśli ktoś był w pobliżu.',
                ]
              },
              {
                'subName': 'Raging Spirit',
                'subImg': 'raging_spirit.jpg',
                'subDesc': [
                  'Boss wybiera losową osobę i tworzy jej wzmocnioną kopię, która może atakować tylko Melee.',
                  'Kopia używa Soul Shriek, który zadaje obrażenia wszystkim przed sobą do 15 yardów.',
                ]
              },
              {
                'subName': 'Harvest Soul',
                'subImg': 'harvest_soul.jpg',
                'subDesc': [
                  selectedType[1] == 'nm'
                      ? 'Boss przenosi losową osobę do specjalnego pomieszczenia.'
                      : 'Boss przenosi cały rajd do specjalnego pomieszczenia.',
                  selectedType[1] == 'nm'
                      ? 'Osoba w środku musi zabić demona, jednocześnie przerywając jego casty i pilnując, aby NPC przeżył.'
                      : 'Wszyscy biegną za wyznaczoną osobą do ściany, a później wzdłuż ściany, dookoła pomieszczenia.',
                  selectedType[1] == 'nm'
                      ? 'Jeśli osoba lub NPC w środku umrze, albo demon skończy casta, to Boss dostaje enrage i zaczyna wszystkich zabijać.'
                      : 'Wszyscy muszą uważać, aby nie złapał ich żaden duch (Wicked Spirit).',
                ]
              },
              if (selectedType[1] == 'hc')
                {
                  'subName': 'Summon Shadow Trap',
                  'subImg': 'summon_shadow_trap.jpg',
                  'subDesc': [
                    'Boss rzuca pułapkę w losowego gracza. Pułapka po chwili aktywuje się, tworząc plamę.',
                    'Po wejściu w plamę, wszyscy gracze w pobliżu zostają wystrzeleni z platformy.',
                  ]
                },
              {
                'subName': 'Summon Ice Sphere',
                'subImg': 'summon_ice_sphere.jpg',
                'subDesc': [
                  'Boss przyzywa lodową kulę, która leci do losowej osoby.',
                  'Po dotknięciu Targetu, kula wybucha, odrzucając wszystkich w pobliżu.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': sectionData[1],
            'desc': '',
            'shortDesc': sectionData[3],
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {
                'type': 'image',
                'src': selectedType[1] == 'nm'
                    ? 'lich_king_nm_phase_1.png'
                    : 'lich_king_hc_phase_1.png',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'nm'
                    ? 'Main Tank trzyma Bossa, a Off Tank czeka z boku, aż wyjdą Shambling Horrory. Mdpsy stoją za Bossem, Rdpsy nieco dalej.'
                    : 'Main Tank prowadzi Bossa z lewej strony, Mdpsy idą za Bossem, a Rdpsy idą prawą stroną. Środkiem idzie Off Tank i ewentualnie Hunterzy.',
              },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Boss rzuca w losową osobę pułapkę, która po chwili aktywuje się, tworząc plamę. Jeśli rzucił w kogoś obok Ciebie, przesuń się kawałek dalej (patrz na strzałki na rysunku).',
                },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas, losowa osoba dostanie debuff Necrotic Plague. Wybrana osoba biegnie do Off Tanka, zatrzymuje się za plecami Shambling Horroru i po otrzymaniu dispella wraca na miejsce.',
              },
              {
                'type': 'string',
                'text':
                    'Debuff ten przeskakuje na inny Target po śmierci lub dispellu. Jeśli w pobliżu nie było żadnego gracza, ani wroga, debuff znika.',
              },
              {'type': 'header', 'text': 'Faza 1.5:'},
              {
                'type': 'image',
                'src': selectedType[1] == 'nm'
                    ? 'lich_king_nm_transition_1.png'
                    : 'lich_king_hc_transition_1.png',
              },
              {
                'type': 'string',
                'text':
                    'Po zbiciu HP Bossa do 70%, zaczyna się faza 1.5, a cały rajd biegnie do krawędzi platformy. Nie biegniemy obok Shambling Horrorów, aby nie złapać Necrotic Plague od nich.',
              },
              {
                'type': 'string',
                'text':
                    'Boss stoi na środku platformy i przez chwilę zostawiamy go w spokoju. Naszym zadaniem jest zabicie Raging Spiritów.',
              },
              {
                'type': 'string',
                'text':
                    'Main Tank łapie Raging Spirity, Dpsy je zabijają, a Off Tank kończy bawić się z Shambling Horrorami. Jeśli zdąży, może złapać jakiegoś Raging Spiritu.',
              },
              {
                'type': 'string',
                'text':
                    'Rozbiegamy się, żeby nie stać w zbyt dużej grupie i nie wchodzimy przed Raging Spirity. Jak wyjdzie następny Raging Spirit, to zaczynamy go bić, a poprzedniego zostawiamy.',
              },
              {'type': 'header', 'text': 'Faza 2:'},
              {
                'type': 'image',
                'src': 'lich_king_phase_2.png',
              },
              {
                'type': 'string',
                'text':
                    'Chwilę po pojawieniu się 3 Raging Spiritu, zewnętrzna część platformy zaczyna się rozpadać, cały rajd biegnie na środek i zaczyna się faza 2.',
              },
              {
                'type': 'string',
                'text':
                    'Tanki trzymają Bossa na środku, a reszta rajdu stackuje się za plecami Bossa, aby Val\'kyrie leciały w jedną stronę.',
              },
              {
                'type': 'string',
                'text':
                    'Zostawiamy teleport na max range po tej samej stronie, po której stoi rajd. Dzięki temu trzeba biegać do Val\'kyrii.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli dostaniemy debuff Defile, odbiegamy na bok. Po chwili pojawi się pod nami plama, która powiększa się za każdym razem, jak zada komuś obrażenia.',
              },
              {
                'type': 'string',
                'text':
                    'Nie zostawiamy Defile po tej stronie, po której stoi rajd, bo później Val\'kyrie wlecą w to Defile i będzie problem.',
              },
              {
                'type': 'image',
                'src': 'lich_king_phase_2_valkyr.png',
              },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Co jakiś czas Boss przyzywa 1 Val\'kyrie, która łapie 1 losową osobę, leci z nią w stronę najbliższej krawędzi i zrzuca ją z platformy.'
                    : 'Co jakiś czas Boss przyzywa 3 Val\'kyrie, które łapią 3 losowe osoby, lecą z nimi w stronę najbliższej krawędzi i zrzucają je z platformy.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'nm'
                    ? 'Val\'kyrie trzeba zabić, zanim dolecą do krawędzi, aby uratować sojuszników.'
                    : 'Val\'kyrie puszczają graczy po zbiciu HP do 50%, lecą w górę i castują Siphon Life, aby się uleczyć.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli złapie Cię Val\'kyria, nikt nie będzie jej bił. Przy krawędzi zacznij spamować teleport, aby wrócić na platformę. Teleport działa dopiero po zrzuceniu.',
              },
              {'type': 'header', 'text': 'Faza 2.5:'},
              {
                'type': 'image',
                'src': 'lich_king_transition_2.png',
              },
              {
                'type': 'string',
                'text':
                    'Po zbiciu HP Bossa do 40%, zaczyna się faza 2.5. Rajd biegnie za Tankami do krawędzi platformy. Nie ma Shambling Horrorów, więc obaj Tankowie są wolni.',
              },
              {
                'type': 'string',
                'text':
                    'W tej fazie pojawiają się pojedynczo 4 Raging Spirity, które są łapane przez obu Tanków. Zabijamy je jak najszybciej.',
              },
              {
                'type': 'string',
                'text':
                    'Rozbiegamy się, żeby nie stać w zbyt dużej grupie i nie wchodzimy przed Raging Spirity. Jak wyjdzie następny Raging Spirit, to zaczynamy go bić, a poprzedniego zostawiamy.',
              },
              {'type': 'header', 'text': 'Faza 3:'},
              {
                'type': 'image',
                'src': 'lich_king_phase_3.png',
              },
              {
                'type': 'string',
                'text':
                    'Po pojawieniu się 4 Raging Spiritu, zewnętrzna część platformy znowu się rozpada, a cały rajd biegnie na wewnętrzną platformę.',
              },
              {
                'type': 'string',
                'text':
                    'Tank trzyma Bossa przy krawędzi, a reszta rajdu stackuje się między Bossem, a krawędzią platformy. Jeśli dostaniemy debuff Defile, odbiegamy na bok i zostawiamy plamę.',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas Boss przyzywa grupę duchów (Vile Spirit), które po chwili lecą w stronę graczy. Po złapaniu gracza, duchy wybuchają, zadając obrażenia wszystkim w pobliżu.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli duchy lecą w naszą stronę, przed Tanka wychodzi tzw. Soaker, czyli osoba, która jest w stanie złapać wszystkie duchy i przeżyć. Zwykle jest to Shadow Priest.',
              },
              {
                'type': 'string',
                'text':
                    'Po zniknięciu duchów pojawiają się następne, a cały rajd przebiega na drugą stronę, ustawiając się w taki sam sposób.',
              },
              {
                'type': 'image',
                'src': 'lich_king_hc_frostmourne_room.png',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'nm'
                    ? 'Co jakiś czas Boss castuje Harvest Soul, który losową osobę do osobnego pomieszczenia. W środku jest NPC i demon. Wybrana osoba musi zabić demona zanim on zabije NPC i jednocześnie przerywać casty demona.'
                    : 'Co jakiś czas Boss castuje Harvest Soul, który przenosi cały rajd do osobnego pomieszczenia. Wszyscy biegną za wyznaczoną osobą do ściany, a później wzdłuż ściany, dookoła pomieszczenia. Rdpsy zabijają zbliżające się duchy.',
              },
              {
                'type': 'string',
                'text': selectedType[1] == 'hc'
                    ? 'Jeśli ktoś umrze w pomieszczeniu, to Boss dostaje enrage i zaczyna wszystkich zabijać.'
                    : 'Jeśli gracz umrze w pomieszczeniu, demon skończy casta lub zabije NPC, to Boss dostaje enrage i zaczyna wszystkich zabijać.',
              },
              {
                'type': 'string',
                'text':
                    'Faza trwa do 10% HP Bossa. Wtedy Boss zabija cały rajd, trwa nudna cutscenka, NPC łapie Lich Kinga i wskrzesza nas, abyśmy mogli zabić Bossa.',
              },
              {'type': 'header', 'text': 'Faza 4:'},
              {
                'type': 'string',
                'text':
                    'W tej fazie nie ma żadnych mechanik. Wystarczy bić Bossa i nie trzeba na nic uważać.',
              },
            ]
          },
        ]
      }
    ];
    return iccList;
  }
}
