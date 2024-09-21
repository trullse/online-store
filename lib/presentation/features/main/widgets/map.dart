import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_store/domain/usecases/module.dart';
import 'package:yandex_maps_mapkit/directions.dart';
import 'package:yandex_maps_mapkit/mapkit.dart' hide Image;
import 'package:yandex_maps_mapkit/mapkit_factory.dart';
import 'package:yandex_maps_mapkit/yandex_map.dart';
import 'package:yandex_maps_mapkit/runtime.dart' as yandex_runtime;
import 'package:yandex_maps_mapkit/src/bindings/image/image_provider.dart' as image_provider;
import 'package:online_store/domain/entities/location_point.dart';

class MapWidget extends StatefulWidget {
  final LocationPoint homeLocation = const LocationPoint(latitude: 53.929936, longitude: 27.588795);
  final LocationPoint storeLocation;

  const MapWidget({
    super.key,
    required this.storeLocation,
  });

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late MapWindow _mapWindow;

  @override
  void initState() {
    mapkit.onStart();
    super.initState();
  }

  @override
  void dispose() {
    mapkit.onStop();
    super.dispose();
  }

  void _addPlacemarks(LocationPoint startPoint, LocationPoint endPoint) {
    _mapWindow.map.mapObjects.addPlacemark()
      ..geometry = Point(
        latitude: startPoint.latitude,
        longitude: startPoint.longitude,
      )
      ..setIcon(
        image_provider.ImageProvider.fromImageProvider(
          const AssetImage('assets/images/placemark.png'),
        ),
      )
      ..setIconStyle(
        const IconStyle(scale: 0.1),
      );

    _mapWindow.map.mapObjects.addPlacemark()
      ..geometry = Point(
        latitude: endPoint.latitude,
        longitude: endPoint.longitude,
      )
      ..setIcon(
        image_provider.ImageProvider.fromImageProvider(
          const AssetImage('assets/images/store_placemark.png'),
        ),
      )
      ..setIconStyle(
        const IconStyle(scale: 0.8),
      );
  }

  void _addRoutePolyline(Polyline geometry) {
    _mapWindow.map.mapObjects.addPolylineWithGeometry(geometry)
      ..strokeWidth = 5.0
      ..setStrokeColor(Theme.of(context).colorScheme.primary)
      ..outlineWidth = 2.0
      ..outlineColor = Colors.white;
  }

  void _moveCameraToRoute(Polyline polyline) {
    _mapWindow.map.move(
      _mapWindow.map.cameraPositionForGeometry(
        Geometry.fromPolyline(polyline),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return YandexMap(
          onMapCreated: (mapWindow) {
            _mapWindow = mapWindow;
            ref.watch(mapsProvider).buildRoute(
                  drivingSessionRouteListener: DrivingSessionRouteListener(
                    onDrivingRoutes: (List<DrivingRoute> routes) {
                      for (final route in routes) {
                        _addRoutePolyline(route.geometry);
                        _moveCameraToRoute(route.geometry);
                        _addPlacemarks(
                          widget.homeLocation,
                          widget.storeLocation,
                        );
                      }
                    },
                    onDrivingRoutesError: (yandex_runtime.Error error) {},
                  ),
                  startPoint: widget.homeLocation,
                  endPoint: widget.storeLocation,
                );
          },
        );
      },
    );
  }
}
