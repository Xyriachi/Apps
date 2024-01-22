class VideoList {
  List<Map<String, String>> videoList = [
    {
      'title': 'Han',
      'subtitle': 'Warlock, Rogue, Druid, Paladin.',
      'img': 'hanYT.jpg',
    },
    {
      'title': 'Sebciu',
      'subtitle': 'Warlock, Druid, Paladin, Warrior, Hunter, Mage.',
      'img': 'sebciuYT.jpg',
    },
    {
      'title': 'Sharpshady WoTLK',
      'subtitle': 'Druid, Death Knight, Shaman.',
      'img': 'sharpshadyYT.jpg',
    },
    {
      'title': 'Gabernik',
      'subtitle': 'Paladin.',
      'img': 'gabernikYT.jpg',
    },
  ];
//add videos
  getVideoList() {
    return videoList;
  }
}
