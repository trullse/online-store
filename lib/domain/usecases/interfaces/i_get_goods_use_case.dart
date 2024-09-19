import 'package:online_store/domain/entities/good.dart';

abstract class IGetGoodsUseCase {
  Future<List<Good>> execute();
}
