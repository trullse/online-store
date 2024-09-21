import 'package:flutter/material.dart' hide ImageProvider;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_store/domain/entities/good.dart';
import 'package:online_store/domain/entities/location_point.dart';
import 'package:online_store/domain/usecases/module.dart';
import 'package:yandex_maps_mapkit/directions.dart';
import 'package:yandex_maps_mapkit/mapkit.dart' hide Image;
import 'package:yandex_maps_mapkit/mapkit_factory.dart';
import 'package:yandex_maps_mapkit/yandex_map.dart';
import 'package:yandex_maps_mapkit/runtime.dart' as yandex_runtime;
import 'package:yandex_maps_mapkit/src/bindings/image/image_provider.dart' as image_provider;

class DetailsPageBody extends StatefulWidget {
  final Good good;

  const DetailsPageBody({super.key, required this.good});

  @override
  State<DetailsPageBody> createState() => _DetailsPageBodyState();
}

class _DetailsPageBodyState extends State<DetailsPageBody> {
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
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        _DetailsImage(image: widget.good.image),
        _DetailsCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.good.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                '\$${widget.good.price.toString()}',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
        ),
        _DetailsCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                widget.good.description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          child: _DetailsCard(
            child: Consumer(
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
                                  const LocationPoint(latitude: 55.751244, longitude: 37.618423),
                                  const LocationPoint(latitude: 55.755814, longitude: 37.617673),
                                );
                              }
                            },
                            onDrivingRoutesError: (yandex_runtime.Error error) {},
                          ),
                          startPoint:
                              const LocationPoint(latitude: 55.751244, longitude: 37.618423),
                          endPoint: const LocationPoint(latitude: 55.755814, longitude: 37.617673),
                        );
                  },
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

class _DetailsImage extends StatelessWidget {
  final String image;
  const _DetailsImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.network(image),
        ),
      ),
    );
  }
}

class _DetailsCard extends StatelessWidget {
  final Widget child;
  const _DetailsCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: child,
      ),
    );
  }
}
