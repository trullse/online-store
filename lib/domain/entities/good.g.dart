// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'good.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Good _$GoodFromJson(Map<String, dynamic> json) => Good(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      rating: Map<String, num>.from(json['rating'] as Map),
    );

Map<String, dynamic> _$GoodToJson(Good instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.rating,
    };
