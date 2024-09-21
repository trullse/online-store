import 'package:online_store/data/data_sources/good_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_store/data/data_sources/route_data_source.dart';
import 'package:yandex_maps_mapkit/mapkit.dart';

final goodDataSourceProvider = Provider<GoodDataSource>((ref) {
  return GoodDataSource();
});

final routeDataSourceProvider = Provider<RouteDataSource>((ref) {
  return RouteDataSource();
});
