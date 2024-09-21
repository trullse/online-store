import 'package:online_store/data/data_sources/route_data_source.dart';
import 'package:online_store/domain/data_interfaces/i_maps_repository.dart';
import 'package:online_store/domain/entities/location_point.dart';
import 'package:yandex_maps_mapkit/directions.dart';

class MapsRepository extends IMapsRepository {
  final RouteDataSource routeDataSource;

  MapsRepository(this.routeDataSource);

  @override
  void buildRoute({
    required DrivingSessionRouteListener drivingSessionRouteListener,
    required LocationPoint startPoint,
    required LocationPoint endPoint,
  }) {
    routeDataSource.buildRoute(
      drivingSessionRouteListener: drivingSessionRouteListener,
      startPoint: startPoint,
      endPoint: endPoint,
    );
  }
}
