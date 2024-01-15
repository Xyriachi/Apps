class ICC {
  getIccList(selectedType) {
    List iccList = [
      {
        'name': 'Lord Marrowgar',
        'data': [
          {
            'name': 'Mechaniki',
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
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
                    'Jak wyjdą addy z twojej strony, rzuć na nie Corruption i bij Bossa.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {
                'type': 'string',
                'text':
                    'Zabijaj Riflemanów / Axethrowerów na wrogim statku, aby nie zdobyli zbyt dużo doświadczenia. Jeśli ich zostawisz, będą zadawać coraz większe obrażenia.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli pod Twoimi nogami pojawi się znak, wyjdź z niego. Spadająca rakieta zadaje obrażenia i odrzuca.',
              },
              {'type': 'header', 'text': 'Below Zero:'},
              {
                'type': 'string',
                'text':
                    'Działa sojuszników zostają zamrożone, a na wrogim statku pojawia się Mag. Użyj plecaka, aby przeskoczyc na drugi statek, ale nie skacz przed Tankiem!',
              },
              {
                'type': 'string',
                'text':
                    'Nie skacz obok Muradina, bo plecak zadaje obrażenia AoE i możesz przebić Aggro.',
              },
              {
                'type': 'string',
                'text':
                    'Wróć na statek sojuszników, jak Magowi zostanie 20% hp. DoTki go dobiją.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
            'sub': [
              {
                'subName': 'Mark of the Fallen Champion',
                'subImg': 'mark_of_the_fallen_champion.jpg',
                'subDesc': [
                  'Boss rzuca debuff na losową osobę.',
                  'Debuff zadaje spore obrażenia.',
                  'Jeśli osoba z debuffem umiera, boss leczy się.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
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
                    'Możesz dać teleport przy barierkach, aby uciekać, jeśli Bestia cię goni.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
            'sub': [
              {
                'subName': 'Slime Puddle',
                'subImg': 'slime_puddle.jpg',
                'subDesc': [
                  'Boss rzuca 2 butelki z zielonym szlamem w losowe osoby.',
                  'Butelki tworzą zielone plamy, które zadają obrażenia i stale się powiększają.',
                ]
              },
              {
                'subName': 'Unstable Experiment',
                'subImg': 'unstable_experiment.jpg',
                'subDesc': [
                  'Boss tworzy małego Ooze, który biegnie do losowej osoby.',
                  'Target zielonego Ooza nie może się ruszać, a Ooze goni go. Jeśli Ooze dotknie target, to wybucha, zadając spore obrażenia i odrzucając wszystkich, stojących w pobliżu. Otrzymane obrażenia dzielą się na wszystkich graczy w pobliżu.',
                  'Target pomarańczowego Ooza musi uciekać, aby Ooze go nie dotknął. Jeśli Ooze dotknie target, to wybucha, zwykle zabijając cały rajd.',
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
                  'Kule odbijają się 2 razy od podłogi, a przy następnym upadku wybuchają.',
                  'Wybuch zadaje obrażenia i wydłuża cast speed o 200% wszystkim w range 5 yardów od miejsca wybuchu.',
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
              {
                'subName': 'Unbound Plague',
                'subImg': 'unbound_plague.jpg',
                'subDesc': [
                  'Boss nakłada debuff na losową osobę.',
                  'Osoba z debuffem otrzymuje obrażenia co 1 sekundę i zabija gracza, jeśli nie przekaże debuffa dalej.',
                  'Po przekazaniu plagi na inną osobę, gracz otrzymuje 1 stack debuffa, zwiększającego otrzymywane obrażenia z plagi i skraca czas, po którym trzeba oddać plagę, żeby nie umrzeć. Ten debuff trwa 1 minutę',
                  'Pierwszą plagę powinno się oddać po około 6-8 sekundach, a każdy stack debuffa skraca ten czas.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {
                'type': 'image',
                'src': 'professor_putricide_green_ooze.png',
              },
              {
                'type': 'string',
                'text':
                    'Zielona kropka to miejsce spawnu Zielonego Ooza. Jeśli się stackujesz, ustawiaj się tak, aby lecieć na zmianę do stołu i na środek.',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli boss castuje Unstable Experiment, po chwili pojawi się Ooze. Pierwszy Ooze jest zielony, drugi pomarańczowy i tak na zmianę.',
              },
              {
                'type': 'string',
                'text':
                    'Co jakiś czas boss rzuci butelki w 2 losowe osoby, tworząc zielone plamy szlamu. Plamy powiększają się, ale Off Tank je zmniejsza.',
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
                'src': 'professor_putricide_orange_ooze.png',
              },
              {
                'type': 'string',
                'text':
                    'Jeśli wybrał cię pomarańczowy Ooze, uciekaj od niego tak, jak pokazuje strzałka na zdjęciu. Omijaj pomarańczowe plamy, jeśli są.',
              },
              {
                'type': 'string',
                'text':
                    'Po jakimś czasie oba Oozy zmieniają target, więc staraj się nie stać przy nich na zmianie targetu, bo możesz nie zdążyć zareagować. Zmianę targetu może też przyspieszyć Hand of Protection rzucone na aktualny target.',
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
                      'Po zbiciu HP bossa do 80%, zostają przyzwane 2 dodatkowe Oozy: zielony i pomarańczowy. Połowa rajdu dostaje debuff z zielonym kolorem, a druga połowa z pomarańczowym. Można bić tylko tego Ooza, który ma taki sam kolor jak twój debuff.',
                },
              if (selectedType[1] == 'hc' && selectedType[0] == '10')
                {
                  'type': 'string',
                  'text':
                      'Po zbiciu HP bossa do 80%, zostają przyzwane 2 dodatkowe Oozy: zielony i pomarańczowy.',
                },
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text':
                      'Nie prowadź pomarańczowego Ooza przez target zielonego Ooza, bo możesz zostać odrzucony i pomarańczowy Ooze cię złapie.',
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
                          'Co jakiś czas boss rzuci Malleable Goo na 3 losowych Rdpsów. Nie daj się trafić.',
                    }
                  : {
                      'type': 'string',
                      'text':
                          'Co jakiś czas boss rzuci Malleable Goo na 1 losowego Rdpsa. Nie daj się trafić.',
                    },
              {
                'type': 'string',
                'text':
                    'Main tank prowadzi bossa tak, aby na timerze Chocking Gas Bomb, boss był przy ścianie. Na ziemi pojawiają się 2 małe, pomarańczowe plamy z butelkami na środku. Uciekaj od nich.',
              },
              if (selectedType[1] == 'hc')
                {'type': 'header', 'text': 'Faza 2.5:'},
              if (selectedType[1] == 'hc')
                {
                  'type': 'string',
                  'text': 'To samo co w fazie 1.5.',
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
                    'W tej fazie jest wszystko co w fazie 2, ale bez Oozów.',
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
              {'type': 'header', 'text': 'Dodatkowe informacje:'},
              {
                'type': 'string',
                'text':
                    'Jeśli goni cię Ooze, nie prowadź go przez Chocking Gas Bomb.',
              },
              {
                'type': 'string',
                'text':
                    'Unbound Plague zwykle oddaje się w jednym kierunku. Jeśli dostałeś od kogoś z lewej, oddaj w prawo.',
              },
              {
                'type': 'string',
                'text':
                    'Curse of Tongues wydłuża zmianę targetu na Oozach, dzięki czemu jest nieco więcej czasu na reakcję.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
            'sub': [
              {
                'subName': 'Kinetic Bomb',
                'subImg': 'kinetic_bomb.jpg',
                'subDesc': [
                  'Kula, która powoli spada na ziemię, a po dotknięciu podłogi odrzuca wszystkich graczy.',
                  'Kule powinny być podbijane przez zadanie obrażeń zanim spadną na ziemię. Zwykle podbija je Hunter.',
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
                  'Im mniejsza kula, tym mniejsze obrażenia zadaje po zderzeniu z targetem.',
                ]
              },
              if (selectedType[1] == 'hc')
                {
                  'subName': 'Shadow Prison',
                  'subImg': 'shadow_prison.jpg',
                  'subDesc': [
                    'Każda sekunda ruchu nakłada 1 stack debuffa, który zadaje obrażenia co 1 sekundę.',
                  ]
                },
            ],
          },
          {
            'name': 'Taktyki',
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
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
                    'Co jakiś czas będą pojawiać się Kinetic Bomby w losowych miejscach. Jeśli jest ryzyko, że dotkną ziemi, użyj Searing Pain, aby je podbić.',
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
                    'Jeśli aktywny jest Keleseth, po prostu nie używaj AoE.',
              },
              {'type': 'header', 'text': 'Dodatkowe informacje:'},
              {
                'type': 'string',
                'text':
                    'Pierwszy aktywny boss to Valanar. Następnie Taldaram albo Keleseth. Jako trzeci jest ten, który jeszcze nie był aktywny.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
            'sub': [
              {
                'subName': 'Vampiric Bite',
                'subImg': 'vampiric_bite.jpg',
                'subDesc': [
                  'Boss gryzie osobę, która jest 3 pod względem threatu.',
                  'Ugryziona osoba dostaje debuff, który zwiększa zadawane obrażenia o 100% i sprawia, że gracz nie generuje threatu.',
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
                      ? 'Boss wybiera 2 losowe osoby, i łączy je czerwonymi liniami.'
                      : 'Boss wybiera 3 losowe osoby, i łączy je czerwonymi liniami.',
                  'Osoby te muszą się jak najszybciej spotkać, aby linie zniknęły.',
                  'Linie zadają obrażenia osobom w pobliżu.',
                ]
              },
              {
                'subName': 'Incite Terror',
                'subImg': 'incite_terror.jpg',
                'subDesc': [
                  'Boss biegnie na środek sali, wzlatuje w powietrze i nakłada Fear na wszystkich.',
                  'Po zniknięciu Feara trzeba utrzymać range 8 yardów, a boss zadaje wszystkim obrażenia. Im więcej graczy w pobliżu, tym większe obrażenia.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {
                'type': 'image',
                'src': 'blood_queen_lanathel_phase_1.png',
              },
              {
                'type': 'string',
                'text':
                    'Ustaw się tak, aby mieć bliżej do osoby, która ma cię ugryźć. Środek jest zarezerwowany dla Healerów, a platforma dla Mdpsów.',
              },
              {
                'type': 'string',
                'text':
                    'Sprawdzaj, kiedy kończy się debuff na ugryzionych osobach, aby wiedzieć, kiedy twoja kolej. (DBM wyświetla tabelkę z ugryzionymi osobami i czasem do końca debuffa).',
              },
              {
                'type': 'string',
                'text':
                    'Około 5-10 sekund przed końcem debuffa u osoby, która ma ciebie ugryźć, podbiegnij do niej, stań przed nią i bij bossa. Jak zostaniesz ugryziony, wróć na miejsce.',
              },
              {
                'type': 'string',
                'text':
                    'Chwilę przed końcem debuffa, osoba, którą masz ugryźć, powinna podbiec do ciebie. Jeśli tego nie zrobi, a wiesz gdzie jest, szybko podbiegnij i ugryź. W ostateczności, ugryź Healera.',
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
                    'Co jakiś czas boss używa Swarming Shadows na losowej osobie, która powinna biec do najbliższej ściany i wzdłuż ściany oddalać się od bossa.',
              },
              {
                'type': 'string',
                'text': selectedType[0] == '10'
                    ? 'Boss wybiera 2 losowe osoby i łączy je za pomocą czerwonej linii. Osoby te muszą się zestackować jak najszybciej, aby połączenie zniknęło.'
                    : 'Boss wybiera 3 losowe osoby i łączy je za pomocą czerwonej linii. Osoby te muszą się zestackować jak najszybciej, aby połączenie zniknęło. Najlepiej biec w stronę środka trójkąta, aby spotkać się w połowie drogi.',
              },
              {
                'type': 'string',
                'text':
                    '2 razy w trakcie walki boss używa Incite Terror. Biegnie wtedy na środek pomieszczenia, wzlatuje w powietrze i rzuca Fear na cały raid.',
              },
              {
                'type': 'string',
                'text':
                    'Jak skończy się Fear, ustaw się na range 8 yardów, ale tak, aby mieć range na bossa. Mdpsy muszą się dostosować do Rdpsów.',
              },
              {'type': 'header', 'text': 'Dodatkowe informacje:'},
              {
                'type': 'string',
                'text':
                    'Jeśli nikogo nie ugryziesz, po chwili zamienisz się w wampira i stracisz kontrolę nad postacią, która zacznie zabijać innych graczy.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
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
                  'Blazing Skeleton zaczyna czar AoE, który zadaje obrażenia wszystkim graczom i bossowi.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
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
                    'Co jakiś czas będą pojawiać się różne addy. Priorytet zabijania: Blazing Skeleton > Risen Archmage > Gluttonous Abomination > Suppresser.',
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
              {'type': 'header', 'text': 'Dodatkowe informacje:'},
              {
                'type': 'string',
                'text':
                    'Często Addy rzucają się na Healerów, którzy wyszli z portali, bo generują ogromne ilości Threatu. Zabijaj takie Addy zanim zabiją Healerów.',
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
            'sub': [
              {
                'subName': 'Frost Beacon',
                'subImg': 'frost_beacon.jpg',
                'subDesc': [
                  selectedType[0] == '10'
                      ? 'Boss wybiera 2 targety w fazie 1 lub 1 target w fazie 2 i nakłada na nich debuff.'
                      : selectedType[1] == 'hc'
                          ? 'Boss wybiera 5 targetów w fazie 1 lub 1 target w fazie 2 i nakłada na nich debuff.'
                          : 'Boss wybiera 6 targetów w fazie 1 lub 1 target w fazie 2 i nakłada na nich debuff.',
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
                  'Boss nakłada debuff na 5 losowych osób.',
                  'Osoba z debuffem otrzymuje 1 stack Instability po użyciu czarów.',
                  'Można użyć czar instant po zakończeniu casta, aby otrzymać 1 stack Instability zamiast dwóch.',
                  'Po 5 sekundach od otrzymania ostatniego stacka Instability, osoba z debuffem wybucha, resetując stacki.',
                  selectedType[1] == 'hc'
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
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
            'sub': [
              {'type': 'header', 'text': 'Faza 1:'},
              {'type': 'header', 'text': 'Dodatkowe informacje:'},
            ]
          },
        ]
      },
      {
        'name': 'The Lich King',
        'data': [
          {
            'name': 'Mechaniki',
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak nie umrzeć... chyba.',
            'sub': [
              {
                'subName': 'Defile',
                'subImg': 'defile.jpg',
                'subDesc': [
                  'Boss rzuca debuff na losową osobę, pod którą po chwili pojawia się plama.',
                  'Plama zadaje obrażenia i rośnie jeśli ktoś w niej stoi.',
                ]
              },
              {
                'subName': 'Summon Val\'kyr',
                'subImg': 'summon_valkyr.jpg',
                'subDesc': [
                  selectedType[0] == '10'
                      ? 'Boss przyzywa 1 Val\'kyrie, która łapie losową osobę i zabiera ja do krawędzi platformy, po czym zrzuca z niej.'
                      : 'Boss przyzywa 3 Val\'kyrie, które łapią 3 losowe osoby i zabierają je do krawędzi platformy, po czym zrzucają z niej.',
                  'Val\'kyrie lecą do najbliższej krawędzi paltformy.',
                  selectedType[1] == 'hc'
                      ? 'Po śmierci, Val\'kyria puszcza gracza.'
                      : 'Po zbiciu HP do 50%, Val\'kyria puszcza gracza, wzlatuje w powietrze i zaczyna castować Siphon Life na rajdzie.',
                ]
              },
              {
                'subName': 'Necrotic Plague',
                'subImg': 'necrotic_plague.jpg',
                'subDesc': [
                  'Losowa osoba dostaje debuff, z którym jak najszybciej biegnie do off tanka, zatrzymując się za plecami Shambling Horroru (duży add) i po otrzymaniu dispella wraca na miejsce.',
                  'Debuff po 5 sekundach zaczyna zadawać tak duże obrażenia, że 1 tick zabija gracza, a po śmierci lub dispellu przechodzi na innego gracza lub wroga, jeśli ktoś był w pobliżu.',
                ]
              },
              {
                'subName': 'Raging Spirit',
                'subImg': 'raging_spirit.jpg',
                'subDesc': [
                  'Boss wybiera losową osobę i tworzy jej wzmocnioną kopię, która może atakować tylko melee.',
                  'Kopia używa skill Soul Shriek, który zadaje obrażenia wszystkim przed sobą do 15 yardów.',
                ]
              },
              {
                'subName': 'Harvest Soul',
                'subImg': 'harvest_soul.jpg',
                'subDesc': [
                  'Boss przenosi losową osobę do specjalnego pomieszczenia.',
                  'Osoba w środku musi zabić demona, jednocześnie przerywając jego casty i pilnując, aby npc przeżył.',
                  'Jeśli osoba w środku umrze lub demon skończy casta, to boss dostaje enrage i zaczyna wszystkich zabijać.',
                ]
              },
              if (selectedType[1] == 'hc')
                {
                  'subName': 'Summon Shadow Trap',
                  'subImg': 'summon_shadow_trap.jpg',
                  'subDesc': [
                    'Pod losowym graczem pojawia się fioletowa plama.',
                    'Po wejściu na plamę, wszyscy gracze w pobliżu zostają wystrzeleni z platformy.',
                  ]
                },
              {
                'subName': 'Summon Ice Sphere',
                'subImg': 'summon_ice_sphere.jpg',
                'subDesc': [
                  'Boss przyzywa kulę lodu, która leci do losowej osoby.',
                  'Po dotknięciu targetu, kula wybucha, odrzucając wszystkich w pobliżu.',
                ]
              },
            ],
          },
          {
            'name': 'Taktyki',
            'img': 'mechanics.jpg',
            'desc': '',
            'shortDesc': 'Czyli jak udawać, że coś wiesz.',
            'sub': [
              {'type': 'header', 'text': 'Przygotowanie:'},
              {'type': 'header', 'text': 'Faza 1:'},
              {'type': 'header', 'text': 'Dodatkowe informacje:'},
            ]
          },
        ]
      }
    ];
    return iccList;
  }
//TODO ICC tactics
}
