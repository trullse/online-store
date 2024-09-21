import 'package:online_store/data/data_sources/module.dart';
import 'package:online_store/data/data_sources/route_data_source.dart';
import 'package:online_store/data/repositories/maps_repository.dart';
import 'package:online_store/domain/data_interfaces/i_good_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_store/domain/data_interfaces/i_maps_repository.dart';

import 'good_repository.dart';

final goodRepositoryProvider = Provider<IGoodRepository>((ref) {
  return GoodRepository(ref.read(goodDataSourceProvider));
});

final mapsRepositoryProvider = Provider<IMapsRepository>((ref) {
  return MapsRepository(ref.read(routeDataSourceProvider));
});
