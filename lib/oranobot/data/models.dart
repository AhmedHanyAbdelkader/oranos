class Person{
  final String img;
  final bool isLoved;
  final double rating;
  final String name;
  final description;

  Person({required this.img, required this.isLoved, required this.rating, required this.name, this.description});
}


class Track{
  final String image;
  final String trackName;
  final String numOfExperts;

  Track({required this.image, required this.trackName, required this.numOfExperts});
}