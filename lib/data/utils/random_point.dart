import 'dart:math';
import 'package:online_store/domain/entities/location_point.dart';

LocationPoint getRandomPoint() {
  final List<LocationPoint> points = [
    const LocationPoint(latitude: 53.916281, longitude: 27.585937),
    const LocationPoint(latitude: 53.919833, longitude: 27.577386),
    const LocationPoint(latitude: 53.933853, longitude: 27.652222),
  ];

  final random = Random();
  int randomIndex = random.nextInt(points.length);
  return points[randomIndex];
}
