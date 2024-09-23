import 'package:online_store/domain/data_interfaces/i_good_repository.dart';
import 'package:online_store/domain/entities/good.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'goods_state_provider.g.dart';

@riverpod
class AsyncGoodsNotifier extends _$AsyncGoodsNotifier {
  @override
  FutureOr<List<Good>> build(IGoodRepository goodRepository) async {
    final goods = await goodRepository.goods;
    return goods;
  }
}
