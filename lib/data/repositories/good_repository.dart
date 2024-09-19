import 'package:online_store/data/data_sources/good_data_source.dart';
import 'package:online_store/domain/data_interfaces/i_good_repository.dart';
import 'package:online_store/domain/entities/good.dart';

class GoodRepository extends IGoodRepository {
  final GoodDataSource goodDataSource;
  GoodRepository(this.goodDataSource);

  @override
  Future<List<Good>> get goods => goodDataSource.fetchGoods();
}
