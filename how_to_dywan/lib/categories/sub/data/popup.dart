class Popup {
  List popupList = [
    {
      'name': 'O mnie',
      'desc': [
        'Jestem prostym Affliction Warlockiem, który lubi pomagać innym Warlockom.',
        'Jest wielu lepszych ode mnie, ale ciężko trafić na kogoś, kto potrafi dobrze przekazac swoją wiedzę.',
        'Rajduję od lat, więc dobrze znam mechaniki i taktyki rajdowe. Wiem też, co jest ważne dla Warlocka, a co niekoniecznie.',
        'Znudziło mi się ciągłe powtarzanie podstaw, więc postanowiłem stworzyć poradnik, który każdy będzie mógł przeglądać w dowolnym momencie.',
        'Uczę się programowania i pomyślałem, że stworzenie aplikacji będzie najlepszym sposobem na przekazanie wiedzy i naukę nowych rzeczy.',
      ],
    },
    {
      'name': 'Źródła',
      'desc': [
        'Cała aplikacja jest stworzona na podstawie mojej wiedzy i doświadczenia jako Affliction Warlock.',
        'Informacje takie jak statystyki przedmiotów, zasięg mechanik, opisy Spelli, profesji, itp. są wzorowane na danych z internetu i z gry.',
        'Wszystkie ikony pochodzą z internetu, filmy należą do kolegów z gildii, a rysunki do taktyk są mojego autorstwa.',
      ],
    },
    {
      'name': 'O Serwerze',
      'desc': [
        'Wszystko jest dostosowane do Warmane - Lordaeron, czyli serwera prywatnego z dodatkiem Wrath of the Lich King.',
        'Ten serwer jest wyjątkowy, bo używa specjalne skrypty, które zwiększają poziom trudności rajdów.',
        'Taktyki różnią się od tych, które są na innych serwerach, bo jest tak ciężko, że normalne taktyki nie wystarczają.',
      ],
    },
    {
      'name': 'O Aplikacji',
      'desc': [
        'Aplikacja zawiera podstawowe informacje dla Affliction Warlocka.',
        'Jest to moja pierwsza aplikacja, więc mogą pojawić się błędy.',
        'Aplikacja ma przekazać wiedzę, a nie być ładna, więc nie oczekujcie cudów.',
      ],
    },
  ];

  getPopupList() {
    return popupList;
  }
}
