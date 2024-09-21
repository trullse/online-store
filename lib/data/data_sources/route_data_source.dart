import 'package:yandex_maps_mapkit/directions.dart';
import 'package:yandex_maps_mapkit/mapkit.dart';
import 'package:online_store/domain/entities/location_point.dart';

class RouteDataSource {
  void buildRoute({
    required DrivingSessionRouteListener drivingSessionRouteListener,
    required LocationPoint startPoint,
    required LocationPoint endPoint,
  }) {
    final drivingRouter =
        DirectionsFactory.instance.createDrivingRouter(DrivingRouterType.Combined);
    final yandexStartPoint = Point(latitude: startPoint.latitude, longitude: startPoint.longitude);
    final yandexEndPoint = Point(latitude: endPoint.latitude, longitude: endPoint.longitude);

    final points = [
      RequestPoint(yandexStartPoint, RequestPointType.Waypoint, null, null),
      RequestPoint(yandexEndPoint, RequestPointType.Waypoint, null, null),
    ];

    const drivingOptions = DrivingOptions(routesCount: 1);
    const vehicleOptions = DrivingVehicleOptions();

    drivingRouter.requestRoutes(
      drivingOptions,
      vehicleOptions,
      drivingSessionRouteListener,
      points: points,
    );
  }
}
