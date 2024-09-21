import 'package:online_store/domain/data_interfaces/i_maps_repository.dart';
import 'package:online_store/domain/entities/location_point.dart';
import 'package:online_store/domain/usecases/interfaces/i_maps_use_case.dart';
import 'package:yandex_maps_mapkit/directions.dart';

class MapsUseCase extends IMapsUseCase {
  final IMapsRepository mapsRepository;

  MapsUseCase(this.mapsRepository);

  @override
  void buildRoute({
    required DrivingSessionRouteListener drivingSessionRouteListener,
    required LocationPoint startPoint,
    required LocationPoint endPoint,
  }) {
    mapsRepository.buildRoute(
      drivingSessionRouteListener: drivingSessionRouteListener,
      startPoint: startPoint,
      endPoint: endPoint,
    );
  }
}
