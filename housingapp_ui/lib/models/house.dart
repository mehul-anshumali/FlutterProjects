class House {
  String imageUrl;
  String address;
  String description;
  double price;
  int bedRooms;
  int bathRooms;
  double sqFeet;
  int garages;
  int time;
  List<String> moreImagesUrl;
  bool isFav;

  House({
    this.imageUrl,
    this.address,
    this.description,
    this.price,
    this.bedRooms,
    this.bathRooms,
    this.sqFeet,
    this.garages,
    this.time,
    this.moreImagesUrl,
    this.isFav,
  });
}
