class VideoList {
  List<Map<String, String>> videoList = [
    {
      'title': 'Han',
      'subtitle': 'Warlock, Rogue, Druid, Paladin.',
      'img': 'hanYT.jpg'
    },
    {
      'title': 'Sebciu',
      'subtitle': 'Warlock, Druid, Paladin, Warrior, Hunter, Mage.',
      'img': 'sebciuYT.jpg'
    },
  ];
//add videos
  getVideoList() {
    return videoList;
  }
}
