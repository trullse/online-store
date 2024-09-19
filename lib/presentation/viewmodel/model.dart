import 'package:online_store/domain/usecases/module.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/good.dart';

class GoodsStateNotifier extends StateNotifier<List<Good>> {
  GoodsStateNotifier(this.ref) : super([]) {
    loadGoods();
  }

  final Ref ref;
  late final getGoods = ref.read(getGoodProvider);

  Future<void> loadGoods() async {
    state = await getGoods.execute();
  }
}

final goodsListState = StateNotifierProvider<GoodsStateNotifier, List<Good>>(
  (ref) => GoodsStateNotifier(ref),
);

final todosListModel = Provider<GoodsStateNotifier>((ref) {
  return ref.watch(goodsListState.notifier);
});
