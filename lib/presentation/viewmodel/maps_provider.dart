import 'package:online_store/domain/data_interfaces/i_maps_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yandex_maps_mapkit/directions.dart';
import 'package:online_store/domain/entities/location_point.dart';

part 'maps_provider.g.dart';

@riverpod
class MapsNotifier extends _$MapsNotifier {
  @override
  void build(IMapsRepository mapsRepository) {}

  void buildRoute({
    required DrivingSessionRouteListener drivingSessionRouteListener,
    required LocationPoint startPoint,
    required LocationPoint endPoint,
  }) {
    mapsRepository.buildRoute(
        drivingSessionRouteListener: drivingSessionRouteListener,
        startPoint: startPoint,
        endPoint: endPoint);
  }
}
