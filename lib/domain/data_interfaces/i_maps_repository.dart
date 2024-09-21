import 'package:online_store/domain/entities/location_point.dart';
import 'package:yandex_maps_mapkit/directions.dart';

abstract class IMapsRepository {
  void buildRoute({
    required DrivingSessionRouteListener drivingSessionRouteListener,
    required LocationPoint startPoint,
    required LocationPoint endPoint,
  });
}
