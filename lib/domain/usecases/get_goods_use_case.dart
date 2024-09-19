import 'package:online_store/domain/usecases/interfaces/i_get_goods_use_case.dart';
import 'package:online_store/domain/data_interfaces/i_good_repository.dart';
import 'package:online_store/domain/entities/good.dart';

class GetGoodsUseCase extends IGetGoodsUseCase {
  final IGoodRepository goodRepository;

  GetGoodsUseCase(this.goodRepository);

  @override
  Future<List<Good>> execute() => goodRepository.goods;
}
