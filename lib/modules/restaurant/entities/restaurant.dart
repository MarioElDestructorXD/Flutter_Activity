class Restaurant {
  final String id;
  final String name;
  final String description;
  final List<String> images;
  final double rating;
  final int count;

  Restaurant({
    required this.id,
    required this.count,
    required this.description,
    required this.images,
    required this.name,
    required this.rating,
  });

  String get getName => name;
  String get getDescription => description;
  List<String> get getImages => images;
  double get getRating => rating;
  int get getCount => count;
}
