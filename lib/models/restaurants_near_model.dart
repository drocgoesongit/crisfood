class RestaurantsAroundYouModel {
  final String imageName;
  final String name;
  final String description;
  final String address;
  final String tag;
  final String rating;
  final String duration;
  final String special;

  const RestaurantsAroundYouModel(
      {required this.imageName,
      required this.name,
      required this.description,
      required this.address,
      required this.tag,
      required this.rating,
      required this.duration,
      required this.special});
}
