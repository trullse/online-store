import 'package:online_store/domain/entities/location_point.dart';

class Good {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final LocationPoint storeLocation;

  Good({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    this.storeLocation = const LocationPoint(latitude: 53.916281, longitude: 27.585937),
  });

  factory Good.fromJson(Map<String, dynamic> json) {
    return Good(
      id: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] is int) ? (json['price'] as int).toDouble() : json['price'] as double,
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
    );
  }

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
      storeLocation: storeLocation ?? this.storeLocation,
    );
  }
}
