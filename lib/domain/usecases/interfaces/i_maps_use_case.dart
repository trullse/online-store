import 'package:yandex_maps_mapkit/directions.dart';
import 'package:online_store/domain/entities/location_point.dart';

abstract class IMapsUseCase {
  void buildRoute({
    required DrivingSessionRouteListener drivingSessionRouteListener,
    required LocationPoint startPoint,
    required LocationPoint endPoint,
  });
}
