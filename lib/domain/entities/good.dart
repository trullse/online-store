import 'package:json_annotation/json_annotation.dart';

part 'good.g.dart';

@JsonSerializable()
class Good {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Map<String, num> rating;

  Good({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory Good.fromJson(Map<String, dynamic> json) => _$GoodFromJson(json);

  Map<String, dynamic> toJson() => _$GoodToJson(this);
}
