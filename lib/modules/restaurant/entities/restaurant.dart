class Restaurant {
  final String name;
  final String description;
  final List<String> images;
  final double rating;
  final int count;

  Restaurant(
    this.count, this.description, this.images, this.name, this.rating);

  String get getName => name;
  String get getDescription => description;
  List<String> get getImages => images;
  double get getRating => rating;
  int get getCount => count;
}
