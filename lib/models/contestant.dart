class Contestant {
  final bool inHouse;
  final String name;
  final String displayPhoto;
  final List<String> photos;
  final String hashtag;

  Contestant(
      {this.inHouse, this.name, this.displayPhoto, this.photos, this.hashtag});
}

getContestants() {
  return [
    Contestant(
        displayPhoto: "assets/images/test.png",
        name: "MC Dibenja",
        inHouse: true,
        hashtag: "#MCDibenja",
        photos: [
          "assets/images/test.png",
          "assets/images/test.png",
          "assets/images/test.png"
        ]),
    Contestant(
        displayPhoto: "assets/images/test_2.png",
        name: "Zita Minaj",
        inHouse: true,
        hashtag: "#ZitaMinaj",
        photos: [
          "assets/images/test.png",
          "assets/images/test.png",
          "assets/images/test.png"
        ]),
    Contestant(
        displayPhoto: "assets/images/test_3.png",
        name: "T-JAY",
        inHouse: true,
        hashtag: "#TJay",
        photos: [
          "assets/images/test.png",
          "assets/images/test.png",
          "assets/images/test.png"
        ])
  ];
}
