import 'package:json_annotation/json_annotation.dart';
import 'package:online_store/domain/entities/location_point.dart';

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
  final LocationPoint storeLocation;

  Good({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
    this.storeLocation = const LocationPoint(latitude: 53.916281, longitude: 27.585937),
  });

  factory Good.fromJson(Map<String, dynamic> json) => _$GoodFromJson(json);

  Map<String, dynamic> toJson() => _$GoodToJson(this);

  Good copyWith({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    Map<String, num>? rating,
    LocationPoint? storeLocation,
  }) {
    return Good(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      description: description ?? this.description,
      category: category ?? this.category,
      image: image ?? this.image,
      rating: rating ?? this.rating,
      storeLocation: storeLocation ?? this.storeLocation,
    );
  }
}
