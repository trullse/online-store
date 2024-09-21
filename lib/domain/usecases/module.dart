import 'package:online_store/data/repositories/module.dart';
import 'package:online_store/domain/usecases/get_goods_use_case.dart';
import 'package:online_store/domain/usecases/interfaces/i_get_goods_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_store/domain/usecases/interfaces/i_maps_use_case.dart';
import 'package:online_store/domain/usecases/maps_use_case.dart';

final getGoodProvider = Provider<IGetGoodsUseCase>((ref) {
  return GetGoodsUseCase(ref.read(goodRepositoryProvider));
});

final mapsProvider = Provider<IMapsUseCase>((ref) {
  return MapsUseCase(ref.read(mapsRepositoryProvider));
});
