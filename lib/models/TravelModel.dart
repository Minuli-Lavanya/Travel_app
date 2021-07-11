class TravelModel {
  final String name;
  final String image;
  final String shortDetail;
  final String description;

  TravelModel ({required this.name, required this.image, required this.shortDetail, required this.description});

  factory TravelModel.fromJson(Map<String, dynamic> json) => TravelModel(
      name: json['name'],
      image: json['image'],
      shortDetail: json['short-detail'],
      description: json['description']
  );
}