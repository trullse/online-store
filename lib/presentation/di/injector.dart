import 'package:get_it/get_it.dart';
import 'package:online_store/data/data_sources/good_data_source.dart';
import 'package:online_store/data/data_sources/route_data_source.dart';
import 'package:online_store/data/repositories/good_repository.dart';
import 'package:online_store/data/repositories/maps_repository.dart';
import 'package:online_store/domain/data_interfaces/i_good_repository.dart';
import 'package:online_store/domain/data_interfaces/i_maps_repository.dart';

GetIt get i => GetIt.instance;

void initInjector() {
  // Data sources
  i.registerSingleton(
    GoodDataSource(),
  );
  i.registerSingleton(
    RouteDataSource(),
  );

  // Repositories
  i.registerSingleton<IGoodRepository>(
    GoodRepository(i.get()),
  );
  i.registerSingleton<IMapsRepository>(
    MapsRepository(i.get()),
  );
}
